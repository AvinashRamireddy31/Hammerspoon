function open(name)
  return function()
    hs.application.launchOrFocus(name)
    if name == 'Finder' then
        hs.appfinder.appFromName(name):activate()
    end
  end
end

-- Open apps
function openAllApps(modifier)
  bind(modifier, "C", open("Google Chrome"))
  bind(modifier, "D", open("Diarium"))
  bind(modifier, "E", open("Microsoft Edge"))
  bind(modifier, "G", open("GitHub Desktop"))
  bind(modifier, "L", open("OpenLens"))
  bind(modifier, "T", open("Microsoft Teams"))
  bind(modifier, "X", open("Xcode"))

  bind(modifier, "K", open("Slack"))
  bind(modifier, "S", open("Safari"))

  bind(modifier, "V", open("Code"))
  -- bind(modifier, "V", open("Visual Studio Code"))

end
