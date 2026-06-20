
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "Ruinedcurtains" and "Ruinedcurtains", i can use "scaleObject('Ruinedcurtains', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('Ruined', 'Ruined', -600, -300);
	setScrollFactor('Ruined', 0.9, 0.9);
	
	makeLuaSprite('Ruinedfront', 'Ruinedfront', -650, 600);
	setScrollFactor('Ruinedfront', 0.9, 0.9);
	scaleObject('Ruinedfront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('Ruinedlight_left', 'Ruinedlight', -125, -100);
		setScrollFactor('Ruinedlight_left', 0.9, 0.9);
		scaleObject('Ruinedlight_left', 1.1, 1.1);
		
		makeLuaSprite('Ruinedlight_right', 'Ruinedlight', 1225, -100);
		setScrollFactor('Ruinedlight_right', 0.9, 0.9);
		scaleObject('Ruinedlight_right', 1.1, 1.1);
		setProperty('Ruinedlight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('Ruinedcurtains', 'Ruinedcurtains', -500, -300);
		setScrollFactor('Ruinedcurtains', 1.3, 1.3);
		scaleObject('Ruinedcurtains', 0.9, 0.9);
	end

	addLuaSprite('Ruined', false);
	addLuaSprite('Ruinedfront', false);
	addLuaSprite('Ruinedlight_left', false);
	addLuaSprite('Ruinedlight_right', false);
	addLuaSprite('Ruinedcurtains', false);
end