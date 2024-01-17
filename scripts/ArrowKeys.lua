function pressLeftArrow()
  hs.eventtap.keyStroke({}, "left")
end

function pressRightArrow()
  hs.eventtap.keyStroke({}, "right")
end

function pressUpArrow()
  hs.eventtap.keyStroke({}, "up")
end

function pressDownArrow()
  hs.eventtap.keyStroke({}, "down")
end

function bindArrowKeys(modifier)
  bind(modifier, "j", pressLeftArrow)
  bind(modifier, "l", pressRightArrow)
  bind(modifier, "i", pressUpArrow)
  bind(modifier, "k", pressDownArrow)
end
