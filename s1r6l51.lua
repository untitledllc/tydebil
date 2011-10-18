
module (..., package.seeall )



function new()
	local localGroup=display.newGroup ( )
	stack.timeStop()
	print (stack.BestTime )
	if stack.BestTime*10 > stack.times*10 or stack.BestTime*10 == 0 then 
	stack.BestTime = stack.times
	print ("write to fail\n stack.BestTime "..stack.BestTime)
	stack.SaveBestTime ()
	end
	
local background=display.newImage("image/bg.png")
  background.x= display.viewableContentWidth/2
    background.y=display.contentHeight/2
    background.xScale = display.viewableContentWidth/background.contentWidth 
    background.yScale = display.viewableContentHeight/background.contentHeight
localGroup:insert(background)
	
	print ("pop")
	
local title=display.newText("Поздравляю.Секция пройдена.", 50, 20, native.systemFont, 17 ) 
title.x = display.contentWidth/2
title.y = display.contentHeight/2 - title.contentHeight/2
title:setTextColor ( 50, 50, 255)
localGroup:insert(title)

local title1=display.newText("Твой результат: ", 50, 20, native.systemFont, 17 ) 
title1.text = "Твой результат: ".. stack.times
title1.x = display.contentWidth/2
title1.y = title.y + title1.contentHeight/2 +title.contentHeight/2
title1:setTextColor ( 50, 50, 255)
localGroup:insert(title1)

local title2=display.newText("Коснитесь экрана для возращения к началу секции ", 50, 20, native.systemFont, 12 ) 
title2.x = display.contentWidth/2
title2.y = title1.y + title1.contentHeight/2 +title2.contentHeight/2
title2:setTextColor ( 50, 50, 255)
localGroup:insert(title2)		
	
local function 	done(event)
if event.phase == "ended" then
stack.restart()
director:changeScene("section1")
end
end
	
background:addEventListener ( "touch", done )
--local function done(event) director:changeScene("s1r6l52") end 


--local clockTimer = timer.performWithDelay( 2000, done, 1 )

	return localGroup
end