local _ = require('scripts.Common')
local _ = require("scripts.OpenApps")
local _ = require("scripts.SwitchMonitors")
local _ = require('scripts.WindowManagement')

local modifier = {"alt", "shift"}
local hyper = {"⌘", "⌥", "⌃", "⇧"}

-- Open apps
openAllApps(modifier)
openAllApps(hyper)
bind("cmd", "E", open("Finder"))

-- Switch Monitors
bind(modifier, "tab", moveToNextScreen)

-- Window Management
bindWindows(modifier)
bindWindows(hyper)

-- print("Modifiers:", hs.inspect(modifier))
-- print("Key:", 'q')
bindWindowSwitchShortcut(modifier, 'q')
