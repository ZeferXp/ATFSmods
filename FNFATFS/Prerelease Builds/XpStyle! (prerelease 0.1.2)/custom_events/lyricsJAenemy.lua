function onCreate()
	makeLuaText('lyric','',screenWidth,0,screenHeight/2);
	setTextSize('lyric',40);
	setTextAlignment('lyric','center');
	setObjectCamera('lyric', 'other')
	addLuaText('lyric');
end

function onEvent(name, value1, value2)
if value2 ~= '' then
color, ssize = value2:match("([^,]+),([^,]+)")

size = ssize:gsub(" ","")
end
	if name == 'lyricsJAenemy' then
		setProperty('lyric.y', screenHeight/2-size)
		doTweenY('lyricmovething', 'lyric', screenHeight/2-size, 0.001 ,'linear')
		setTextString('lyric', value1)
		if color == '' and size == '' then
			setTextColor('lyric', '0033ffff')
			setTextSize('lyric', 55);
		else 
			setTextColor('lyric', color)
			setTextSize('lyric', size);
		end
	
		
		print('Event triggered: ', name, value1, value2);
	end
end