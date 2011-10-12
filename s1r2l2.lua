

------              Section 1 Old School 2
--level 2

module (..., package.seeall )

function new()
	local localGroup=display.newGroup ( )
	local background=display.newImage("image/bg.png")
	background.x= display.viewableContentWidth/2
    background.y=display.contentHeight/2
    background.xScale = display.viewableContentWidth/background.contentWidth 
    background.yScale = display.viewableContentHeight/background.contentHeight
	localGroup:insert(background)
	
local title=display.newText("Дотронься до компьютерной мыши.", 40, 50, native.systemFont, 15 )
title.x= title.contentWidth/2
title.y= (display.contentHeight - display.viewableContentHeight)/2 + title.contentHeight*1/2
	title:setTextColor ( 50, 50, 255)
	localGroup:insert(title)
	
local mous = display.newImageRect("image/2/level2/mous.jpg",100, 100)
mous.x= display.viewableContentWidth/5
mous.y= display.contentHeight/2
localGroup:insert(mous)
		
local mousPC = display.newImageRect ("image/2/level2/mousPC.jpg", 100, 100 )
mousPC.x=display.viewableContentWidth*2.5/5
mousPC.y=display.contentHeight/2
localGroup:insert(mousPC)

local PC = display.newImageRect ("image/2/level2/PC.jpg", 100, 100)
PC.x=display.viewableContentWidth*4/5
PC.y=display.contentHeight/2
localGroup:insert(PC)



local function touch (event)
if event.phase=="ended" or "cancelled" == event.phase then
 if (event.x - mousPC.x)^2 + (event.y - mousPC.y)^2 < (mousPC.contentHeight/2)^2 then
  director:changeScene("s1r2l3")
 else print("fail") director:changeScene("fail") end
end
end

--mous:addEventListener ( "touch", touch )
--mousPC:addEventListener ( "touch", touch )	
--PC:addEventListener ( "touch", touch  )

background:addEventListener ( "touch",touch )
	return localGroup
end
