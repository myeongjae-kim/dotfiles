require('enter_normal_mode_with_eng')

hs.hotkey.bind({'option', 'cmd'}, 'r',  hs.reload)

hs.hotkey.bind({'shift', 'option'}, 'N', function()
    hs.application.launchOrFocus('Notes')
end)

hs.hotkey.bind({'shift', 'option'}, 'C', function()
    hs.application.launchOrFocus('Google Chrome')
end)

hs.hotkey.bind({'shift', 'option'}, 'T', function()
    hs.application.launchOrFocus('iTerm')
end)

hs.hotkey.bind({'shift', 'option'}, 'S', function()
    hs.application.launchOrFocus('Slack')
end)
