#!/usr/bin/env python2.7
import sys
from ConfigParser import SafeConfigParser
from bottle import route, post, run, request, view, response, static_file
from sh import cmus_remote


def read_config(config_file):
    r = {}
    parser = SafeConfigParser()
    n = parser.read(config_file)
    if not len(n): raise(Exception('File not found: {}.'.format(config_file)))
    section = 'cmus_app'
    required = ['cmus_host', 'cmus_passwd']
    for S in required:
        try:
            r[S] = parser.get(section, S)
        except:
            raise(Exception('{} does not specify {}.'.format(config_file,S)))
    optional = [
        ('app_host', r['cmus_host']),
        ('app_port', 8080),
        ('di_visible', False),
        ('di_server', 'http://prem2.di.fm'),
        ('di_suffix', ''),
        ('di_listenkey', '')
    ]
    for S in optional:
        try:
            v = parser.get(section, S[0])
            if S[0] == 'di_visible':
                r[S[0]] = v.lower() in ("yes", "true", "t", "1")
            else:
                r[S[0]] = v
        except:
            r[S[0]] = S[1]
    return r

@route('/')
@view('main')
def index():
    return {
        'host': settings['cmus_host'],
        'di_visible': settings['di_visible'],
        'di_server': settings['di_server'],
        'di_suffix': settings['di_suffix'],
        'di_listenkey': settings['di_listenkey']
    }

@post('/cmd')
def run_command():
    legal_commands = {
        'Play': 'player-play',
        'Stop': 'player-stop',
        'Next': 'player-next',
        'Previous': 'player-prev',
        'Increase Volume': 'vol +5%',
        'Reduce Volume': 'vol -5%',
        'Mute': 'vol 0',
        'Play URL': ''
    }

    command = request.POST.get('command', default=None)
    url = request.POST.get('url', default=None)

    if legal_commands.has_key(command):
        if command == 'Play URL':
            outmsg = ''
            out = Remote('-C', 'clear -q')
            outmsg += out.stdout
            out = Remote('-C', 'add -Q ' + url)
            outmsg += out.stdout
            out = Remote('-C', 'player-next')
            outmsg += out.stdout
            out = Remote('-C', 'player-play')
            outmsg += out.stdout
        else:
            out = Remote('-C', legal_commands[command])
            outmsg = out.stdout

        return {
            'result': out.exit_code,
            'output': outmsg
        }
    else:
        pass

@route('/status')
def get_status():
    try:
        out = Remote('-Q').stdout.split('\n')
        r = {}
        play = out[0].split()[1]
        if play == 'playing': r['playing'] = True
        elif play == 'stopped': r['playing'] = False
        info = filter(lambda x: x if x.startswith('tag') or x.startswith('set') else None, out)
        for i in info:
            k, v = i.split()[1], i.split()[2:]
            if len(v): r[k] = ' '.join(v)
        return r
    except:
        pass

@route('/static/<file>')
def static(file):
    response.set_header('Cache-Control', 'max-age=604800')
    return static_file(file, root='static')

@route('/favicon.ico')
def favicon():
    response.set_header('Cache-Control', 'max-age=604800')
    return static_file('favicon.ico', root='static')
if __name__ == '__main__':
    # configuration file either supplied via command line
    # or assumed to be in one of the default locations
    if len(sys.argv) > 1:
        print sys.argv
        CONFIG=sys.argv[1:]
    else:
        CONFIG=['config','config.ini','.config']
    settings = read_config(CONFIG)
    Remote = cmus_remote.bake('--server', settings['cmus_host'],'--passwd', settings['cmus_passwd'])
    run(host = settings['app_host'], port = settings['app_port'])

