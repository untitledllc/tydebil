

------              Section 1 Old School l
--level 6

module (..., package.seeall )



function new()
local localGroup=display.newGroup ( )
	
	
	
local background=display.newImage("image/bg.png")
 background.x= display.viewableContentWidth/2
 background.y=display.contentHeight/2
 background.xScale = display.viewableContentWidth/background.contentWidth 
 background.yScale = display.viewableContentHeight/background.contentHeight
localGroup:insert(background)
	
	
local title=display.newText("Be more attentive", 50, 20, native.systemFont, 24 ) 
title.x= display.contentWidth/2
title.y= display.contentHeight/2 -- title.contentHeight*1/2
	title:setTextColor ( 100, 150, 100)
	localGroup:insert(title)
	
local title1=display.newText("Touch the screen", 50, 20, native.systemFont, 12 ) 
title1.x= display.contentWidth/2
title1.y= title.y + title.contentHeight/2 + title1.contentHeight/2
title1:setTextColor ( 10, 10, 0)
localGroup:insert(title1)

local function done(event)

if event.phase=="ended" then director:changeScene("s1r2l42") end
end 


background:addEventListener ( "touch", done )

	return localGroup
end