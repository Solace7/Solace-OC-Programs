-- This Program is for turning off ship controls if using RemainInMotion and ProjectRed

-- Ship Control BACKWARDS

-- Declare require component libraries

local component = require("component")

local colors = require("colors")

local sides = require("sides")

local rs = component.redstone -- get primary redstone component

-- Turn on directional moving for direction BACKWARDS

rs.setBundledOutput(sides.bottom, colors.lime,0)
	print("Moving BACKWARDS")

rs.setBundledOutput(sides.botoom, colors.lime,255)
	print("Move Finished")

-- Function for repeating(WIP)
