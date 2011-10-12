
module (..., package.seeall )



function new()
	local localGroup=display.newGroup ( )
	
	
	
local background=display.newImage("image/bg.png")
  background.x= display.viewableContentWidth/2
    background.y=display.contentHeight/2
    background.xScale = display.viewableContentWidth/background.contentWidth 
    background.yScale = display.viewableContentHeight/background.contentHeight
localGroup:insert(background)
	
local title=display.newText("The help: the green button", 50, 20, native.systemFont, 17 ) 
title.x = display.contentWidth/2
title.y = display.contentHeight/2
title:setTextColor ( 50, 50, 255)
localGroup:insert(title)	

local function done(event) director:changeScene("s1r5l41") end 


local clockTimer = timer.performWithDelay( 1300, done, 1 )

	return localGroup
end