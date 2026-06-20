-- function onCreate()
--     makeLuaSprite('sketchthingy', 'notemechs/sketchshit')
--     for i = 0, getProperty('unspawnNotes.length')-1 do
--         if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'evil note' then
--             setPropertyFromGroup('unspawnNotes', i, 'texture', 'notemechs/sketch');
--             if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
--                 setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
--             end
--         end
--     end
-- end
function onCreate()
	makeLuaSprite('sketchthingy', 'notemechs/sketchshit',-100,-100)
	setScrollFactor('sketchthingy', 0, 0);
	scaleObject('sketchthingy', 1.25, 1.25);
	setObjectCamera('sketchthingy', 'other')
	setProperty('sketchthingy.alpha', 0)
	addLuaSprite('sketchthingy',true)
	--lean
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'evil note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'notemechs/sketch');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', 0.3);
		end
	end
end
function goodNoteHit(id, noteData, noteType, isSustainNote)
    if noteType == 'evil note' then
       playAnim('boyfriend', 'hey')
	   playAnim('dad', 'singUPmiss')
    end
end
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'evil note' then
		playSound('soulshatter1', 1)
        setProperty('sketchthingy.alpha', 1)
        yourhplmao = getProperty('health')
        setProperty('health', yourhplmao/2);
		runTimer('evilnotebegone', 0.5)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'evilnotebegone' then
		setProperty('sketchthingy.alpha', 0)
	end
end