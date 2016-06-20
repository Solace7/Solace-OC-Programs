-- This Program is for turning off ship controls if using RemainInMotion and ProjectRed

-- Ship Control ROTATION(WIP)

-- Declare require component libraries

local component = require("component")

local colors = require("colors")

local sides = require("sides")

local rs = component.redstone -- get primary redstone component

-- Make one 90 rotation 

rs.setBundledOutput(sides.bottom, colors.brown,0)
	print("Rotating")

rs.setBundledOutput(sides.botoom, colors.brown,255)
	print("Done Rotating")

-- Function for repeating(WIP)
