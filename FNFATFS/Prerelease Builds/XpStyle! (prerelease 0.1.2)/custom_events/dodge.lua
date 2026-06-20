function onCreate()
	makeLuaText('dodge','',screenWidth,0,screenHeight/2);
	setTextSize('dodge',40);
	setTextAlignment('dodge','center');
	setObjectCamera('dodge', 'other')
	addLuaText('dodge');
end

function onEvent(name, value1, value2)
	if name == 'dodge' then
		setProperty('dodge.y', screenHeight/2-size)
		doTweenY('dodgemovething', 'dodge', screenHeight/2-size, 0.001 ,'linear')
		setTextString('dodge', 'press SPACE to dodge!!!')
		if color == '' and size == '' then
			setTextColor('dodge', 'ffffff')
			setTextSize('dodge', 40);
		else 
			setTextColor('dodge', color)
			setTextSize('dodge', size);
		end
        DodgeTime = value1;
        
        canDodge = true;
	    runTimer('ded', DodgeTime / 2.1);
	
	end
end

function onUpdate()
   if canDodge == true and keyJustPressed('space') then
    Dodged = true;
    playAnim('boyfriend', 'dodge')
    playAnim('dad', 'shoot')
    removeLuaText('dodge')
    canDodge = false;
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'ded' and Dodged == false then
    playSound('soulshatter1', 1)
   setProperty('health', -69420)
   removeLuaText('dodge')
   
   elseif tag == 'ded' and Dodged == true then
   Dodged = false;

   end
end