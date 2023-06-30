love = require('love')
function love.load()
  gameState = "on"
  frames_per_second = 0
  ellipse = { x = 400, y = 300, width = 200, height = 200 }
  -- Set color for graphics
  function SetColor(r, g, b, a)
    love.graphics.setColor(r, g, b, a)
  end

  function move_object(object, velocity)
    -- use arrow in keyboard to move object 1 pixel for each press
    velocity = velocity or 1
    if love.keyboard.isDown("right") then
      object.x = object.x + 1
    elseif love.keyboard.isDown("left") then
      object.x = object.x - 1
    elseif love.keyboard.isDown("up") then
      object.y = object.y - 1
    elseif love.keyboard.isDown("down") then
      object.y = object.y + 1
    end
  end

  function SetFont(font)
    love.graphics.setFont(font)
  end
end

function love.update(dt)
  frames_per_second = love.timer.getFPS()
  move_object(ellipse, 2)
end

function love.draw()
  love.graphics.print("Frames: " .. frames_per_second, 0, 0)
  love.graphics.ellipse("line", ellipse.x, ellipse.y, ellipse.width, ellipse.height)
end
