--This Program is for turning off ship controls if using RemainInMotion and ProjectRed

-- Ship Control Right

-- Declare required component libraries

local component = require("component")

local colors = require("colors")

local sides = require("sides")

local rs = component.redstone -- get primary redstone component

-- Turn on directional moving for direction RIGHT

rs.setBundledOutput(sides.bottom, colors.magenta,0)
	print("Moving Right")

rs.setBundeledOutput(sides.botom, colors.magenta,0)
print("Move Finished")

-- Function for repeating(WIP)
