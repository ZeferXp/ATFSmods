
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "kopil linedcurtains" and "kopil linedcurtains", i can use "scaleObject('kopil linedcurtains', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('kopil lined', 'kopil lined', -600, -300);
	setScrollFactor('kopil lined', 0.9, 0.9);
	
	makeLuaSprite('kopil linedfront', 'kopil linedfront', -650, 600);
	setScrollFactor('kopil linedfront', 0.9, 0.9);
	scaleObject('kopil linedfront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('kopil linedlight_left', 'kopil linedlight', -125, -100);
		setScrollFactor('kopil linedlight_left', 0.9, 0.9);
		scaleObject('kopil linedlight_left', 1.1, 1.1);
		
		makeLuaSprite('kopil linedlight_right', 'kopil linedlight', 1225, -100);
		setScrollFactor('kopil linedlight_right', 0.9, 0.9);
		scaleObject('kopil linedlight_right', 1.1, 1.1);
		setProperty('kopil linedlight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('kopil linedcurtains', 'kopil linedcurtains', -500, -300);
		setScrollFactor('kopil linedcurtains', 1.3, 1.3);
		scaleObject('kopil linedcurtains', 0.9, 0.9);
	end

	addLuaSprite('kopil lined', false);
	addLuaSprite('kopil linedfront', false);
	addLuaSprite('kopil linedlight_left', false);
	addLuaSprite('kopil linedlight_right', false);
	addLuaSprite('kopil linedcurtains', false);
end