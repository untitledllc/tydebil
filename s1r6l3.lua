

module (..., package.seeall )

function new()
	local localGroup=display.newGroup ( )	
	
local background=display.newImage("image/bg.png")
  background.x= display.viewableContentWidth/2
    background.y=display.contentHeight/2
    background.xScale = display.viewableContentWidth/background.contentWidth 
    background.yScale = display.viewableContentHeight/background.contentHeight
localGroup:insert(background)	

local title = display.newText( "Быстро! Нажми на синюю кнопку.",40, 50, native.systemFont, 18 )
title.x= display.viewableContentWidth/2
title.y= (display.contentHeight - display.viewableContentHeight)/2 + title.contentHeight*1/2
title:setTextColor ( 50, 50, 255)
localGroup:insert(title)
	
local duck1 = display.newImage("image/6/level3/kr.jpg")
duck1.xScale = display.viewableContentHeight/(4 * duck1.contentWidth) 
duck1.yScale = display.viewableContentHeight/(4 * duck1.contentHeight)
duck1.x=  display.viewableContentWidth*1/4
duck1.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*1/4  +title.contentHeight*1/2
localGroup:insert(duck1)

local duck2 = display.newImage("image/6/level3/egg.png")
duck2.xScale = display.viewableContentHeight/(9 * duck2.contentWidth) 
duck2.yScale = display.viewableContentHeight/(9 * duck2.contentHeight) 
duck2.x=  display.viewableContentWidth*2/6
duck2.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*3/4 +title.contentHeight*1/2
localGroup:insert(duck2)

local duck3 = display.newImage("image/6/level3/b.jpg")
duck3.xScale = display.viewableContentHeight/(6 * duck3.contentWidth) 
duck3.yScale = display.viewableContentHeight/(6 * duck3.contentHeight) 
duck3.x= display.viewableContentWidth*4/5
duck3.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*3/4+ title.contentHeight*1/2
localGroup:insert(duck3)

local duck4 = display.newImage("image/6/level3/grean.png")
duck4.xScale = display.viewableContentHeight/(3 * duck4.contentWidth) 
duck4.yScale = display.viewableContentHeight/(3 * duck4.contentHeight) 
duck4.x=  display.viewableContentWidth*3/5
duck4.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*2/5 +title.contentHeight*1/2
localGroup:insert(duck4) 

local flag = false

local function BadEnd()
if flag == false then director:changeScene("fail") end
end

local clockTimer = timer.performWithDelay( 2500, BadEnd, 1 )

local function done(event)

if event.phase=="ended" then 

   if (event.x - duck3.x)^2 + (event.y - duck3.y)^2 <= duck3.contentHeight^2/4
	 then
	 flag = true
   director:changeScene("s1r6l41")
   else 
   flag = true 
   director:changeScene("fail") 
   end
end 

end 


background:addEventListener ( "touch", done )

	return localGroup
end