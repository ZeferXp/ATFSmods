
--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "pudgepentpaulcurtains" and "pudgepentpaulcurtains", i can use "scaleObject('pudgepentpaulcurtains', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('pudgepentpaul', 'pudgepentpaul', -600, -300);
	setScrollFactor('pudgepentpaul', 0.9, 0.9);
	
	makeLuaSprite('pudgepentpaulfront', 'pudgepentpaulfront', -650, 600);
	setScrollFactor('pudgepentpaulfront', 0.9, 0.9);
	scaleObject('pudgepentpaulfront', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('pudgepentpaullight_left', 'pudgepentpaullight', -125, -100);
		setScrollFactor('pudgepentpaullight_left', 0.9, 0.9);
		scaleObject('pudgepentpaullight_left', 1.1, 1.1);
		
		makeLuaSprite('pudgepentpaullight_right', 'pudgepentpaullight', 1225, -100);
		setScrollFactor('pudgepentpaullight_right', 0.9, 0.9);
		scaleObject('pudgepentpaullight_right', 1.1, 1.1);
		setProperty('pudgepentpaullight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('pudgepentpaulcurtains', 'pudgepentpaulcurtains', -500, -300);
		setScrollFactor('pudgepentpaulcurtains', 1.3, 1.3);
		scaleObject('pudgepentpaulcurtains', 0.9, 0.9);
	end

	addLuaSprite('pudgepentpaul', false);
	addLuaSprite('pudgepentpaulfront', false);
	addLuaSprite('pudgepentpaullight_left', false);
	addLuaSprite('pudgepentpaullight_right', false);
	addLuaSprite('pudgepentpaulcurtains', false);
end