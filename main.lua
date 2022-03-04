dofile("/disk/gui.lua")

gui.debug = false

local s = gui.screen()
s:setBackgroundColor(colors.white)

local b = s:add(gui.button("X"))
b:setTextColor(colors.black)
b:setBackgroundColor(colors.red)
b:setPosition(-1, 1)
b:onClick(function(button, frame, event, x, y)
    frame:getScreen():stop()
end)




s:draw()
s:wait()
s:reset()