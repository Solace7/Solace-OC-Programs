-- This Program is for turning off ship controls if using RemainInMotion and ProjectRed

-- Ship Control Left

-- Declare require component libraries

local component = require("component")

local colors = require("colors")

local sides = require("sides")

local rs = component.redstone -- get primary redstone component

-- Turn on directional moving for direction LEFT

rs.setBundledOutput(sides.bottom, colors.yellow,0)
	print("Moving Left")

rs.setBundledOutput(sides.botoom, colors.yellow,255)
	print("Move Finished")

-- Function for repeating(WIP)
