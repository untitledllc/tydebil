

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
	
	
local title=display.newText("Р”РѕС‚СЂРѕРЅСЊСЃСЏ РґРѕ СѓС‚РѕРє РІ РїРѕСЂСЏРґРєРµ РІРѕР·СЂР°СЃС‚Р°РЅРёСЏ", 50, 20, native.systemFont, 17 ) -- почему не отображает русс яз.???
title.x= title.contentWidth/2
title.y= (display.contentHeight - display.viewableContentHeight)/2 + title.contentHeight*1/2
	title:setTextColor ( 50, 50, 255)
	localGroup:insert(title)
	
local duck1 = display.newImageRect("image/2/level3/duck1.jpg",50, 50)
duck1.x=display.viewableContentWidth*1/5
duck1.y=display.viewableContentHeight*1/4
localGroup:insert(duck1)

local duck2 = display.newImageRect("image/2/level3/duck2.jpg",100, 90)
duck2.x=display.viewableContentWidth*1/3
duck2.y=display.viewableContentHeight*4/6
localGroup:insert(duck2)

local duck3 = display.newImageRect("image/2/level3/duck3.jpg",100, 110)
duck3.x=display.viewableContentWidth*3/5
duck3.y=display.viewableContentHeight*3/8
localGroup:insert(duck3)

local duck4 = display.newImageRect("image/2/level3/duck4.jpg",150, 150)
duck4.x=display.viewableContentWidth*3/4
duck4.y=display.viewableContentHeight*3/4
localGroup:insert(duck4)

local flag1 =false
local flag2 =false
local flag3 =false
local flag4 =false

local function done(event)
 local flag = false
	if event.phase=="ended" then
	title.alpha = 0
	if event.x < duck1.x + duck1.contentWidth/2  and event.x > duck1.x - duck1.contentWidth/2   
     and event.y < duck1.y + duck1.contentHeight/2  and event.y > duck1.y - duck1.contentHeight/2 
	 and flag1 == false and flag2 == false and flag3 == false and flag4 == false
	 then
	 print("duck1")
	   duck1.alpha = 0
	  flag1 = true
	  flag = true   
	 end
	 
	 if event.x < duck2.x + duck2.contentWidth/2  and event.x > duck2.x - duck2.contentWidth/2    
     and event.y < duck2.y + duck2.contentHeight/2  and event.y > duck2.y - duck2.contentHeight/2 
	 and flag1 == true and flag2 == false and flag3 == false and flag4 == false and flag == false
	 then
	   duck2.alpha = 0
	  flag2 = true
	  flag = true   
	 end
	 
	 if event.x < duck3.x + duck3.contentWidth/2  and event.x > duck3.x - duck3.contentWidth/2    
     and event.y < duck3.y + duck3.contentHeight/2  and event.y > duck3.y - duck3.contentHeight/2 
	 and flag1 == true and flag2 == true and flag3 == false and flag4 == false and flag == false
	 then
	   duck3.alpha = 0
	  flag3 = true
	  flag = true   
	 end
	 
	 if event.x < duck4.x + duck4.contentWidth/2  and event.x > duck4.x - duck4.contentWidth/2   
     and event.y < duck4.y + duck4.contentHeight/2  and event.y > duck4.y - duck4.contentHeight/2 
	 and flag1 == true and flag2 == true and flag3 == true and flag4 == false and flag == false
	 then
	   duck4.alpha = 0
	  flag4 = true
	  flag = true 
      director:changeScene("s1r2l41")	  
	 end
	 
	if flag == false and flag4 ~= true then
		print ("fail")
	  director:changeScene("fail")
	end
end
end 


background:addEventListener ( "touch", done )

	return localGroup
end