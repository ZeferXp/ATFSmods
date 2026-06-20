
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "Shoppycurtains" and "Shoppycurtains", i can use "scaleObject('Shoppycurtains', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('Shoppy', 'Shoppy', -600, -300);
	setScrollFactor('Shoppy', 0.9, 0.9);
	
	makeLuaSprite('Shoppyfront', 'Shoppyfront', -650, 600);
	setScrollFactor('Shoppyfront', 0.9, 0.9);
	scaleObject('Shoppyfront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('Shoppylight_left', 'Shoppylight', -125, -100);
		setScrollFactor('Shoppylight_left', 0.9, 0.9);
		scaleObject('Shoppylight_left', 1.1, 1.1);
		
		makeLuaSprite('Shoppylight_right', 'Shoppylight', 1225, -100);
		setScrollFactor('Shoppylight_right', 0.9, 0.9);
		scaleObject('Shoppylight_right', 1.1, 1.1);
		setProperty('Shoppylight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('Shoppycurtains', 'Shoppycurtains', -500, -300);
		setScrollFactor('Shoppycurtains', 1.3, 1.3);
		scaleObject('Shoppycurtains', 0.9, 0.9);
	end

	addLuaSprite('Shoppy', false);
	addLuaSprite('Shoppyfront', false);
	addLuaSprite('Shoppylight_left', false);
	addLuaSprite('Shoppylight_right', false);
	addLuaSprite('Shoppycurtains', false);
end