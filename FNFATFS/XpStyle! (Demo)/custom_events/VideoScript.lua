    --SCRIPT BY Veriton--
    DisableVoices = true --Here you can disable the character voices for the entire song.
    DisableMusic = true  --Here you can disable the music for the entire song.

function onCreate()

    runHaxeCode([[
        var oldVideo = getVar('videoSprite');
        if (oldVideo != null) {
            oldVideo.stop();
            oldVideo.destroy();
            setVar('videoSprite', null);
        }
    ]])
    makeLuaSprite('black', '', 0, 0)
    makeGraphic('black', 2500, 2500, '000000')
    setObjectCamera('black', 'game')
    screenCenter('black')
    addLuaSprite('black', true)

    setProperty('skipCountdown', true)

    runHaxeCode([[
        var videoClass = Type.resolveClass('hxvlc.flixel.FlxVideoSprite');
        if (videoClass == null) videoClass = Type.resolveClass('hxvlc.flixel.VideoSprite');

            var videoSprite = Type.createInstance(videoClass, [0, 0]); // <--- Here you can change the video position.
            
            var filepath = Paths.video('name'); // <--- Change the video name here.
            
            videoSprite.load(filepath);
            
            videoSprite.setGraphicSize(1, 1); // <--- Change the video size here

            videoSprite.updateHitbox();
            videoSprite.antialiasing = ClientPrefs.data.antialiasing;

            videoSprite.scrollFactor.set(0, 0); // <--- Here you can change the video scrollFactor.

        //----------------------------------------------------\\ Remove this part to disable the video loop.
        videoSprite.bitmap.onEndReached.add(function() {
            videoSprite.load(Paths.video('name')); 
            videoSprite.play();
        }); 
        //----------------------------------------------------\\

            videoSprite.play();
            game.add(videoSprite);
            setVar('videoSprite', videoSprite);

    ]])
end

function onCreatePost()
    runHaxeCode([[
        var video = getVar('videoSprite');
        var layerobject = game.getLuaObject('black'); // <--- Here you can change which object the code will use to define the video layer.
        if(video != null && layerobject != null) {
            var blackIndex = game.members.indexOf(layerobject); 
            game.insert(blackIndex + 1, video); // <--- In this line, the game is defining the video layer using the "black" that I created at the beginning of the code. being the layer of "black+ 1"
        }
    ]])
end

function onUpdate()

end

function onDestroy()
    runHaxeCode([[
        var video = getVar('videoSprite');
        if(video != null) {
            video.bitmap.onEndReached.removeAll()
            video.stop();
            video.destroy();
        }
    ]])
end
function onUpdatePost(elapsed)
    if DisableVoices then
        setProperty('vocals.volume', 0) 
        setProperty('opponentVocals.volume', 0)
    else
        setProperty('vocals.volume', 1)
        setProperty('opponentVocals.volume', 1)
    end    
    if DisableMusic then
        setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
    else
        setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1)
    end
    runHaxeCode([[
        var video = getVar('videoSprite');
        if (video != null && video.bitmap != null) {
            video.volume = FlxG.sound.volume;
        }
    ]])
end

function onPause()
    runHaxeCode([[
        var video = getVar('videoSprite');
        if (video != null) {
            video.pause();
        }
    ]])
end

function onResume()
    runHaxeCode([[
        var video = getVar('videoSprite');
        if (video != null) {
            video.resume();
        }
    ]])
end

function onGameOver()
    runHaxeCode([[
        var video = getVar('videoSprite');
        if (video != null) {
            video.stop();
        }
    ]])
end