

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
	
	
local title=display.newText("От самого маленького до самого большого,\n коснись чисел, основываясь на их размере", 50, 20, native.systemFont, 14 ) -- ������ �� ���������� ���� ��.???
title.x= title.contentWidth/2
title.y= (display.contentHeight - display.viewableContentHeight)/2 + title.contentHeight*1/2
	title:setTextColor ( 50, 50, 255)
	localGroup:insert(title)
	
local duck1 = display.newImage("image/5/level1/2.jpg")
duck1.xScale = 1.0
duck1.yScale = 1.0
duck1.x=display.viewableContentWidth*1/5
duck1.y=display.viewableContentHeight*1/4
localGroup:insert(duck1)

local duck2 = display.newImage("image/5/level1/14.jpg")
duck2.xScale = 1.65
duck2.yScale = 1.60
duck2.rotation= -10
duck2.x=display.viewableContentWidth*1/4
duck2.y=display.viewableContentHeight*4/6
localGroup:insert(duck2)

local duck3 = display.newImage("image/5/level1/37.jpg")
duck3.xScale = 1.3
duck3.yScale = 1.3
duck3.rotation= 15
duck3.x=display.viewableContentWidth*4/5
duck3.y=display.viewableContentHeight*3/8
localGroup:insert(duck3)

local duck4 = display.newImage("image/5/level1/15.jpg")
duck4.xScale = 1.5
duck4.yScale = 1.55
duck4.rotation= -10
duck4.x=display.viewableContentWidth*3/4
duck4.y=display.viewableContentHeight*3/4
localGroup:insert(duck4)

local duck5 = display.newImage("image/5/level1/23.jpg")
duck5.xScale = 1.8
duck5.yScale = 1.85
duck5.x=display.viewableContentWidth*3/7
duck5.y=display.viewableContentHeight*3/7
localGroup:insert(duck5)

local flag1 =false
local flag2 =false
local flag3 =false
local flag4 =false
local flag5 =false

local function done(event)
 local flag = false
	if event.phase=="ended" then
	title.alpha = 0
	
	if event.x < duck1.x + duck1.contentWidth/2  and event.x > duck1.x - duck1.contentWidth/2     -- 1
     and event.y < duck1.y + duck1.contentHeight/2  and event.y > duck1.y - duck1.contentHeight/2 
	 and flag1 == false and flag2 == false and flag3 == false and flag4 == false and flag5 == false and flag == false
	 then
	   duck1.alpha = 0
	  flag1 = true
	  flag = true   
	  
	  duck5.x = math.random(duck5.contentWidth/2,duck5.x)
	  duck5.y = math.random(title.contentHeight+duck5.contentHeight/2,duck5.y)
	  duck5.rotation= -7
	  
	  local x = duck3.x
	  local y = duck3.y
	  duck3.x,duck3.y = duck4.x,duck4.y
	  duck4.x,duck4.y = x,y
	 end
	 
	 if event.x < duck2.x + duck2.contentWidth/2  and event.x > duck2.x - duck2.contentWidth/2    --4
     and event.y < duck2.y + duck2.contentHeight/2  and event.y > duck2.y - duck2.contentHeight/2 
	 and flag1 == true and flag2 == false and flag3 == true and flag4 == true and flag5 == false and flag == false
	 then
	   duck2.alpha = 0
	  flag2 = true
	  flag = true  
	  
	  duck5.x = math.random(duck5.contentWidth,display.viewableContentWidth-duck5.contentWidth)
	  duck5.y = math.random(duck5.contentHeight,display.viewableContentHeight-duck5.contentHeight)
	  
	 end
	 
	 if event.x < duck3.x + duck3.contentWidth/2  and event.x > duck3.x - duck3.contentWidth/2     --2
     and event.y < duck3.y + duck3.contentHeight/2  and event.y > duck3.y - duck3.contentHeight/2 
	 and flag1 == true and flag2 == false and flag3 == false and flag4 == false and flag5 == false and flag == false
	 then
	   duck3.alpha = 0
	  flag3 = true
	  flag = true  
	   local x = duck2.x
	  local y = duck2.y
	  duck2.x,duck2.y = duck4.x,duck4.y
	  duck4.x,duck4.y = x,y
	  
	  duck5.x= duck3.x
	  duck5.y= duck3.y
	  duck5.rotation= 14
	 end
	 
	 if event.x < duck4.x + duck4.contentWidth/2  and event.x > duck4.x - duck4.contentWidth/2   --3
     and event.y < duck4.y + duck4.contentHeight/2  and event.y > duck4.y - duck4.contentHeight/2 
	 and flag1 == true and flag2 == false and flag3 == true and flag4 == false and flag5 == false and flag == false
	 then
	   duck4.alpha = 0
	  flag4 = true
	  flag = true 	  
	  duck2.x = math.random(duck2.contentWidth/2,display.viewableContentWidth-duck2.contentWidth)
	  duck2.y = math.random(duck2.contentHeight,display.viewableContentHeight-duck2.contentHeight)
	  
	  duck5.x = math.random(duck5.contentWidth,duck5.x )
	  duck5.y = math.random(duck5.contentHeight,duck5.y)
	  
	 end
	 
	 if event.x < duck5.x + duck5.contentWidth/2  and event.x > duck5.x - duck5.contentWidth/2    --4
     and event.y < duck5.y + duck5.contentHeight/2  and event.y > duck5.y - duck5.contentHeight/2 
	 and flag1 == true and flag2 == true and flag3 == true and flag4 == true and flag5 == false and flag == false
	 then
	   duck5.alpha = 0
	  flag5 = true
	  flag = true
      director:changeScene("s1r5l2")	  
	 end
	
	if flag == false and flag5 ~= true then
		print ("fail")
	  director:changeScene("fail")
	end
end
end 


background:addEventListener ( "touch", done )

	return localGroup
end