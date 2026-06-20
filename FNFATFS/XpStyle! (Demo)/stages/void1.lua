--big pp
function onCreate()
	-- background shit
	makeLuaSprite('void1', 'void1', -600, -300);
	setScrollFactor('void1', 0.9, 0.9);
	
	makeLuaSprite('void1front', 'void1front', -650, 600);
	setScrollFactor('void1front', 0.9, 0.9);
	scaleObject('void1front', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('void1light_left', 'void1light', -125, -100);
		setScrollFactor('void1light_left', 0.9, 0.9);
		scaleObject('void1light_left', 1.1, 1.1);
		
		makeLuaSprite('void1light_right', 'void1light', 1225, -100);
		setScrollFactor('void1light_right', 0.9, 0.9);
		scaleObject('void1light_right', 1.1, 1.1);
		setProperty('void1light_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('void1curtains', 'void1curtains', -500, -300);
		setScrollFactor('void1curtains', 1.3, 1.3);
		scaleObject('void1curtains', 0.9, 0.9);
	end

	addLuaSprite('void1', false);
	addLuaSprite('void1front', false);
	addLuaSprite('void1light_left', false);
	addLuaSprite('void1light_right', false);
	addLuaSprite('void1curtains', false);
end
