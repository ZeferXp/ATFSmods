
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "Kopilcurtains" and "Kopilcurtains", i can use "scaleObject('Kopilcurtains', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('Kopil', 'Kopil', -600, -300);
	setScrollFactor('Kopil', 0.9, 0.9);
	
	makeLuaSprite('Kopilfront', 'Kopilfront', -650, 600);
	setScrollFactor('Kopilfront', 0.9, 0.9);
	scaleObject('Kopilfront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('Kopillight_left', 'Kopillight', -125, -100);
		setScrollFactor('Kopillight_left', 0.9, 0.9);
		scaleObject('Kopillight_left', 1.1, 1.1);
		
		makeLuaSprite('Kopillight_right', 'Kopillight', 1225, -100);
		setScrollFactor('Kopillight_right', 0.9, 0.9);
		scaleObject('Kopillight_right', 1.1, 1.1);
		setProperty('Kopillight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('Kopilcurtains', 'Kopilcurtains', -500, -300);
		setScrollFactor('Kopilcurtains', 1.3, 1.3);
		scaleObject('Kopilcurtains', 0.9, 0.9);
	end

	addLuaSprite('Kopil', false);
	addLuaSprite('Kopilfront', false);
	addLuaSprite('Kopillight_left', false);
	addLuaSprite('Kopillight_right', false);
	addLuaSprite('Kopilcurtains', false);
end