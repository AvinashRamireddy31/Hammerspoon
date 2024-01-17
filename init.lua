local arrowKeys = require('scripts.ArrowKeys')
local common = require('scripts.Common')
local modifier = {"alt", "shift"}
local hyper = {'cmd', 'alt', 'ctrl', 'shift'}
local openapps = require("scripts.OpenApps")
local switchmonitors = require("scripts.SwitchMonitors")
local windowmanagement = require('scripts.WindowManagement')

-- Open apps
openAllApps(modifier)

-- Switch Monitors
bind(modifier, "tab", moveToNextScreen)

-- Window Management
bindWindows(modifier)

-- Arrow Keys
bindArrowKeys(hyper)
