-- Directions window management
local screenFrame = hs.screen.mainScreen():frame()

-- Set the animation duration (in seconds)
hs.window.animationDuration = 0.2

-- Function to move the current window to a specific portion of the screen
function moveWindow(direction)
  local win = hs.window.focusedWindow()
  local screen = win:screen()
  local screenFrame = screen:frame()
  local frame = win:frame()

  local x, y, w, h = frame.x, frame.y, frame.w, frame.h

  if direction == "left" then
    x = screenFrame.x
    y = screenFrame.y
    w = screenFrame.w / 2
    h = screenFrame.h
  elseif direction == "right" then
    x = screenFrame.x + (screenFrame.w / 2)
    y = screenFrame.y
    w = screenFrame.w / 2
    h = screenFrame.h
  elseif direction == "top" then
    x = screenFrame.x
    y = screenFrame.y
    w = screenFrame.w
    h = screenFrame.h / 2
  elseif direction == "bottom" then
    x = screenFrame.x
    y = screenFrame.y + (screenFrame.h / 2)
    w = screenFrame.w
    h = screenFrame.h / 2
end

  frame.x, frame.y, frame.w, frame.h = x, y, w, h

  win:setFrame(frame)
end

function maximizeApp()
  local app = hs.window.focusedWindow()
  app:maximize()
end

function moveWindowToSide(direction)
  -- maximizeApp()
  moveWindow(direction)
end

function moveToLeft()
  moveWindowToSide("left")
end

function moveToRight()
  moveWindowToSide("right")
end

function moveToTop()
  moveWindowToSide("top")
end

function moveToBottom()
  moveWindowToSide("bottom")
end

-- Function to move all open windows to the next display
function moveAllWindowsToDisplay(number)
  local allWindows = hs.window.allWindows()
  local allScreens = hs.screen.allScreens()
  for _, win in ipairs(allWindows) do
    -- Change Window position to display position
    local nextScren = allScreens[number]
    win:moveToScreen(nextScren)
    win:maximize()
  end
end

function moveAllWindowsToPrimaryDisplay(number)
  moveAllWindowsToDisplay(1)
end

function moveAllWindowsToSecondaryDisplay(number)
  moveAllWindowsToDisplay(2)
end

function bindWindows(modifier)
  bind(modifier, "F", maximizeApp)
  bind(modifier, "Left", moveToLeft)
  bind(modifier, "Right", moveToRight)
  bind(modifier, "Up", moveToTop)
  bind(modifier, "Down", moveToBottom)

  bind(modifier , "1",  moveAllWindowsToPrimaryDisplay)
  bind(modifier , "2",  moveAllWindowsToSecondaryDisplay)

  bind({"alt", "shift","cmd"} , "Left",  moveAllWindowsToPrimaryDisplay)
  bind({"alt", "shift","cmd"} , "Right",  moveAllWindowsToSecondaryDisplay)
end

function bindWindowSwitchShortcut(modifiers, key)
  if type(modifiers) ~= "table" then
      print("Error: 'modifiers' must be a table, got", type(modifiers))
      return
  end
  if type(key) ~= "string" then
      print("Error: 'key' must be a string, got", type(key))
      return
  end

  print("Binding shortcut:", hs.inspect(modifiers), key)

  bind(modifiers, key, function()
      hs.eventtap.keyStroke({"cmd"}, "`", 0) -- Simulates Cmd + `
  end)
end
