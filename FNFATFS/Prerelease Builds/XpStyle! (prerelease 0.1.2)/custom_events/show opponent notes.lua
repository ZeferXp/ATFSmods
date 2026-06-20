function onEvent(name,value1,value2)
    if name == 'show opponent notes' then
    --EDITED BY ZXP
    -- Alpha is -16
    -- X is +0
    -- Y is +8
    -- Angle is +24

    -- Oppenent arrows: 0-3
    -- Player arrows: 4-7
    -- hide and show oppenent arrows 
    for i=0, 3 do
    -- Alpha is 0 (0 being invisible)
    noteTweenAlpha(i+16, i, 1, 0.5)
    end
    end
end