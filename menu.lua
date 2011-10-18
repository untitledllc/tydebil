module(..., package.seeall)
local stack=require("stack")

function new()
	local localGroup = display.newGroup()
	--> This is how we start every single file or "screen" in our folder, except for main.lua
	-- and director.lua
	--> director.lua is NEVER modified, while only one line in main.lua changes, described in that file
------------------------------------------------------------------------------
------------------------------------------------------------------------------
local background = display.newImage ("image\\blackbackground.png")
localGroup:insert(background)
--> This sets the background

local redbutton = display.newImage ("image\\redbutton.png")
redbutton.x = 160
redbutton.y = 100
localGroup:insert(redbutton)

local bluebutton = display.newImage ("image\\bluebutton.png")
bluebutton.x = 160
bluebutton.y = 225
localGroup:insert(bluebutton)

local function pressRed (event)
if event.phase == "ended" then
director:changeScene ("section1")
end
end

redbutton:addEventListener ("touch", pressRed)


local function pressBlue (event)
if event.phase == "ended" then
director:changeScene ("fail")
end
end

bluebutton:addEventListener ("touch", pressBlue)

------------------------------------------------------------------------------
------------------------------------------------------------------------------
	return localGroup
end
--> This is how we end every file except for director and main, as mentioned in my first comment