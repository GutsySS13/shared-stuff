-- 16:q 17:w 18:e  30:a 31:s 32:d
-- 57 = space

print(" q up, w forward, e down, r refuel")
print(" a turn left, s back, d turn right, f fuel level")
print("press space to exit control")

local function tf()
	if turtle.detect() then
		turtle.dig()
	end
	turtle.forward()
end

local function tb()
	turtle.back()
end

local function tl()
	turtle.turnLeft()
end

local function tr()
	turtle.turnRight()
end

local function tu()
	if turtle.detectUp() then
		turtle.digUp()
	end
	turtle.up()
end

local function td()
	if turtle.detectDown() then
		turtle.digDown()
	end
	turtle.down()
end

local function trefuel()
print("Refueling")
turtle.refuel();
end

local function showfuel()
print("Fuel: "..turtle.getFuelLevel())
end


local event
event=''
while true do 
  event = {os.pullEvent()} --pulls the all events
  if event[1] == "key" then 
       if event[2] == 57 then 
         print("you pressed space, Exiting")
		break
       end
       if event[2] then
         print("you pressed" .. event[2])
       end
       if event[2] == 17 then 
         tf();
       end
       if event[2] == 30 then 
         tl();
       end
       if event[2] == 31 then 
         tb();
       end
       if event[2] == 32 then 
         tr();
       end
       if event[2] == 16 then 
         tu();
       end
       if event[2] == 18 then 
         td();
       end
       if event[2] == 19 then 
         trefuel();
       end
       if event[2] == 33 then 
         showfuel();
       end
  end
end
