--big pp
function onCreate()
	-- background shit
	makeLuaSprite('void', 'void', -600, -300);
	setScrollFactor('void', 0.9, 0.9);
	
	makeLuaSprite('voidfront', 'voidfront', -650, 600);
	setScrollFactor('voidfront', 0.9, 0.9);
	scaleObject('voidfront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('voidlight_left', 'voidlight', -125, -100);
		setScrollFactor('voidlight_left', 0.9, 0.9);
		scaleObject('voidlight_left', 1.1, 1.1);
		
		makeLuaSprite('voidlight_right', 'voidlight', 1225, -100);
		setScrollFactor('voidlight_right', 0.9, 0.9);
		scaleObject('voidlight_right', 1.1, 1.1);
		setProperty('voidlight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('voidcurtains', 'voidcurtains', -500, -300);
		setScrollFactor('voidcurtains', 1.3, 1.3);
		scaleObject('voidcurtains', 0.9, 0.9);
	end

	addLuaSprite('void', false);
	addLuaSprite('voidfront', false);
	addLuaSprite('voidlight_left', false);
	addLuaSprite('voidlight_right', false);
	addLuaSprite('voidcurtains', false);
end
