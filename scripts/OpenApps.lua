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
  bind(modifier, "G", open("GitHub Desktop"))
  bind(modifier, "L", open("OpenLens"))
  bind(modifier, "T", open("Microsoft Teams"))
  -- bind(modifier, "X", open("Xcode"))

  bind(modifier, "E", open("Safari"))
  bind(modifier, "S", open("Safari"))

  bind(modifier, "V", open("Code"))
end
