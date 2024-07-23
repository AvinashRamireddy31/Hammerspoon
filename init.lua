local _ = require('scripts.Common')
local _ = require('scripts.Mouse')
local _ = require("scripts.OpenApps")
local _ = require("scripts.SwitchMonitors")
local _ = require('scripts.WindowManagement')

local modifier = {"alt", "shift"}
local hyper = {"⌘", "⌥", "⌃", "⇧"}

-- Open apps
openAllApps(modifier)
openAllApps(hyper)
bind("cmd", "E", open("Finder"))

createMouseTap(3, hyper, open("Safari"))
createMouseTap(4, hyper, open("Diarium"))

-- Switch Monitors
bind(modifier, "tab", moveToNextScreen)

-- Window Management
bindWindows(modifier)
