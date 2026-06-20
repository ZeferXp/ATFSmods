function onCreate()
	makeLuaSprite('stage1', 'White', 0, 0);
	addLuaSprite('stage1', false);
	scaleObject('stage1', 1, 1);

	makeLuaSprite('stage2', 'void', 0, 0);
	addLuaSprite('stage2', false);
	scaleObject('stage2', 1, 1);

	makeLuaSprite('stage3', 'pudgepentpaul', 0, 0);
	addLuaSprite('stage3', false);
	scaleObject('stage3', 1, 1);

	setProperty('stage1.visible', true);
	setProperty('stage2.visible', false);
	setProperty('stage3.visible', false);
end

-- stage swapping through play animation event.
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'stage1' then
			setProperty('stage1.visible', true);
			setProperty('stage2.visible', false);
			setProperty('stage3.visible', false);
		end
		if value1 == 'stage2' then
			setProperty('stage1.visible', false);
			setProperty('stage2.visible', true);
			setProperty('stage3.visible', false);
		end
		if value1 == 'stage3' then
			setProperty('stage1.visible', false);
			setProperty('stage2.visible', false);
			setProperty('stage3.visible', true);
		end
		if value1 == 'black' then
			setProperty('stage1.visible', false);
			setProperty('stage2.visible', false);
			setProperty('stage3.visible', false);
		end
	end
end