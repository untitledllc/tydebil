

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
	
	
local title=display.newText("Нажи на самый большой квадратный алмаз.", 50, 20, native.systemFont, 19 ) 
title.x= title.contentWidth/2
title.y= (display.contentHeight - display.viewableContentHeight)/2 + title.contentHeight*1/2
title:setTextColor ( 50, 50, 255)
localGroup:insert(title)


	
local duck1 = display.newImage("image/3/level2/SK1.jpg")
duck1.xScale = 0.5 
duck1.yScale = 0.45 
duck1.x=  display.viewableContentWidth*1/25+duck1.contentWidth
duck1.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*1/4
localGroup:insert(duck1)

local duck2 = display.newImage("image/3/level2/SK1.jpg")  --
duck2.xScale =1.6 * display.viewableContentWidth/ display.viewableContentHeight* 0.7
duck2.yScale =1.54 * display.viewableContentWidth/ display.viewableContentHeight * 0.7
duck2.x=  display.viewableContentWidth*1/4
duck2.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*3/4
localGroup:insert(duck2)

local duck3 = display.newImage("image/3/level2/SK1.jpg")
duck3.xScale = 0.75
duck3.yScale = 0.70
duck3.x= display.viewableContentWidth*2/4
duck3.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*2/4
localGroup:insert(duck3)

local duck7 = display.newImage("image/3/level2/SK1.jpg")
duck7.xScale = 1.45
duck7.yScale = 1.40
duck7.x= display.viewableContentWidth*3/4
duck7.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*1/4
localGroup:insert(duck7)

local duck4 = display.newImage("image/3/level2/SK2.jpg")
duck4.xScale =1
duck4.yScale =1
duck4.x=  duck1.x + display.viewableContentWidth*3/4
duck4.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*3/4
localGroup:insert(duck4)

local duck5 = display.newImage("image/3/level2/SK2.jpg")
duck5.xScale =1.8
duck5.yScale =1.9 
duck5.x=  duck1.x + duck1.contentWidth+duck5.contentWidth/1.5
duck5.y= duck1.y + duck5.contentHeight/3 - duck1.contentHeight/3
localGroup:insert(duck5)

local duck6 = display.newImage("image/3/level2/SK2.jpg")
duck6.xScale =1.8
duck6.yScale = 1.6
duck6.x=  display.viewableContentWidth*3/4 - duck6.contentWidth/2
duck6.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*3/4
localGroup:insert(duck6)


local function done(event)
if event.phase=="ended" then
 if event.x < duck2.x + duck2.contentWidth/2 and event.x > duck2.x - duck2.contentWidth/2   
     and event.y < duck2.y + duck2.contentHeight/2 and event.y > duck2.y - duck2.contentHeight/2
	 then
   director:changeScene("s1r3l3")
   else  director:changeScene("fail")  end
 end
end 


background:addEventListener ( "touch", done )

	return localGroup
end