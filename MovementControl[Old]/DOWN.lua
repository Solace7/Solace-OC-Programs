-- This Program is for turning off ship controls if using RemainInMotion and ProjectRed

-- Ship Control DOWN

-- Declare require component libraries

local component = require("component")

local colors = require("colors")

local sides = require("sides")

local rs = component.redstone -- get primary redstone component

-- Turn on directional moving for direction UP

rs.setBundledOutput(sides.bottom, colors.orange,0)
	print("DESCENDING")

rs.setBundledOutput(sides.botoom, colors.orange,255)
	print("Move Finished")

-- Function for repeating(WIP)
