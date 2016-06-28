local component = require("component")
local button = require("buttonAPI")
local colors = require("colors")
local sides = require("sides")
local term = require("term")

local epdd = component.ep_dialing_device
local epc = component.ep_controller

local page = 1
local pages = 0
local portals = {} --holds portal info
local eportals = {} --holds functions

function getPortalNames() --grab names of all portals and add to portal table
  for i = 0,1 do
    table.insert(portals,epdd.getStoredName(i))
  end
end

function eportals.fillTable()
  --[[ for i=0,1 do
    API.setTable(=portals[i], )
    ]]--
  button.setTable("Next Page", nextPage, "", 21, 38, 1, 1)
  button.setTable("Prev Page", prevPage, "", 2, 19, 1, 1 )
  button.setTable("Refresh", checkNames, "", 21, 38, 19, 19)
  button.label(15,3, "Page: "..tostring(page).." of "..tostring(pages))
  button.screen()
end

function eportals.nextPage()
  if page+1 <= pages then page = page+1 end
  eportals.fillTable()
end

function eportals.prevPage()
  if page-1 >= 1 then page = page-1 end
  eportals.fillTable()

function getClick()
  local _, _, x, y = event.pull(1,touch)
  if x == nil or y == nil then
    local h, w = gpu.getResolution()
    gpu.set(h, w, ".")
    gpu.set(h, w, " ")
  else
    API.checkxy(x,y)
  end
end

term.setCursorBlink(false)
gpu.setResolution(80,25)
button.clear()
eportals.fillTable()

while true do
  getClick()
return portals
