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
        <button class="cmd-btn cmus-btn btn" title="Previous"><i class="fa fa-fast-backward"></i></button>
        <button class="cmd-btn cmus-btn btn" title="Play"><i class="fa fa-play"></i></button>
        <button class="cmd-btn cmus-btn btn" title="Stop"><i class="fa fa-stop"></i></button>
        <button class="cmd-btn cmus-btn btn" title="Next"><i class="fa fa-fast-forward"></i></button>
    </li>

    <li class="input-groups">
        <button class="cmd-btn cmus-btn btn" title="Mute"><i class="fa fa-volume-off"></i></button>
        <button class="cmd-btn cmus-btn btn" title="Reduce Volume"><i class="fa fa-volume-down"></i></button>
        <button class="cmd-btn cmus-btn btn" title="Increase Volume"><i class="fa fa-volume-up"></i></button>
    </li>

    <li class="input-groups">
        <button class="status-btn btn btn-round" title="Update Status"><i class="fa fa-info-circle"></i></button>
    </li>

    <li class="input-groups">
        <button class="cmd-btn tv-btn btn" title="Raspberry PI" data-cmd="as"><i class="fa fa-linux"></i></button>
        <button class="cmd-btn tv-btn btn" title="Apple TV" data-cmd="tx 4f 82 13 00"><i class="fa fa-apple"></i></button>
    </li>
    <li class="input-groups">
        <button class="cmd-btn tv-btn btn" title="Standby" data-cmd="standby 0"><i class="fa fa-power-off"></i></button>
        <button class="cmd-btn tv-btn btn" title="On" data-cmd="on 0"><i class="fa fa-desktop"></i></button>
    </li>
</div>

<div id="result"></div>

<div id="cec-cmdr">
    <h2>CEC command</h2>
    <div class="input-groups">
        <input type="text" id="cec-cmd" placeholder="tx 10 64 00 41 20 42 20 43"/>
        <span class="btn-append">
            <button class="cec-btn btn" title="Send">Send</button>
        </span>
    </div>
</div>

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
        <h3>Digitally Imported <button class="btn" id="randomDI"><i class="icon fa fa-random"></i> Play random channel</button></h3>
        <div>
             Play random channel</a>
        </a>
        <div class="units-row">
            <div class="unit-25">
                <ul>
                    <li><a href="#di:ambient" title="Ambient - a blend of ambient, downtempo, and chillout">Ambient</a></li>
                    <li><a href="#di:bassline" title="Bassline - Vocal-driven, bass-laden speed garage!">Bassline</a></li>
                    <li><a href="#di:bassnjackinhouse" title="Bass &amp; Jackin' House - Booty shaking bass-heavy House!">Bass &amp; Jackin' House</a></li>
                    <li><a href="#di:bigroomhouse" title="Big Room House - The most uplifting, floor-filling Big Room House!">Big Room House</a></li>
                    <li><a href="#di:breaks" title="Breaks - a fine assortment of trance and house breaks">Breaks</a></li>
                    <li><a href="#di:chillhop" title="ChillHop - Trip Hop infused, downtempo nujazz and chillout beats.">ChillHop</a></li>
                    <li><a href="#di:chillout" title="Chillout - ambient psy chillout, check out our trippy flavors!">Chillout</a></li>
                    <li><a href="#di:chilloutdreams" title="Chillout Dreams - relax to the sounds of dream and ibiza style chillout">Chillout Dreams</a></li>
                    <li><a href="#di:chillstep" title="Chillstep - Chillout with a Dubstep influence">Chillstep</a></li>
                    <li><a href="#di:chiptunes" title="Chiptunes - Playing the best chiptunes and video game music.">Chiptunes</a></li>
                    <li><a href="#di:classiceurodance" title="Classic EuroDance - Finest imported cheese on the net!">Classic EuroDance</a></li>
                    <li><a href="#di:classiceurodisco" title="Classic EuroDisco - Relive the sounds of Euro &amp; Italo Disco.">Classic EuroDisco</a></li>
                    <li><a href="#di:classictrance" title="Classic Trance - relive the classic trance hits!!">Classic Trance</a></li>
                    <li><a href="#di:classicvocaltrance" title="Classic Vocal Trance - Classic fusion of trance, dance, and chilling vocals together!">Classic Vocal Trance</a></li>
                    <li><a href="#di:clubdubstep" title="Club Dubstep - Enjoy the liquid sounds of Dubstep">Club Dubstep</a></li>
                    <li><a href="#di:clubsounds" title="Club Sounds - the hottest club and dance tunes 24/7">Club Sounds</a></li>
                    <li><a href="#di:cosmicdowntempo" title="Cosmic Downtempo - A downtempo journey into the cosmos">Cosmic Downtempo</a></li>
                    <li><a href="#di:darkdnb" title="Dark DnB - A twisted blend of heavy hitting Dark Drum and Bass!">Dark DnB</a></li>
                    <li><a href="#di:deephouse" title="Deep House - Only the sexiest, silky smooth and groovy Deep House.">Deep House</a></li>
                    <li><a href="#di:deepnudisco" title="Deep Nu-Disco - The new sounds of Deep Disco!">Deep Nu-Disco</a></li>
                </ul>
            </div>
            <div class="unit-25">
                <ul>
                    <li><a href="#di:deeptech" title="Deep Tech - Deeper shades of House and Techno with Dub and Blues influences.">Deep Tech</a></li>
                    <li><a href="#di:discohouse" title="Disco House  - Grooviest Disco House hits on the planet!">Disco House </a></li>
                    <li><a href="#di:djmixes" title="DJ MIXES - non-stop DJ sets featuring various forms of techno &amp; trance!">DJ MIXES</a></li>
                    <li><a href="#di:downtempolounge" title="Downtempo Lounge - Relax with some Downtempo grooves.">Downtempo Lounge</a></li>
                    <li><a href="#di:drumandbass" title="Drum and Bass - tasty assortment to satisfy your drum and bass fix!">Drum and Bass</a></li>
                    <li><a href="#di:dubstep" title="Dubstep - Dubstep hits and mixes!!!!">Dubstep</a></li>
                    <li><a href="#di:eclectronica" title="EcLectronica - An eclectic mixture of modern electronica.">EcLectronica</a></li>
                    <li><a href="#di:electrohouse" title="Electro House - an eclectic mix of electro and dirty house">Electro House</a></li>
                    <li><a href="#di:electronicpioneers" title="Electronic Pioneers - Bouncy House and Hardcore Beats">Electronic Pioneers</a></li>
                    <li><a href="#di:electropop" title="Electropop - Catchy Pop fused with Electro Synth">Electropop</a></li>
                    <li><a href="#di:epictrance" title="Epic Trance - Epic &amp; uplifting trance hits">Epic Trance</a></li>
                    <li><a href="#di:eurodance" title="EuroDance - the newest and best of Eurodance hits">EuroDance</a></li>
                    <li><a href="#di:funkyhouse" title="Funky House - A fine selection of funky house music!!">Funky House</a></li>
                    <li><a href="#di:futuregarage" title="Future Garage - 2step Garage with atmospheric broken beats.">Future Garage</a></li>
                    <li><a href="#di:futuresynthpop" title="Future Synthpop - Finest selection of futurepop and synthpop!!">Future Synthpop</a></li>
                    <li><a href="#di:gabber" title="Gabber - Banging to the hardest sounds of gabber!">Gabber</a></li>
                    <li><a href="#di:glitchhop" title="Glitch Hop - Bit-crushing, dub-infused Hip Hop sounds!">Glitch Hop</a></li>
                    <li><a href="#di:goapsy" title="Goa &amp; Psychedelic Trance - a voyage out of this world!">Goa &amp; Psychedelic Trance</a></li>
                    <li><a href="#di:handsup" title="Hands Up  - Dance to the best Hands Up hits!!">Hands Up </a></li>
                    <li><a href="#di:hardcore" title="Hardcore - DJ mixes, hard dance and NuNRG!">Hardcore</a></li>
                </ul>
            </div>
            <div class="unit-25">
                <ul>
                    <li><a href="#di:harddance" title="Hard Dance - are you ready for this!">Hard Dance</a></li>
                    <li><a href="#di:hardstyle" title="Hardstyle - Banging Hardstyle for your ears!!!">Hardstyle</a></li>
                    <li><a href="#di:hardtechno" title="Hard Techno - Heavy hitting Hard Techno!">Hard Techno</a></li>
                    <li><a href="#di:house" title="House - silky sexy deep house music direct from New York city!">House</a></li>
                    <li><a href="#di:jungle" title="Jungle - The Amen Break at its finest, Jungle is massive!">Jungle</a></li>
                    <li><a href="#di:latinhouse" title="Latin House - Finest selection of Latin house!!">Latin House</a></li>
                    <li><a href="#di:liquiddnb" title="Liquid DnB  - Flowing with the freshest Liquid DnB!!">Liquid DnB </a></li>
                    <li><a href="#di:liquiddubstep" title="Liquid Dubstep - Mellow out to the rolling, soothing deep bass of Liquid Dubstep.">Liquid Dubstep</a></li>
                    <li><a href="#di:lounge" title="Lounge - sit back and enjoy the lounge grooves!">Lounge</a></li>
                    <li><a href="#di:mainstage" title="Mainstage - The biggest DJs from the best festivals around the world!">Mainstage</a></li>
                    <li><a href="#di:minimal" title="Minimal - Finest selection of Minimal Techno &amp; House!!">Minimal</a></li>
                    <li><a href="#di:moombahton" title="Moombahton - Hot House meets Dancehall Reggaeton">Moombahton</a></li>
                    <li><a href="#di:nightcore" title="DI - Nightcore">DI</a></li>
                    <li><a href="#di:nudisco" title="Nu Disco House - A modern twist on 70s &amp; 80s Disco and Funk.">Nu Disco House</a></li>
                    <li><a href="#di:oldschoolacid" title="Oldschool Acid - Oldschool sounds of Acid Techno, House, and Trance!">Oldschool Acid</a></li>
                    <li><a href="#di:oldschoolelectronica" title="Oldschool Techno &amp; Trance - old school techno, trance &amp; rave!">Oldschool Techno &amp; Trance</a></li>
                    <li><a href="#di:oldschoolhouse" title="Oldschool House -  The sounds of old school House music!">Oldschool House</a></li>
                    <li><a href="#di:oldschoolrave" title="DI - Oldschool Rave">DI</a></li>
                    <li><a href="#di:progressive" title="Progressive - house, techno, and trance beats for your mind!">Progressive</a></li>
                    <li><a href="#di:progressivepsy" title="Progressive Psy - progressive psychedelic grooves">Progressive Psy</a></li>
                </ul>
            </div>
            <div class="unit-25">
                <ul>
                    <li><a href="#di:psybient" title="Psybient - The Psychedelic side of Ambient">Psybient</a></li>
                    <li><a href="#di:psychill" title="PsyChill - downtempo psychedelic dub grooves, goa ambient, and world beats.">PsyChill</a></li>
                    <li><a href="#di:russianclubhits" title="Russian Club Hits - Russia's hottest club hits.">Russian Club Hits</a></li>
                    <li><a href="#di:sankeys" title="Sankeys Radio - The sound of the white isle direct from Sankeys Ibiza.">Sankeys Radio</a></li>
                    <li><a href="#di:scousehouse" title="Scouse House - Bouncy and Pumping House Beats">Scouse House</a></li>
                    <li><a href="#di:soulfulhouse" title="Soulful House - house music selected from Paris with love!">Soulful House</a></li>
                    <li><a href="#di:spacemusic" title="Space Dreams - ambient space music for expanding minds">Space Dreams</a></li>
                    <li><a href="#di:techhouse" title="Tech House - A fusion of techno and house with a deep, soulful vibe.">Tech House</a></li>
                    <li><a href="#di:techno" title="Techno - From Minimal to Detroit to Schranz &amp; all in between!">Techno</a></li>
                    <li><a href="#di:trance" title="Trance Channel - we can't define it!">Trance Channel</a></li>
                    <li><a href="#di:trap" title="Trap - Electronic 808 beats with Hip Hop roots.">Trap</a></li>
                    <li><a href="#di:tribalhouse" title="Tribal House - Finest selection of tribal and tech house!!">Tribal House</a></li>
                    <li><a href="#di:ukgarage" title="UK Garage - The latest and greatest in UK Garage!!">UK Garage</a></li>
                    <li><a href="#di:umfradio" title="UMF Radio - UMF Radio">UMF Radio</a></li>
                    <li><a href="#di:undergroundtechno" title="Underground Techno - Underground Techno hits!">Underground Techno</a></li>
                    <li><a href="#di:vocalchillout" title="Vocal Chillout - Enjoy the relaxing vocal sounds of ibiza chillout">Vocal Chillout</a></li>
                    <li><a href="#di:vocallounge" title="Vocal Lounge - Relaxing Vocals and Lounge Grooves!">Vocal Lounge</a></li>
                    <li><a href="#di:vocaltrance" title="Vocal Trance - a fusion of trance, dance, and chilling vocals together!">Vocal Trance</a></li>
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
        <i class="fa fa-play-circle"></i> This is <code>cmus</code> running on {{host}}.
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
