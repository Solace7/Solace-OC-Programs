local component = require("component")
local sides = require("sides")
local colors = require("colors")
local rs = component.redstone
local flframe = require("movementAPI")

-- Only movement is forwards, orange for pusher, white for puller
-- Color for mining lime
local quarry = {}

function quarry.Start(cycles,color)
  for i=1,cycles,1
    do
      print("Moving")
      rs.setBundledOutput(sides.top,colors.orange,255) --push forwards
      os.sleep(1)
      rs.setBundledOutput(sides.top,colors.orange,0)
      os.sleep(2)
      print("Resetting")
      rs.setBundledOutput(sides.top,colors.white,255) --pull puller
      os.sleep(1)
      rs.setBundledOutput(sides.top,colors.white,0)
      os.sleep(2)
      print("Mining...")
      rs.setBundledOutput(sides.top,colors.lime,255)
      os.sleep(12) --time it takes to mine down to bedrock
      rs.setBundledOutput(sides.top,colors.lime,0)
      print("Done! Finished cycle:" .. i)
  end
end

return quarry
-- Maybe make a code to get the cordinates of where the quarry is
