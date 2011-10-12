

------              Section 1 Old School l
--level 2

module (..., package.seeall )



function new()
	local localGroup=display.newGroup ( )
	local background=display.newImage("image/bg.png")
	background.x= display.viewableContentWidth/2
background.y=display.contentHeight/2
background.xScale = display.viewableContentWidth/background.contentWidth 
background.yScale = display.viewableContentHeight/background.contentHeight
	localGroup:insert(background)

local title=display.newText("Где ты сейчас?", 40, 50, native.systemFont, 15 )
title.x= (display.contentWidth-display.viewableContentWidth)/2 + title.contentWidth/2
title.y= (display.contentHeight-display.viewableContentHeight)/2 + title.contentHeight
local title2=display.newText("Теперь дотронься до солнца. Не бойся оно не горячее.", 40, 50, native.systemFont, 15 )
local title3=display.newText("Дотронься до оставшейся планеты.", 40, 50, native.systemFont, 15 )
title2.x= (display.contentWidth-display.viewableContentWidth)/2 + title2.contentWidth/2
title2.y= (display.contentHeight-display.viewableContentHeight)/2 + title2.contentHeight
title3.x= (display.contentWidth-display.viewableContentWidth)/2 + title3.contentWidth/2
title3.y= (display.contentHeight-display.viewableContentHeight)/2 + title3.contentHeight
	title:setTextColor ( 50, 50, 255)
	title2:setTextColor ( 50, 50, 255)
	title3:setTextColor ( 50, 50, 255)
	localGroup:insert(title)
	localGroup:insert(title2)
	localGroup:insert(title3)
	title2.isVisible=false
	title3.isVisible=false
	
local earth = display.newImage("image/level2/earth.jpg",100, 100)
earth.xScale = display.viewableContentHeight/(4*earth.contentHeight)
earth.yScale = display.viewableContentHeight/(4*earth.contentHeight)
earth.x=100
earth.y=150
localGroup:insert(earth)
	
local sun = display.newImage ("image/level2/sun.jpg", 100, 100 )
sun.xScale = display.viewableContentHeight/(4*sun.contentHeight)
sun.yScale = display.viewableContentHeight/(4*sun.contentHeight)
sun.x=220
sun.y=150
localGroup:insert(sun)

local up = display.newImage ("image/level2/up.jpg", 100, 100)
up.xScale = display.viewableContentHeight/(4*up.contentHeight)
up.yScale = display.viewableContentHeight/(4*up.contentHeight)
up.x=340
up.y=150
localGroup:insert(up)

local duck=display.newImage ( "image/level2/duck.jpg", 100, 100 )
duck.xScale = display.viewableContentHeight/(4*duck.contentHeight)
duck.yScale = display.viewableContentHeight/(4*duck.contentHeight)
duck.x=220
duck.y=250
localGroup:insert(duck)


	
	
local function touch (event)
local flag = false
if event.phase == "ended" then
  if (event.x - earth.x)^2 + (event.y - earth.y)^2 < (earth.contentWidth/2)^2    -- земля
  and flag == false
   then
   title.isVisible=false
	title2.isVisible=true
	earth.isVisible=false
	flag = true
   end
 
 if event.x < sun.x + sun.contentWidth and event.x > sun.x - sun.contentWidth   -- солнце
  and event.y < sun.y + sun.contentHeight and event.y > sun.y - sun.contentHeight
  and flag == false and earth.isVisible==false and sun.isVisible==true
   then
    title2.isVisible=false
	title3.isVisible=true
	sun.isVisible=false
	flag = true
   end
 
 if event.x < up.x + up.contentWidth and event.x > up.x - up.contentWidth   -- планета
  and event.y < up.y + up.contentHeight and event.y > up.y - up.contentHeight
  and flag == false and earth.isVisible==false
   then
	flag = true
	director:changeScene("s1r1l3")	
    end
 
 if flag == false then print("fail")  director:changeScene("fail") end
 
 
end
end
	
	
	--earth:addEventListener ( "touch", pressearth )
	--sun:addEventListener ( "touch", presssun )
	--up:addEventListener ( "touch", pressup )
	--duck:addEventListener("touch", pressduck)
	background:addEventListener("touch", touch)
	---title:addEventListener("touch", pressduck)
	--title2:addEventListener("touch", pressduck)
	--title3:addEventListener("touch", pressduck)
	return localGroup
end