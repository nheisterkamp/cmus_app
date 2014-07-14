/*global $, console, diServer, diListenKey, diSuffix*/
(function() {
    'use strict';

    function postCommand(command, url) {
        console.log('postCommand', command, url);
        $.post('/cmd', {
            command: command,
            url: url
        }, function(response) {
            var msg;
            if (response.result === 0) {
                msg = '<p class="green label"><i class="icon-ok"></i> ' + command + '</p>';
            }
            else {
                msg = '<p class="red label"><i class="icon-remove"></i> ' + command + '</p>';
            }
            if (response.output) {
                msg += '<pre>' + response.output + '</pre>';
            }

            $('#result').html(msg);

            updateStatus();
        }, 'json');
    }

    function tvCommand(command) {
        console.log('tvCommand', command);
        $.post('/tv', {
            command: command
        }, function(response) {
            var msg;
            if (response.result === 0) {
                msg = '<p class="green label"><i class="icon-ok"></i> ' + command + '</p>';
            }
            else {
                msg = '<p class="red label"><i class="icon-remove"></i> ' + command + '</p>';
            }
            if (response.output) {
                msg += '<pre>' + response.output + '</pre>';
            }

            $('#result').html(msg);
        }, 'json');
    }

    function updateStatus() {
        console.log('updateStatus');
        $.ajax({
            url: '/status',
            dataType: 'json',
            context: $('div#status'),
            success: function(response) {
                console.log('updateStatus :: success', response);

                response = response || {};

                var status;
                if (response.playing) {
                    status = '<p>';
                }
                else {
                    status = '<p class="gray">';
                }

                if (response.artist && response.title && response.album && response.date) {
                    status += response.artist +
                        ': <strong>' +
                        response.title +
                        '</strong> (' +
                        response.album +
                        ', ' +
                        response.date.substring(0, 4) +
                        ')';
                }
                else if (response.artist && response.title && response.album) {
                    status += response.artist +
                        ': <strong>' +
                        response.title +
                        '</strong> (' +
                        response.album +
                        ')';
                }
                else if (response.artist && response.title && response.date) {
                    status += response.artist +
                        ': <strong>' +
                        response.title +
                        '</strong> (' +
                        response.date.substring(0, 4) +
                        ')';
                }
                else if (response.artist && response.title) {
                    status += response.artist +
                        ': <strong>' +
                        response.title +
                        '</strong>';
                }
                else if (response.title) {
                    status += '<strong>' +
                        response.title +
                        '</strong>';
                }
                else if (response.artist) {
                    status += response.artist +
                        ': <strong>(unknown)</strong>';
                }
                else {
                    status += '<em>none/unknown</em>';
                }
                if (response.genre) {
                    status += '<br/><em>- ' + response.genre + '</em>';
                }
                if (response.comment) {
                    status += '<br/><em>- ' + response.comment + '</em>';
                }

                status += '</p><span class="vol gray">';
                if (response.vol_left) {
                    status += 'vol: ' + response.vol_left + '%';
                }
                if (response.shuffle === 'true') {
                    status += ' <i class="icon-random"></i>';
                }
                if (response.repeat === 'true') {
                    status += ' <i class="icon-refresh"></i>';
                }
                status += '</span>';
                this.html(status);
            }
        });
    }

    function playURL(url) {
        console.log('playURL', url);
        postCommand('Play URL', url);
    }

    $('.status-btn').on('click', function() {
        console.log('.status-btn :: click');
        updateStatus();
    });

    $('.cmus-btn').on('click', function() {
        console.log('.cmus-btn :: click');
        var cmd = $(this).attr('title');
        postCommand(cmd);
        updateStatus();
    });

    $('.tv-btn').on('click', function() {
        console.log('.tv-btn :: click');
        var cmd = $(this).data('cmd');
        tvCommand(cmd);
    });

    $('.cec-btn').on('click', function() {
        console.log('.cec-btn :: click');
        var cmd = $('#cec-cmd').val();
        tvCommand(cmd);
    });

    $('.playurl-btn').on('click', function() {
        console.log('.playurl-btn :: click');
        var url = $('#url').val();
        playURL(url);
    });

    $('#playlists li > a').on('click', function(e) {
        console.log('playlists li > a :: click', this, e);
        e.preventDefault();

        var url = this.href,
            loc = url.substring(url.lastIndexOf('/'));

        if (loc.substring(0, 5) === '/#di:') {
            if (!diServer) {
                throw 'di_server not set';
            }

            url = diServer + '/' + loc.substring(5) + diSuffix + '?' + diListenKey;
        }

        playURL(url);

        return false;
    });

    $('div#result').on('click', function() {
        $(this).empty();
    });

    $('#randomDI').on('click', function(e) {
        e.preventDefault();

        var as = $('a[href^="#di"]'),
            l = as.length,
            i = Math.floor(Math.random() * l);

        as[i].click();

        return false;
    });

    $(function() {
        updateStatus();
    });
}());
