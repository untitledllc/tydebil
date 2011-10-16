module(..., package.seeall)

-- олоо
function new ()
local localGroup = display.newGroup()

local w, h = display.contentWidth, display.contentHeight
local background = display.newImage( "image\\bg.png" )
background.xScale = 1
background.yScale = 1
background.alpha = 1
local title = display.newText( "Touch to resume", 0, 0, native.systemFontBold, 26)

local touched = function ( event )
	if event.phase == "ended" and stack.times>0 then
		director:closePopUp()
		stack.timeStart()
	elseif stack.times==0 then director:closePopUp()
end
end



local function initVars ()

localGroup:insert( background )
localGroup:insert( title )
title.x = w/2
title.y = h/2

title:setTextColor( 0,0,0)

background:addEventListener( "touch" , touched )

end

initVars()



return localGroup

end
