local WINDOW_WIDTH = 800
local WINDOW_HEIGHT = 600

local x, y = 1, 1
local dx, dy = 200, 100

local r,g,b,a = 0,255,0,255


--Update function - called every update

function Update(delta_time)
    x = x + dx * delta_time
    y = y + dy * delta_time

    if(x > WINDOW_WIDTH or x < 0) then
        dx = dx * -1;
    end

    if (y > WINDOW_HEIGHT or y < 0) then
        dy = dy * -1;
    end

    SetPlayerPos(x, y)
end

--Render function - called every update

function Render()
    RenderPlayer(r,g,b,a)
end