


module (..., package.seeall )



function new()
	local localGroup=display.newGroup ( )
	
	
	
local background=display.newImage("image/bg.png")
  background.x= display.viewableContentWidth/2
    background.y=display.contentHeight/2
    background.xScale = display.viewableContentWidth/background.contentWidth 
    background.yScale = display.viewableContentHeight/background.contentHeight
localGroup:insert(background)
	
	
local pic3 = display.newImageRect("image/6/level5/r.jpg",50, 50)
pic3.xScale = display.contentWidth/pic3.contentWidth -4
pic3.yScale = display.contentHeight/pic3.contentHeight -1
pic3.x = display.viewableContentWidth*1/2
pic3.y = display.contentHeight/2
pic3.isVisible = true
localGroup:insert(pic3)

local button = display.newImageRect("image/6/level5/g.jpg",50, 50)
button.xScale = display.contentWidth/button.contentWidth -4
button.yScale = display.contentHeight/button.contentHeight -1
button.x = display.viewableContentWidth*1/2 +50
button.y = display.contentHeight/2
button.isVisible = false
localGroup:insert(button)



local flag = false

local function ololo (event)
     pic3.isVisible = true
	 button.isVisible = false
	 flag = false
end

local function done(event)
if event.phase=="ended" then 	
 
  if flag ~=false then
 print ("fail")
 director:changeScene("fail")
 end
 
 if (event.x - pic3.x)^2 + (event.y - pic3.y)^2 <= (pic3.contentHeight^2)/4 
 and flag == false
 then
 
   
  
  
     pic3.isVisible = false
	 button.isVisible = true
     button.x = pic3.x   
	 button.y = pic3.y
	 flag =  true
	 timer.performWithDelay( 5000, ololo, 1 )
  
   
 
 else
  print ("fail")
 director:changeScene("fail")
 end

end
end

background:addEventListener ( "touch", done )

	return localGroup
end