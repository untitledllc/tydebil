

------              Section 1 Old School l
--level 3

module (..., package.seeall )

--stack.checkPointWindow="s1r1l3"

function new()
	local localGroup=display.newGroup ( )
	local background=display.newImage("image/bg.png")
	background.x= display.viewableContentWidth/2
    background.y=display.contentHeight/2
    background.xScale = display.viewableContentWidth/background.contentWidth 
    background.yScale = display.viewableContentHeight/background.contentHeight
	localGroup:insert(background)
	
	
	
local title=display.newText("Дотронься до знака плюс.", 40, 50, native.systemFont, 15 )
title.x= title.contentWidth/2
title.y= (display.contentHeight - display.viewableContentHeight)/2 + title.contentHeight*1/2
	title:setTextColor ( 50, 50, 255)
	localGroup:insert(title)
	
local plus = display.newImageRect("image/level3/plus.png",100, 100)
plus.x= display.viewableContentWidth/5
plus.y= display.contentHeight/2
localGroup:insert(plus)
	
local minus = display.newImageRect ("image/level3/minus.png", 100, 100 )
minus.x=display.viewableContentWidth*2/5
minus.y=display.contentHeight/2
localGroup:insert(minus)

local ymn = display.newImageRect ("image/level3/ymn.png", 100, 100)
ymn.x=display.viewableContentWidth*3/5
ymn.y=display.contentHeight/2
localGroup:insert(ymn)

local del=display.newImageRect ( "image/level3/del.png", 100, 100 )
del.x=display.viewableContentWidth*4/5
del.y=display.contentHeight/2
localGroup:insert(del)


local function touch (event)
print (event.phase)

if event.phase=="ended" or "cancelled" == event.phase then
  if (event.x - plus.x)^2 + (event.y - plus.y)^2 < (plus.contentHeight/2)^2 then
  director:changeScene("s1r1l4")
 else print("fail") director:changeScene("fail") end
end
end

plus:addEventListener ( "touch", touch )
minus:addEventListener ( "touch", touch )	
ymn:addEventListener ( "touch", touch  )
del:addEventListener ( "touch", touch  )
background:addEventListener ( "touch",touch )
	return localGroup
end