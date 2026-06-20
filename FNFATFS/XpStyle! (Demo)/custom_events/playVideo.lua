-- Event: Play Video
function onEvent(name, value1, value2)
    if name == "playVideo" then
        local videoName = value1 -- video file name
        local duration = tonumber(value2) or 0 -- optional duration to stop video automatically

        -- Play video (Psych Engine style)
        playVideo(videoName)

        -- Optional: stop video after duration
        if duration > 0 then
            runTimer("stopVideoTimer", duration)
        end
    end
end

function onTimerCompleted(tag)
    if tag == "stopVideoTimer" then
        stopVideo() -- stop the video
    end
end