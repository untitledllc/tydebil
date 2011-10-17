

module (..., package.seeall )

function new()
	local localGroup=display.newGroup ( )	
	
local background=display.newImage("image/bg.png")
  background.x= display.viewableContentWidth/2
    background.y=display.contentHeight/2
    background.xScale = display.viewableContentWidth/background.contentWidth 
    background.yScale = display.viewableContentHeight/background.contentHeight
localGroup:insert(background)	

local title=display.newText("Ты близок к фнишу", 50, 20, native.systemFont, 14) 
title.x= display.contentWidth/2
title.y= (display.contentHeight - display.viewableContentHeight)/2 + title.contentHeight*1/2
title:setTextColor ( 50, 50, 255)
localGroup:insert(title)
	
local title2=display.newText("Сейчас не время делать ошибки", 50, 20, native.systemFont, 14 ) 
title2.x= display.contentWidth/2
title2.y= title.y + title2.contentHeight*1/2 + title.contentHeight*1/2
title2:setTextColor ( 50, 50, 255)
localGroup:insert(title2)

local title3=display.newText("Только продолжай читать.", 50, 20, native.systemFont, 14 ) 
title3.x= display.contentWidth/2
title3.y= title2.y + title3.contentHeight*1/2 + title2.contentHeight*1/2
title3:setTextColor ( 50, 50, 255)
localGroup:insert(title3)

local title4=display.newText("Время идет", 50, 20, native.systemFont, 14 ) 
title4.x= display.contentWidth/2
title4.y= title3.y + title4.contentHeight*1/2 + title3.contentHeight*1/2
title4:setTextColor ( 50, 50, 255)
localGroup:insert(title4)

local title5=display.newText("Ты просто так, потратил как минимум 5 секунд, для прочтения этого.", 50, 20, native.systemFont, 14 ) 
title5.x= display.contentWidth/2
title5.y= title4.y + title4.contentHeight*1/2 + title5.contentHeight*1/2
title5:setTextColor ( 50, 50, 255)
localGroup:insert(title5)

local duck3 = display.newImage("image/6/level2/egg.png")
duck3.xScale = display.viewableContentHeight/(26 * duck3.contentWidth) 
duck3.yScale = display.viewableContentHeight/(26 * duck3.contentHeight) 
duck3.x= display.contentWidth/2
localGroup:insert(duck3)

local title6=display.newText("Сломай самое маленькое ", 50, 20, native.systemFont, 14 ) 
title6.x= display.contentWidth/2 - duck3.contentWidth/2 -  title6.contentWidth/2-2
title6.y= title5.y + title5.contentHeight*1/2 + title6.contentHeight*1/2 
title6:setTextColor ( 50, 50, 255)
localGroup:insert(title6)

duck3.y= title5.y + title5.contentHeight*1/2 + title6.contentHeight*1/2

local title7=display.newText(" для продолжения", 50, 20, native.systemFont, 14 ) 
title7.x= display.contentWidth/2 + duck3.contentWidth/2 +  title7.contentWidth/2 +2
title7.y= title5.y + title5.contentHeight*1/2 + title7.contentHeight*1/2
title7:setTextColor ( 50, 50, 255)
localGroup:insert(title7)


local duck1 = display.newImage("image/6/level2/egg.png")
duck1.xScale = display.viewableContentHeight/(7 * duck1.contentWidth) 
duck1.yScale = display.viewableContentHeight/(7 * duck1.contentHeight)
duck1.x=  display.viewableContentWidth*1/5
duck1.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*4/5
localGroup:insert(duck1)

local duck2 = display.newImage("image/6/level2/egg.png")
duck2.xScale = display.viewableContentHeight/(6* duck2.contentWidth) 
duck2.yScale = display.viewableContentHeight/(6 * duck2.contentHeight) 
duck2.x=  display.viewableContentWidth*2/5
duck2.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*4/5
localGroup:insert(duck2)

local duck4 = display.newImage("image/6/level2/egg.png")
duck4.xScale = display.viewableContentHeight/(8 * duck4.contentWidth) 
duck4.yScale = display.viewableContentHeight/(8 * duck4.contentHeight) 
duck4.x=  display.viewableContentWidth*3/5
duck4.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*4/5
localGroup:insert(duck4)

local duck5 = display.newImage("image/6/level2/egg.png")
duck5.xScale = display.viewableContentHeight/(10 * duck5.contentWidth) 
duck5.yScale = display.viewableContentHeight/(10 * duck5.contentHeight) 
duck5.x=  display.viewableContentWidth*4/5
duck5.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*4/5
localGroup:insert(duck5)



local function done(event)

if event.phase=="ended" then 

   if (event.x - duck3.x)^2 + (event.y - duck3.y)^2 <= duck3.contentHeight^2/4
	 then
   director:changeScene("s1r6l3")
   else  director:changeScene("fail")  end
end 

end 


background:addEventListener ( "touch", done )

	return localGroup
end