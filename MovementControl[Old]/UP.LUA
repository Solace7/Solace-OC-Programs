-- This Program is for turning off ship controls if using RemainInMotion and ProjectRed

-- Ship Control UP

-- Declare require component libraries

local component = require("component")

local colors = require("colors")

local sides = require("sides")

local rs = component.redstone -- get primary redstone component

-- Turn on directional moving for direction UP

rs.setBundledOutput(sides.bottom, colors.white,0)
	print("ASCENDING")

rs.setBundledOutput(sides.botoom, colors.white,255)
	print("Move Finished")

-- Function for repeating(WIP)
