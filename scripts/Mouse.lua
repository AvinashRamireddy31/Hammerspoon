function createMouseTap(button, modifiers, func)
  -- Create an eventtap to capture mouse events
  local mouseTap = hs.eventtap.new({hs.eventtap.event.types.otherMouseDown, hs.eventtap.event.types.otherMouseUp}, function(event)
      -- Get the current mouse button
      local currentButton = event:getProperty(hs.eventtap.event.properties['mouseEventButtonNumber'])

      -- Check if the button is the one we're interested in
      if currentButton == button then
          -- Get the current modifiers
          local currentModifiers = hs.eventtap.checkKeyboardModifiers()

          -- Check if all your desired modifiers are active
          local allModifiersActive = true
          for i, modifier in ipairs(modifiers) do
              print("modifier in loop " .. modifier .. i)
              if not currentModifiers[modifier] then
                  allModifiersActive = false
                  print("not in current modifiers")
                  break
              end
          end

          if allModifiersActive then
              -- Log the event
              print("Mouse button " .. button .. " was pressed with modifier keys!")

              -- Call your function
              func()

              -- Consume the event to prevent it from propagating
              return true
          else
              -- Log that the modifier key was not active
              print("Mouse button " .. button .. " was pressed without modifier keys!")
          end
      else
          -- Log that a different mouse button was pressed
          print("A different mouse button was pressed!")
      end
  end)

  -- Start the eventtap
  mouseTap:start()
end
