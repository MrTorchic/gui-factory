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

local unlock = s:add(gui.button("Activate"))
unlock:setTextColor(colors.white)
unlock:setBackgroundColor(colors.green)
unlock:setBackgroundColor(1,1)
unlock:onClick(function(button, frame, event, x, y)
    local deactivate = s:add(gui.button("Deactivate")
    deactivate:setTextColor(colors.white)
    deactivate:setBackgroundColor(colors.red)
    deactivate:setPosition(1,1)
    deactivate:onClick(function(button,frame,event,x,y)
    
    )
)
end)



s:draw()
s:wait()
s:reset()