

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
	
	
local title=display.newText("Add numbers, what result?", 50, 20, native.systemFont, 19 ) 
title.x= title.contentWidth/2
title.y= (display.contentHeight - display.viewableContentHeight)/2 + title.contentHeight*1/2
title:setTextColor ( 50, 50, 255)
localGroup:insert(title)


	
local duck1 = display.newImage("image/2/level4/136.jpg")
duck1.xScale = display.viewableContentWidth/(6 * duck1.contentWidth) *1.4
duck1.yScale = display.viewableContentHeight/(12 * duck1.contentHeight) *2.0
duck1.x=  display.viewableContentWidth*1/4
duck1.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*1/4
localGroup:insert(duck1)

local duck2 = display.newImage("image/2/level4/7.jpg")
duck2.xScale = display.viewableContentWidth/(6 * duck2.contentWidth) *1.0
duck2.yScale = display.viewableContentHeight/(12 * duck2.contentHeight) *2.0
duck2.x=  display.viewableContentWidth*1/4
duck2.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*3/4
localGroup:insert(duck2)

local duck3 = display.newImage("image/2/level4/9.jpg")
duck3.xScale = display.viewableContentWidth/(6 * duck3.contentWidth) *1.0
duck3.yScale = display.viewableContentHeight/(12 * duck3.contentHeight) *2.0
duck3.x= display.viewableContentWidth*3/4
duck3.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*3/4
localGroup:insert(duck3)

local duck4 = display.newImage("image/2/level4/10.jpg")
duck4.xScale = display.viewableContentWidth/(6 * duck4.contentWidth) *1.4
duck4.yScale = display.viewableContentHeight/(12 * duck4.contentHeight) *2.0
duck4.x=  display.viewableContentWidth*3/4
duck4.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*1/4
localGroup:insert(duck4)



local function done(event)

if event.phase=="ended" then 

   if event.x < duck3.x + duck3.contentWidth/2 and event.x > duck3.x - duck3.contentWidth/2   
     and event.y < duck3.y + duck3.contentHeight/2 and event.y > duck3.y - duck3.contentHeight/2
	 then
   director:changeScene("s1r2check")
   else  director:changeScene("fail")  end
end 

end 


background:addEventListener ( "touch", done )

	return localGroup
end