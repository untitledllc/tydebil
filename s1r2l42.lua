

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
	
	
local duck1 = display.newImageRect("image/2/level4/1.jpg",50, 50)
duck1.xScale = 2
duck1.yScale = 2
duck1.x=display.viewableContentWidth*1/5
duck1.y = display.contentHeight/2 + display.viewableContentHeight/2 - duck1.contentHeight*1.1
localGroup:insert(duck1)

local duck2 = display.newImageRect("image/2/level4/3.jpg",100, 90)
duck2.xScale = 2
duck2.yScale = 2
duck2.x=display.viewableContentWidth*3/3 - duck2.contentWidth*0.7
duck2.y=( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*2/7
localGroup:insert(duck2)

local duck3 = display.newImageRect("image/2/level4/5.jpg",100, 110)
duck3.xScale = 0.3
duck3.yScale = 0.3
duck3.x=display.viewableContentWidth*5/5 - duck3.contentWidth
duck3.y= display.contentHeight/2 + display.viewableContentHeight/2 - duck3.contentHeight/2-2
localGroup:insert(duck3)

local function done(event) director:changeScene("s1r2l43") end 


local clockTimer = timer.performWithDelay( 1000, done, 1 )

	return localGroup
end