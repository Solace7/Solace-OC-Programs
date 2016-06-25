--Colored Redstone Controls | For use with Frame mods that can be controled via redstone

--Attach cable to CPU(Computer Case), or to Redstone I/O Block

--Declare required component libraries

local component = require("component")
local colors = require("colors")
local sides = require("sides")
local trigger = rs.setBundledOutput
--Trigger is for movement

moveState = {
  MOVING = "MOVING",
  STATIONARY = "STATIONARY",
  ERROR = "ERROR",
}

local frame = {
  cState = nil
  dState = moveState.STATIONARY
}

function frame.setState(state)
  cState = moveState.state
end

function frame.getState()
  print(cState)
end

function frame.move(color,duration)
  if color == yellow then
    trigger(sides.bottom,colors.yellow,255)
    cState = moveState.MOVING
    print(cState .. "..")
    os.sleep(duration)
    trigger(sides.bottom,colors.yellow,0)
    cState = dState

    elseif color == magenta then
    trigger(sides.bottom,colors.magenta,255)
    cState = moveState.MOVING
    print(cState .. "..")
    os.sleep(duration)
    trigger(sides.bottom,colors.magenta,0)
    cState = dState

    elseif color == lime then
    trigger(sides.bottom,colors.lime,255)
    cState = moveState.MOVING
    print(cState .. "..")
    os.sleep(duration)
    trigger(sides.bottom,colors.lime,0)
    cState = dState

    elseif color == blue then
    trigger(sides.bottom,colors.blue,255)
    cState = moveState.MOVING
    print(cState .. "..")
    os.sleep(duration)
    trigger(sides.bottom,colors.blue,0)
    cState = dState

    elseif color == white then
    trigger(sides.bottom,colors.white,255)
    cState = moveState.MOVING
    print(cState .. "..")
    os.sleep(duration)
    trigger(sides.bottom,colors.white,0)
    cState = dState

    elseif color == orange then
    trigger(sides.bottom,colors.orange,255)
    cState = moveState.MOVING
    print(cState .. "..")
    os.sleep(duration)
    trigger(sides.bottom,colors.orange,0)
    cState = dState

   else
    print("Input a color, and duration")
  end
end

return frame
