display.setStatusBar (display.HiddenStatusBar)
--> Hides the status bar

S1Besttime =1.11
local director = require ("director")
--local stack = require ("stack")
--> Imports director

local mainGroup = display.newGroup()
--> Creates a main group

local function main()
--> Adds main function
	
	mainGroup:insert(director.directorView)
	--> Adds the group from director
	
	director:changeScene("menu")
	--> Change the scene, no effects
	
	--[[local orientationLabel = ui.newLabel{
	bounds = { 12, 115, 300, 40 },
	text = "Orientation: (default)",
	font = native.systemFontBold,
	textColor = { 240, 240, 90, 255 },
	size = 15,
	align = "center"
	}--]]
--[[
local function onOrientationChange( event )
	orientationLabel:setText("Orientation: " .. system.orientation )
end

Runtime:addEventListener( "orientation", onOrientationChange )
--]]
	return true
end

main()
--> Starts our app