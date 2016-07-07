button = require("buttonAPI")
local component = require("component")
local term = require("term")

local gpu = component.gpu

local rs = component.redstone
local colors = require("colors")
local sides = require("sides")

local epdd = component.ep_dialling_device
local epc = component.ep_controller

local page = 1
local pages = 0
local portals = {} --holds portal info
local eportals = {} --holds functions

function eportals.getPortalNames() --grab names of all portals and add to portal table
  local i = 0
  while epdd.getStoredName(i) ~= nil do
    table.insert(portals,epdd.getStoredName(i))
    i = i + 1
  end
end

function eportals.dial(portalnum)
  local entry,portal = string.match(portalnum, "(%d+):(%d+)")
  button.toggleButton(names[tonumber(entry)][tonumber(name)])
  print(names[tonumber(entry)][tonumber(portal)])
  button.toggleButton(names[tonumber(entry)][tonumber(portal)])
end

function eportals.listNames()
  for k,v in ipairs(portals) do
    print(k,v)
  end
end

--buttons should be 8 pixels apart, starting at 5,32,2,4


function button.fillTable()
  button.clear()
  local totalrows = 0
  local numPortals = 0
  local col = 2
  local row = 12
  local countRow = 1
  local currPortal = 0
  local npp = 12 --names per page
  for portal in pairs(portals) do
    for k,v in pairs(portals) do
      totalrows = totalrows + 1
    end
  end
  pages = math.ceil(totalrows/npp)
  print(totalros)
  for portals in pairs(portals) do
    currPortal = 0
    for entry, name in pairs(portals) do
      currName = currName + 1
      if currName > npp*(page-1) and currName < npp*page+1 then
        row = 4+(countRow)
        names[portals] = string.sub(name, 0, 17)
        button.setTable(string.sub(name,0,17), epportals.dial(), entry..":"..portals, col, col+17, row, row)
        if col == 21 then
          col = 2
          countRow = countRow + 2
        else
          col = col+19
        end
      end
    end
  end
  button.setTable("Next Page", nextPage, 21, 38, 1, 1)
  button.setTable("Prev Page", prevPage, 2, 19, 1, 1 )
  button.setTable("Refresh", checkNames, 21, 38, 19, 19)
  button.screen()
end

function eportals.nextPage()
  if page+1 <= pages then page = page+1 end
  button.fillTable()
end

function eportals.prevPage()
  if page-1 >= 1 then page = page-1 end
  button.fillTable()
end

function getClick()
  local _, _, x, y = event.pull(1,touch)
  if x == nil or y == nil then
    local h, w = gpu.getResolution()
    gpu.set(h, w, ".")
    gpu.set(h, w, " ")
  else
    button.checkxy(x,y)
  end
end

term.setCursorBlink(false)
gpu.setResolution(80,25)
button.clear()
button.fillTable()
button.label(15,3, "Page: "..tostring(page).." of "..tostring(pages))

while true do
  getClick()
end


while true do
  print("Where would you like to go?")
  eportals.listNames()
  desitantion = tonumber(io.read())
  epdd.dial(desitantion)

return portals
