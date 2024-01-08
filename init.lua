local arrowKeys = require('ArrowKeys')
local common = require('Common')
local modifier = {"alt", "shift"}
local openapps = require("OpenApps")
local switchmonitors = require("SwitchMonitors")
local windowmanagement = require('WindowManagement')

-- Open apps
openAllApps(modifier)

-- Switch Monitors
bind(modifier, "tab", moveToNextScreen)

-- Window Management
bindWindows(modifier)

-- Arrow Keys
bindKeys(modifier)
