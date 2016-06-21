--Colored Redstone Controls | For use with RemainInMotion

--[[ By default Direction colors are as follows;
UP is white
DOWN is orange
EAST(RIGHT) is magenta
WEST(LEFT) is yellow
NORTH(FORWARDS) is blue
SOUTH(BACKWARDS) is lime
]]--

--Attach cable to CPU(Computer Case), or to Redstone I/O Block

--Declare required component libraries

local component = require("component")
local colors = require("colors")
local sides = require("sides")
local rs = component.redstone --get primrary redstone component
local trigger = rs.setBundledOutput
--Trigger is for movement

move.State = {
  MOVING = 1,
  STATIONARY = 0,
  ERROR = -1,
}

local rim = nil
local move = nil

--new function for movement State. May move to separate file
function move.State.toString(state)
  if state == move.State.MOVING then print("MOVING")
  elseif state == move.State.STATIONARY then print("STATIONARY")
  elseif state == move.State.ERROR then print ("ERROR")
  else print("UNKNOWN")
end


function rim.move(direction,duration)
  if direction == west {
    trigger(sides.bottom,colors.yellow,255)
    ----move.State = "MOVING"
    ----print(move.State .. direction)
    os.sleep(duration)
    trigger(sides.bottom,colors.yellow,0)
  }
  elseif direction == east {
  	trigger(sides.bottom,colors.magenta,255)
    --move.State = "MOVING"
    ----print(move.State .. direction)
  	os.sleep(duration)
  	trigger(sides.bottom,colors.magenta,0)
  }
  elseif direction == south {
  	trigger(sides.bottom,colors.lime,255)
    --move.State = "MOVING"
    --print(move.State .. direction)
  	os.sleep(duration)
  	trigger(sides.bottom,colors.lime,0)
  }
  elseif direction == north {
  	trigger(sides.bottom,colors.blue,255)
    --move.State = "MOVING"
    --print(move.State .. direction)
  	os.sleep(duration)
  	trigger(sides.bottom,colors.blue,0)
  }
  elseif direction == up {
  	trigger(sides.bottom,colors.white,255)
    --move.State = "MOVING"
    --print(move.State .. direction)
  	os.sleep(duration)
  	trigger(sides.bottom,colors.white,0)
  }
  elseif direction == down {
  	trigger(sides.bottom,colors.orange,255)
    --move.State = "MOVING"
    --print(move.State .. direction)
  	os.sleep(duration)
  	trigger(sides.bottom,colors.orange,0)
  }
end
