

------              Section 1 Old School l
-- level 1




module(..., package.seeall)
local stack = require ("stack")--test

function new()
	local localGroup = display.newGroup()
	--> This is how we start every single file or "screen" in our folder, except for main.lua
	-- and director.lua
	--> director.lua is NEVER modified, while only one line in main.lua changes, described in that file
------------------------------------------------------------------------------
------------------------------------------------------------------------------
local background = display.newImage ("image\\bg.jpg")
localGroup:insert(background)
--> This sets the background
local title = display.newText( "Нажми красную кнопку для продолжения.",40, 50, native.systemFont, 15 )
title:setTextColor ( 50, 50, 255)
localGroup:insert(title)

--- Times----
--local textTime1 =  display.newText( stack.times, 0, 0, native.systemFont, 12 )
--localGroup:insert(textTime1)

--[[   --------back button this--------------

local backbutton = display.newImage ("image\\backbutton.png")
backbutton.x = 160
backbutton.y = 350
localGroup:insert(backbutton)
--> This places our "back" button

local function pressBack (event)
if event.phase == "ended" then
director:changeScene ("menu")
end
end


backbutton:addEventListener ("touch", pressBack)
--> This adds the function and listener to the "back" button

------------back button-----------------]]

local buttonred=display.newImage("image/level1/red.png")
buttonred.x=math.random(20,  450)
buttonred.y=math.random(20, 300)
localGroup:insert(buttonred)

local buttonblue=display.newImage("image/level1/blue.png")
buttonblue.x=math.random(20, 450)
buttonblue.y=math.random(20, 300)
localGroup:insert(buttonblue)


local buttongreen=display.newImage("image/level1/green.png")
buttongreen.x=math.random(20, 450)
buttongreen.y=math.random(20, 300)
localGroup:insert(buttongreen)

local buttonorange=display.newImage("image/level1/orange.png")
buttonorange.x=math.random(20, 460)
buttonorange.y=math.random(20,  300)
localGroup:insert(buttonorange)



local function pressred(event)
if event.phase == "ended" then
	director:changeScene("s1r1l2")
--local prints=stack.printeg() --test.
end
end


local function pressother(event)
if event.phase == "ended" then
	local textObject = display.newText( "Красную!!!", 100, 400, native.systemFont, 30 )
	textObject:setTextColor ( 255, 50, 50)
	localGroup:insert(textObject)
	stack.pausef()
	print(stack.pauseflag)
end
end


buttonred:addEventListener ( "touch", pressred )

buttonblue:addEventListener ( "touch", pressother )
buttongreen:addEventListener ( "touch", pressother )
buttonorange:addEventListener ( "touch", pressother )

------------------------------------------------------------------------------
------------------------------------------------------------------------------
return localGroup
end
--> This is how we end every file except for director and main, as mentioned in my first comment