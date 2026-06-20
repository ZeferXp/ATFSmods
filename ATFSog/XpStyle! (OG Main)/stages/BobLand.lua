
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "BobLandcurtains" and "BobLandcurtains", i can use "scaleObject('BobLandcurtains', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('BobLand', 'BobLand', -600, -300);
	setScrollFactor('BobLand', 0.9, 0.9);
	
	makeLuaSprite('BobLandfront', 'BobLandfront', -650, 600);
	setScrollFactor('BobLandfront', 0.9, 0.9);
	scaleObject('BobLandfront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('BobLandlight_left', 'BobLandlight', -125, -100);
		setScrollFactor('BobLandlight_left', 0.9, 0.9);
		scaleObject('BobLandlight_left', 1.1, 1.1);
		
		makeLuaSprite('BobLandlight_right', 'BobLandlight', 1225, -100);
		setScrollFactor('BobLandlight_right', 0.9, 0.9);
		scaleObject('BobLandlight_right', 1.1, 1.1);
		setProperty('BobLandlight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('BobLandcurtains', 'BobLandcurtains', -500, -300);
		setScrollFactor('BobLandcurtains', 1.3, 1.3);
		scaleObject('BobLandcurtains', 0.9, 0.9);
	end

	addLuaSprite('BobLand', false);
	addLuaSprite('BobLandfront', false);
	addLuaSprite('BobLandlight_left', false);
	addLuaSprite('BobLandlight_right', false);
	addLuaSprite('BobLandcurtains', false);
end