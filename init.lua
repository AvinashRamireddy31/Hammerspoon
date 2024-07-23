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

local modifier2 = {"alt", "ctrl"}
createMouseTap(3, modifier2, open("Safari"))
createMouseTap(4, modifier2, open("Diarium"))

-- Switch Monitors
bind(modifier, "tab", moveToNextScreen)

-- Window Management
bindWindows(modifier)
