--This Program is for turning off ship controls if using RemainInMotion and ProjectRed

-- Ship Control Off

-- Declare required component libraries

local component = require("component")
local colors = require("component")
local sides = require("sides")
local rs = component.redstone -- get primary redstone component

-- Declare all directional controls off

print("Turning all directional controls off")
--Following controls assume that you are using ProjectRed Bundled Cable

--CONTROL UP
	rs.setBundledOutput(sides.bottom, colors.white,255)
print("Up off")

--CONTROL DOWN
rs.setBundledOutput(sides.bottom, colors.orange,255)
print("Down off")

--CONTROL RIGHT
rs.setBundledOutput(sides.bottom, colors.magenta,255)
print("Right off")

--CONTROL LEFT
rs.setBundledOutput(sides.bottom, colors.yellow,255)
print("Left off")

--CONTROL FORWARDS
rs.setBundledOutput(sides.bottom, colors.blue,255)
print("Forwards off")

--CONTROL BACKWARDS
rs.setBundledOutput(sides.bottom, colors.lime,255)
print("Backwards off")

print("All Controls Have Been Shutdown")
