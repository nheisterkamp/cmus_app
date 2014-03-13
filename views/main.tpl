<!DOCTYPE html>
<html>
<head>
    <title>cmus on {{host}}</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/static/kube.min.css"/>
    <link rel="stylesheet" type="text/css" href="/static/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="/static/cmus_app.css"/>
</head>
<body>
<div class="wrapper">

<div id="status"></div>

<div class="controls">
    <li class="input-groups">
        <button class="cmd-btn btn" title="Previous"><i class="icon-fast-backward"></i></button>
        <button class="cmd-btn btn" title="Play"><i class="icon-play"></i></button>
        <button class="cmd-btn btn" title="Stop"><i class="icon-stop"></i></button>
        <button class="cmd-btn btn" title="Next"><i class="icon-fast-forward"></i></button>
    </li>

    <li class="input-groups">
        <button class="cmd-btn btn" title="Mute"><i class="icon-volume-off"></i></button>
        <button class="cmd-btn btn" title="Reduce Volume"><i class="icon-volume-down"></i></button>
        <button class="cmd-btn btn" title="Increase Volume"><i class="icon-volume-up"></i></button>
    </li>

    <li class="input-groups">
        <button class="status-btn btn btn-round" title="Update Status"><i class="icon-info-sign"></i></button>
    </li>
</div>

<div id="result"></div>

<div id="playurl">
    <h2>Play URL</h2>
    <div class="input-groups">
        <input type="text" id="url" placeholder="http://"/>
        <span class="btn-append">
            <button class="playurl-btn btn" title="Play">Play</button>
        </span>
    </div>
</div>

<div id="playlists">
    <h2>Playlists</h2>

    <div class="visible-{{di_visible}}">
        <h3>Digitally Imported</h3>
        <div class="units-row">
            <div class="unit-25">
                <ul>
                    <li><a href="#di:ambient">Ambient</a></li>
                    <li><a href="#di:bigroomhouse">Big Room House</a></li>
                    <li><a href="#di:breaks">Breaks</a></li>
                    <li><a href="#di:chillhop">ChillHop</a></li>
                    <li><a href="#di:chillout">Chillout</a></li>
                    <li><a href="#di:chilloutdreams">Chillout Dreams</a></li>
                    <li><a href="#di:chillstep">Chillstep</a></li>
                    <li><a href="#di:chiptunes">Chiptunes</a></li>
                    <li><a href="#di:classiceurodance">Classic EuroDance</a></li>
                    <li><a href="#di:classiceurodisco">Classic EuroDisco</a></li>
                    <li><a href="#di:classictrance">Classic Trance</a></li>
                    <li><a href="#di:classicvocaltrance">Classic Vocal Trance</a></li>
                    <li><a href="#di:clubdubstep">Club Dubstep</a></li>
                    <li><a href="#di:clubsounds">Club Sounds</a></li>
                    <li><a href="#di:cosmicdowntempo">Cosmic Downtempo</a></li>
                    <li><a href="#di:djmixes">DJ Mixes</a></li>
                    <li><a href="#di:darkdnb">Dark DnB</a></li>
                    <li><a href="#di:deephouse">Deep House</a></li>
                </ul>
            </div>
            <div class="unit-25">
                <ul>
                    <li><a href="#di:deepnudisco">Deep Nu-Disco</a></li>
                    <li><a href="#di:deeptech">Deep Tech</a></li>
                    <li><a href="#di:discohouse">Disco House</a></li>
                    <li><a href="#di:downtempolounge">Downtempo Lounge</a></li>
                    <li><a href="#di:drumandbass">Drum 'n Bass</a></li>
                    <li><a href="#di:dubstep">Dubstep</a></li>
                    <li><a href="#di:eclectronica">EcLectronica</a></li>
                    <li><a href="#di:electrohouse">Electro House</a></li>
                    <li><a href="#di:electronicpioneers">Electronic Pioneers</a></li>
                    <li><a href="#di:electropop">Electropop</a></li>
                    <li><a href="#di:epictrance">Epic Trance</a></li>
                    <li><a href="#di:eurodance">EuroDance</a></li>
                    <li><a href="#di:funkyhouse">Funky House</a></li>
                    <li><a href="#di:futuresynthpop">Future Synthpop</a></li>
                    <li><a href="#di:gabber">Gabber</a></li>
                    <li><a href="#di:glitchhop">Glitch Hop</a></li>
                    <li><a href="#di:goapsy">Goa-Psy Trance</a></li>
                    <li><a href="#di:handsup">Hands Up</a></li>
                </ul>
            </div>
            <div class="unit-25">
                <ul>
                    <li><a href="#di:harddance">Hard Dance</a></li>
                    <li><a href="#di:hardtechno">Hard Techno</a></li>
                    <li><a href="#di:hardcore">Hardcore</a></li>
                    <li><a href="#di:hardstyle">Hardstyle</a></li>
                    <li><a href="#di:house">House</a></li>
                    <li><a href="#di:latinhouse">Latin House</a></li>
                    <li><a href="#di:liquiddnb">Liquid DnB</a></li>
                    <li><a href="#di:liquiddubstep">Liquid Dubstep</a></li>
                    <li><a href="#di:lounge">Lounge</a></li>
                    <li><a href="#di:mainstage">Mainstage</a></li>
                    <li><a href="#di:minimal">Minimal</a></li>
                    <li><a href="#di:moombahton">Moombahton</a></li>
                    <li><a href="#di:oldschoolacid">Oldschool Acid</a></li>
                    <li><a href="#di:oldschoolelectronica">Oldschool Techno & Trance </a></li>
                    <li><a href="#di:progressive">Progressive</a></li>
                    <li><a href="#di:progressivepsy">Progressive Psy</a></li>
                    <li><a href="#di:psychill">PsyChill</a></li>
                </ul>
            </div>
            <div class="unit-25">
                <ul>
                    <li><a href="#di:psybient">Psybient</a></li>
                    <li><a href="#di:russianclubhits">Russian Club Hits</a></li>
                    <li><a href="#di:sankeys">Sankeys Radio</a></li>
                    <li><a href="#di:scousehouse">Scouse House</a></li>
                    <li><a href="#di:soulfulhouse">Soulful House</a></li>
                    <li><a href="#di:spacemusic">Space Dreams</a></li>
                    <li><a href="#di:techhouse">Tech House</a></li>
                    <li><a href="#di:techno">Techno</a></li>
                    <li><a href="#di:trance">Trance</a></li>
                    <li><a href="#di:trap">Trap</a></li>
                    <li><a href="#di:tribalhouse">Tribal House</a></li>
                    <li><a href="#di:ukgarage">UK Garage</a></li>
                    <li><a href="#di:umfradio">UMF Radio</a></li>
                    <li><a href="#di:undergroundtechno">Underground Techno</a></li>
                    <li><a href="#di:vocalchillout">Vocal Chillout</a></li>
                    <li><a href="#di:vocallounge">Vocal Lounge</a></li>
                    <li><a href="#di:vocaltrance">Vocal Trance</a></li>
                </ul>
            </div>
        </div>
    </div>

    <h3>Radiostations</h3>
    <ul>
        <li><a href="http://icecast.omroep.nl/3fm-bb-mp3">3FM</a></li>
    </ul>
</div>

<footer>
    <p class="small gray-light">
        <i class="icon-play-circle"></i> This is <code>cmus</code> running on {{host}}.
    </p>
</footer>

</div>
<script src="/static/zepto.min.js"></script>
<script>
    var diServer = '{{di_server}}',
        diSuffix = '{{di_suffix}}',
        diListenKey = '{{di_listenkey}}';
</script>
<script src="/static/cmus_app.js"></script>
</body>
</html>
