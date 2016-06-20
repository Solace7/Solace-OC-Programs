--Movement API, attach bundled cable to Motor.
--[[
By default Direction colors are as follows;
UP is white
DOWN is orange
EAST(RIGHT) is magenta
WEST(LEFT) is yellow
NORTH(FORWARDS) is blue
SOUTH(BACKWARDS) is lime
]]--
--Attach cable to CPU(Computer Case)

API = require("movementAPI")
local component = require("component")
local colors = require("colors")
local sides = require("sides")
local rs = component.redstone --get primrary redstone component

--move RIGHT
API.move(east)
