

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
	

local pic3= display.newImage("image/fail/Start.jpg")
pic3.xScale = 1
pic3.yScale = 1
pic3.x= display.viewableContentWidth/2
pic3.y= display.contentHeight/2 
localGroup:insert(pic3)

local flag = false -- стоп флаг
local function  TheEndStop() flag = true end   -- меняем стоп флаг 
local function TheEnd()
if flag == false then director:changeScene("s1r5l3") end -- если стоп флаг фолсе, то след левл
end

local clockTimer = timer.performWithDelay( 8000, TheEnd, 1 ) 
local function done(event)
if event.phase=="ended" then 	 
	  timer.performWithDelay( 1, TheEndStop, 1 ) -- "останавливаем" счетчик
       director:changeScene("fail") 
end
end 


background:addEventListener ( "touch", done )

	return localGroup
end