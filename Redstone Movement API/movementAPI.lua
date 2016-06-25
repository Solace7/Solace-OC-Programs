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

move.state = {
  MOVING = 1,
  STATIONARY = 0,
  ERROR = -1,
}

local rim = {}

--new function for movement state. May move to separate file
function move.state.toString(state)
  if state == move.state.MOVING then print("MOVING")
  elseif state == move.state.STATIONARY then print("STATIONARY")
  elseif state == move.state.ERROR then print ("ERROR")
  else print("UNKNOWN")
end
end

function rim.move(direction,duration)
  if direction == west then
    trigger(sides.bottom,colors.yellow,255)
    move.state = MOVING
    print(move.state .. direction)
    os.sleep(duration)
    trigger(sides.bottom,colors.yellow,0)

  elseif direction == east then
  	trigger(sides.bottom,colors.magenta,255)
    move.state = MOVING
    print(move.state .. direction)
  	os.sleep(duration)
  	trigger(sides.bottom,colors.magenta,0)

  elseif direction == south then
  	trigger(sides.bottom,colors.lime,255)
    move.state = MOVING
    print(move.state .. direction)
  	os.sleep(duration)
  	trigger(sides.bottom,colors.lime,0)

  elseif direction == north then
  	trigger(sides.bottom,colors.blue,255)
    move.state = MOVING
    print(move.state .. direction)
  	os.sleep(duration)
  	trigger(sides.bottom,colors.blue,0)

  elseif direction == up then
  	trigger(sides.bottom,colors.white,255)
    move.state = MOVING
    print(move.state .. direction)
  	os.sleep(duration)
  	trigger(sides.bottom,colors.white,0)

  elseif direction == down then
  	trigger(sides.bottom,colors.orange,255)
    move.state = MOVING
    print(move.state .. direction)
  	os.sleep(duration)
  	trigger(sides.bottom,colors.orange,0)

	else
	  print("Input a direction, and duration")
	end
end

return rim
