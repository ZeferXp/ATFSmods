
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "tiapokopilcurtains" and "tiapokopilcurtains", i can use "scaleObject('tiapokopilcurtains', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('tiapokopil', 'tiapokopil', -600, -300);
	setScrollFactor('tiapokopil', 0.9, 0.9);
	
	addLuaSprite('tiapokopil', false);
end