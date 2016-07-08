local component = require("component")
local term = require("term")

local gpu = component.gpu
gpu.setResolution(75,25)
local w,h = gpu.getResolution()
Grey = 0x151515
White = 0xffffff
Gold = 0xffd700

local rs = component.redstone
local colors = require("colors")
local sides = require("sides")

local epdd = component.ep_dialling_device
local epc = component.ep_controller

local portals = {} --holds portal info
local eportals = {} --holds functions


function eportals.getPortals() --grab names of all portals and add to portal table
  portals = {}
  local i = 0
  while epdd.getStoredName(i) ~= nil do
    table.insert(portals,epdd.getStoredName(i))
    i = i + 1
    end
end

function eportals.listNames()
  for k,v in ipairs(portals) do
    print(k,v)
  end
end

function eportals.disconect()
  if rs.getInput(sides.back) >= 13 then
    epdd.terminate()
  elseif epc.isPortalActive() == true then
    print("Portal will stay open for 8 seconds")
    os.sleep(8)
    epdd.terminate()
  end
end

function eportals.screenReset()
  gpu.setBackground(Grey)
  gpu.setForeground(Gold)
  gpu.fill(1, 1, w, h, " ")
  term.setCursor(1,1)
end

while true do
  eportals.disconect()
  eportals.screenReset()
  eportals.getPortals()
  print("Where would you like to go?")
  eportals.listNames()
  desitantion = tonumber(io.read()-1)
  epdd.dialStored(desitantion)
end

return portals
