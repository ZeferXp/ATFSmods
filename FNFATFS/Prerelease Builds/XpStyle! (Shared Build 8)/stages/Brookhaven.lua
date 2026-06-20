
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "Brookhavencurtains" and "Brookhavencurtains", i can use "scaleObject('Brookhavencurtains', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('Brookhaven', 'Brookhaven', -600, -300);
	setScrollFactor('Brookhaven', 0.9, 0.9);
	
	makeLuaSprite('Brookhavenfront', 'Brookhavenfront', -650, 600);
	setScrollFactor('Brookhavenfront', 0.9, 0.9);
	scaleObject('Brookhavenfront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('Brookhavenlight_left', 'Brookhavenlight', -125, -100);
		setScrollFactor('Brookhavenlight_left', 0.9, 0.9);
		scaleObject('Brookhavenlight_left', 1.1, 1.1);
		
		makeLuaSprite('Brookhavenlight_right', 'Brookhavenlight', 1225, -100);
		setScrollFactor('Brookhavenlight_right', 0.9, 0.9);
		scaleObject('Brookhavenlight_right', 1.1, 1.1);
		setProperty('Brookhavenlight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('Brookhavencurtains', 'Brookhavencurtains', -500, -300);
		setScrollFactor('Brookhavencurtains', 1.3, 1.3);
		scaleObject('Brookhavencurtains', 0.9, 0.9);
	end

	addLuaSprite('Brookhaven', false);
	addLuaSprite('Brookhavenfront', false);
	addLuaSprite('Brookhavenlight_left', false);
	addLuaSprite('Brookhavenlight_right', false);
	addLuaSprite('Brookhavencurtains', false);
end