

------              Section 1 Old School l
-- level 5




module(..., package.seeall)

function new()
	local localGroup = display.newGroup()
	--> This is how we start every single file or "screen" in our folder, except for main.lua
	-- and director.lua
	--> director.lua is NEVER modified, while only one line in main.lua changes, described in that file
------------------------------------------------------------------------------
------------------------------------------------------------------------------
local background = display.newImage ("image\\bg.png")
    background.x= display.viewableContentWidth/2
    background.y=display.contentHeight/2
    background.xScale = display.viewableContentWidth/background.contentWidth 
    background.yScale = display.viewableContentHeight/background.contentHeight
localGroup:insert(background)
--> This sets the background
local title = display.newText( "Нажмите сначала красную кнопку\n потом синюю и зеленую.",40, 50, native.systemFont, 15 )
title.x= title.contentWidth/2
title.y= (display.contentHeight - display.viewableContentHeight)/2 + title.contentHeight*1/2
title:setTextColor ( 50, 50, 255)
localGroup:insert(title)



local buttonred=display.newImage("image/level1/red.png")
buttonred.x=math.random(buttonred.contentWidth/2,  display.viewableContentWidth/2-buttonred.contentWidth/2)
buttonred.y=math.random(title.y+title.contentHeight/2+buttonred.contentWidth/2,  display.contentHeight/2  - buttonred.contentWidth/2)
localGroup:insert(buttonred)

local buttonblue=display.newImage("image/level1/blue.png")
buttonblue.x=math.random(buttonblue.contentWidth/2,  display.viewableContentWidth/2-buttonblue.contentWidth/2)
buttonblue.y=math.random(title.y+title.contentHeight/2+display.viewableContentHeight/2,  display.contentHeight/2 +display.viewableContentHeight/2 - buttonblue.contentWidth/2)
localGroup:insert(buttonblue)


local buttongreen=display.newImage("image/level1/green.png")
buttongreen.x=math.random(buttongreen.contentWidth/2+display.viewableContentWidth/2,  display.viewableContentWidth-buttongreen.contentWidth/2)
buttongreen.y=math.random(title.y+title.contentHeight/2+buttongreen.contentWidth/2, display.contentHeight/2  - buttongreen.contentWidth/2)
localGroup:insert(buttongreen)


local buttonorange=display.newImage("image/level1/orange.png")
buttonorange.x=math.random(buttonorange.contentWidth/2+display.viewableContentWidth/2,  display.viewableContentWidth-buttonorange.contentWidth/2)
buttonorange.y=math.random(title.y+title.contentHeight/2+display.viewableContentHeight/2, display.contentHeight/2 +display.viewableContentHeight/2 - buttonorange.contentWidth/2)
localGroup:insert(buttonorange)

	local red=false
	local blue=false
	local green=false

local function touch (event)
local flag = false
if event.phase == "ended" or "cancelled" ==event.phase then

  if event.x < buttonred.x + buttonred.contentWidth and event.x > buttonred.x - buttonred.contentWidth   -- солнце
    and event.y < buttonred.y + buttonred.contentHeight and event.y > buttonred.y - buttonred.contentHeight
     and flag == false and red==false and blue==false and green==false 
	 then
	 red=true
	 flag = true
	 end

  if event.x < buttonblue.x + buttonblue.contentWidth and event.x > buttonblue.x - buttonblue.contentWidth   -- солнце
    and event.y < buttonblue.y + buttonblue.contentHeight and event.y > buttonblue.y - buttonblue.contentHeight
     and flag == false and red==true and blue==false and green==false 
	 then
	 blue=true
	 flag = true
	 end
	 
  if event.x < buttongreen.x + buttongreen.contentWidth and event.x > buttongreen.x -buttongreen.contentWidth   -- солнце
    and event.y < buttongreen.y + buttongreen.contentHeight and event.y > buttongreen.y - buttongreen.contentHeight
     and flag == false and red==true and blue==true and green==false then
	green=true
	director:changeScene("s1r1l6")
	 flag = true
	 end
	 
   if flag == false then print("fail") director:changeScene("fail") end
end
end


background:addEventListener ( "touch", touch)


------------------------------------------------------------------------------
------------------------------------------------------------------------------
return localGroup
end
--> This is how we end every file except for director and main, as mentioned in my first comment