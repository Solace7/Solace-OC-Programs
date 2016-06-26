--Colored Redstone Controls | For use with Frame mods that can be controled via redstone

--Attach cable to CPU(Computer Case), or to Redstone I/O Block

--Declare required component libraries

local component = require("component")
local colors = require("colors")
local sides = require("sides")
local rs = component.redstone --get primary redstone component
local trigger = rs.setBundledOutput
--Trigger is for movement

moveState = {
  MOVING = "MOVING",
  STATIONARY = "STATIONARY",
  ERROR = "ERROR",
}

local frame = {
  cState = dState,
  dState = moveState.STATIONARY
}

function frame.setState(state)
  cState = moveState.state
end

function frame.getState()
  print(cState)
end

function frame.move(color,duration,side)
  --if color == white or 0 then
    trigger(sides.side,colors.color,255)
    cState = moveState.MOVING
    print(cState .. "..")
    os.sleep(duration)
    trigger(sides.side,colors.color,0)
    cState = dState
  --[[
  elseif color == orange or 1 then
    trigger(sides.bottom,colors.orange,255)
    cState = moveState.MOVING
    print(cState .. "..")
    os.sleep(duration)
    trigger(sides.bottom,colors.orange,0)
    cState = dState

  elseif color == magenta or 2 then
    trigger(sides.)

  elseif color == yellow or 4 then
    trigger(sides.bottom,colors.yellow,255)
    cState = moveState.MOVING
    print(cState .. "..")
    os.sleep(duration)
    trigger(sides.bottom,colors.yellow,0)
    cState = dState

  elseif color == lime or 5 then
    trigger(sides.bottom,colors.lime,255)
    cState = moveState.MOVING
    print(cState .. "..")
    os.sleep(duration)
    trigger(sides.bottom,colors.lime,0)
    cState = dState

  elseif color == purple or 10 then
    trigger(sides.bottom,colors.purple,255)
    cState = moveState.MOVING
    print(cState .. "..")
    os.sleep(duration)
    trigger(sides.bottom,colors.purple,0)
    cState = dState

  elseif color == blue or 11 then
    trigger(sides.bottom,colors.blue,255)
    cState = moveState.MOVING
    print(cState .. "..")
    os.sleep(duration)
    trigger(sides.bottom,colors.blue,0)
    cState = dState

  elseif color == green or 13 then
    trigger(sides.bottom,colors.green,255)
    cState = moveState.MOVING
    print(cState .. "..")
    os.sleep(duration)
    trigger(sides.bottom,colors.green,0)
    cState = dState

   else
    print("Input a color(or the number of that color), and duration")
  end
  ]]--
end

return frame
