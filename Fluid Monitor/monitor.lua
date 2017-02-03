--[[
This program will display fluid levels on any monitor. This program makes use of the following;
Pressure Pipes by BDEW - Requires Data Port
OC Adapter - because wireless adapters aren't a thing yet
]]

local component = require("component")
local tanks = {} --holds tank info
local fluid = {} --holds functions

function fluid.getTanks()
  address = {}
  local i = 0

for k,v in component.list("pressure_tankdataport") do
  i = i + 1
  address[i] = k
end

function fluid.listTanks()
local n = 0

for k in pairs(address) do
  n = n + 1
  print("tank" .. n .. " " .. address[n])
end
