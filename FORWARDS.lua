-- This Program is for turning off ship controls if using RemainInMotion and ProjectRed

-- Ship Control FORWARDS

-- Declare require component libraries

local component = require("component")

local colors = require("colors")

local sides = require("sides")

local rs = component.redstone -- get primary redstone component

-- Turn on directional moving for direction FORWADS

rs.setBundledOutput(sides.bottom, colors.blue,0)
	print("Going Forwards")

rs.setBundledOutput(sides.botoom, colors.blue,255)
	print("Move Finished")

-- Function for repeating(WIP)
