

module (..., package.seeall )

function new()
	local localGroup=display.newGroup ( )	
	
local background=display.newImage("image/bg.png")
    background.x= display.viewableContentWidth/2
    background.y=display.contentHeight/2
    background.xScale = display.viewableContentWidth/background.contentWidth 
    background.yScale = display.viewableContentHeight/background.contentHeight
localGroup:insert(background)	

local title = display.newText( "Дотронься до объектов в следующем порядке:",40, 50, native.systemFont, 18 )
title.x= title.contentWidth/2
title.y= (display.contentHeight - display.viewableContentHeight)/2 + title.contentHeight*1/2
title:setTextColor ( 50, 50, 255)
localGroup:insert(title)


local title1 = display.newText( " bee \n  blue button \n carrots \n compass \n computer \n diamond \n duck \n Earth \n egg \n letter.",40, 50, native.systemFont, 17 )
title1.x= display.viewableContentWidth/2
title1.y= title.y + title1.contentHeight*1/2 + title.contentHeight*2/2
title1:setTextColor ( 50, 50, 255)
localGroup:insert(title1)



local function BadEnd() director:changeScene("s1r6l43") end

timer.performWithDelay( 4000, BadEnd, 1 )



	return localGroup
end