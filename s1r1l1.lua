

------              Section 1 Old School l
-- level 1




module(..., package.seeall)

function new()
	local localGroup = display.newGroup()

local background = display.newImage ("image\\bg.png")
background.x= display.viewableContentWidth/2
background.y=display.contentHeight/2
background.xScale = display.viewableContentWidth/background.contentWidth 
background.yScale = display.viewableContentHeight/background.contentHeight

localGroup:insert(background)


local title = display.newText( "Нажми красную кнопку для продолжения.",40, 50, native.systemFont, 18 )
title:setTextColor ( 168, 0, 0)
title.x= title.contentWidth/2
title.y= (display.contentHeight - display.viewableContentHeight)/2 + title.contentHeight*1/2
localGroup:insert(title)


local buttonred=display.newImage("image/level1/red.png")
buttonred.x=math.random(buttonred.contentWidth/2,  display.viewableContentWidth/2-buttonred.contentWidth/2)
buttonred.y=math.random(title.y+title.contentHeight/2, (display.contentHeight - display.viewableContentHeight)/2+display.viewableContentHeight/2 - buttonred.contentHeight/2 )
localGroup:insert(buttonred)

local buttonblue=display.newImage("image/level1/blue.png")
buttonblue.x=math.random(buttonblue.contentWidth/2,  display.viewableContentWidth/2-buttonblue.contentWidth/2)
buttonblue.y=math.random(title.y+title.contentHeight/2+display.contentHeight/2, (display.contentHeight - display.viewableContentHeight)/2+display.viewableContentHeight - buttonblue.contentHeight/2)
localGroup:insert(buttonblue)


local buttongreen=display.newImage("image/level1/green.png")
buttongreen.x=math.random(buttongreen.contentWidth/2+display.viewableContentWidth/2,  display.viewableContentWidth-buttongreen.contentWidth/2)
buttongreen.y=math.random(title.y+title.contentHeight/2, (display.contentHeight - display.viewableContentHeight)/2+display.viewableContentHeight/2 - buttongreen.contentHeight/2)
localGroup:insert(buttongreen)

local buttonorange=display.newImage("image/level1/orange.png")
buttonorange.x=math.random(buttonorange.contentWidth/2+display.viewableContentWidth/2,  display.viewableContentWidth-buttonorange.contentWidth/2)
buttonorange.y=math.random(title.y+title.contentHeight/2+display.contentHeight/2, (display.contentHeight - display.viewableContentHeight)/2+display.viewableContentHeight - buttonorange.contentHeight/2)
localGroup:insert(buttonorange)



--local function pressred(event)
--if event.phase == "ended" then
--	director:changeScene("s1r1l2")
--end
--end


local function pressother(event)
if event.phase == "ended" then
if event.x < buttonred.x + buttonred.contentWidth and event.x > buttonred.x - buttonred.contentWidth   -- buttonred
  and event.y < buttonred.y + buttonred.contentHeight and event.y > buttonred.y - buttonred.contentHeight 
  then
   director:changeScene("s1r1l2")
   else
    print ("fail&?")
	director:changeScene("fail")
	end
end
end


buttonred:addEventListener ( "touch", pressother  )
buttonblue:addEventListener ( "touch", pressother )
buttongreen:addEventListener ( "touch", pressother )
buttonorange:addEventListener ( "touch", pressother )
background:addEventListener ( "touch", pressother )
------------------------------------------------------------------------------
------------------------------------------------------------------------------
return localGroup
end