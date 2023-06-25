love = require('love')
function love.load()
  frames_per_second = 0
  -- Set color for graphics
  function SetColor(r, g, b, a)
    love.graphics.setColor(r, g, b, a)
  end

  function SetFont(font)
    love.graphics.setFont(font)
  end
end

function love.update(dt)
  frames_per_second = frames_per_second + 1
end

function love.draw()
  function move_object(object)
    -- use arrow in keyboard to move object 1 pixel for each press 
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
  love.graphics.print("Frames: " .. frames_per_second, 0, 0)
  ellipse = love.graphics.ellipse("fill", 400, 300, 200, 200)
  move_object(ellipse)

end
