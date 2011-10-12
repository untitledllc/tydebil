

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
	
	
local title=display.newText("Touch the green button of 5 times", 50, 20, native.systemFont, 19 ) 
title.x= title.contentWidth/2
title.y= (display.contentHeight - display.viewableContentHeight)/2 + title.contentHeight*1/2
title:setTextColor ( 50, 50, 255)
localGroup:insert(title)

local button = display.newImage("image/3/level1/button.png")
button.xScale = display.viewableContentWidth/(5 * button.contentWidth) *(display.viewableContentWidth/display.viewableContentHeight)
button.yScale = display.viewableContentHeight/(5 * button.contentHeight) *2
button.x=display.viewableContentWidth*1/2
button.y=( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight/2
localGroup:insert(button)

local flag = false -- стоп флаг
local function  TheEndStop() flag = true end   -- меняем стоп флаг 
local function TheEnd()
if flag == false then director:changeScene("s1r3l2") end -- если стоп флаг фолсе, то след левл
end

local num =0

local function done(event)
if event.phase=="ended" then 
title.alpha = 0
if event.x < button.x + button.contentWidth/2 and event.x > button.x - button.contentWidth/2   
     and event.y < button.y + button.contentHeight/2 and event.y > button.y - button.contentHeight/2
	 and num<5
	 then
	  num=num+1
	   if num == 5 then  local clockTimer = timer.performWithDelay( 5000, TheEnd, 1 )  end
   else 
   timer.performWithDelay( 1, TheEndStop, 1 ) -- "останавливаем" счетчик
   director:changeScene("fail") 
   end
   
end

end 


background:addEventListener ( "touch", done )

	return localGroup
end