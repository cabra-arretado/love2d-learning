love = require('love')
function love.load()
  num = 0
  -- Set color for graphics
  function SetColor(r, g, b, a)
    love.graphics.setColor(r, g, b, a)
  end

  function SetFont(font)
    love.graphics.setFont(font)
  end
end

function love.update(dt)
  num = num + 1
end

function love.draw()
  love.graphics.print(num, 200, 200)
  SetColor(1, 0, 0)
  love.graphics.ellipse("fill", 400, 300, 200, 200)
end
