

------              Section 1 Old School l
-- level 1




module(..., package.seeall)

function new()
	local localGroup = display.newGroup()

local background = display.newImage ("image\\bg.png")
background.x= display.viewableContentWidth/2
background.y=display.contentHeight/2
background.xScale = display.viewableContentWidth/background.contentWidth 
background.yScale = display.viewableContentHeight/background.contentHeight

localGroup:insert(background)

local title = display.newText( "Дотронься сначала до оранжевой кнопки, пототм до зеленой дважды,\n и потом до синей.",40, 50, native.systemFont, 13 )
title:setTextColor ( 168, 0, 0)
title.x= title.contentWidth/2
title.y= (display.contentHeight - display.viewableContentHeight)/2 + title.contentHeight*1/2
localGroup:insert(title)


local buttonred=display.newImage("image/level1/red.png")
buttonred.x=math.random(buttonred.contentWidth/2,  display.viewableContentWidth/2-buttonred.contentWidth/2)
buttonred.y=math.random(title.contentHeight/2+buttonred.contentHeight, (display.contentHeight - display.viewableContentHeight)/2+display.viewableContentHeight/2 - buttonred.contentWidth/2 )
localGroup:insert(buttonred)

local buttonblue=display.newImage("image/level1/blue.png")
buttonblue.x=math.random(buttonblue.contentWidth/2,  display.viewableContentWidth/2-buttonblue.contentWidth/2)
buttonblue.y=math.random(title.contentHeight/2+buttonblue.contentHeight+display.viewableContentHeight/2, (display.contentHeight - display.viewableContentHeight)/2+display.viewableContentHeight - buttonblue.contentWidth/2)
localGroup:insert(buttonblue)


local buttongreen=display.newImage("image/level1/green.png")
buttongreen.x=math.random(buttongreen.contentWidth/2+display.viewableContentWidth/2,  display.viewableContentWidth-buttongreen.contentWidth/2)
buttongreen.y=math.random(title.contentHeight/2+buttongreen.contentHeight, (display.contentHeight - display.viewableContentHeight)/2+display.viewableContentHeight/2 - buttongreen.contentWidth/2)
localGroup:insert(buttongreen)

local buttonorange=display.newImage("image/level1/orange.png")
buttonorange.x=math.random(buttonorange.contentWidth/2+display.viewableContentWidth/2,  display.viewableContentWidth-buttonorange.contentWidth/2)
buttonorange.y=math.random(title.contentHeight/2+buttonorange.contentHeight+display.viewableContentHeight/2, (display.contentHeight - display.viewableContentHeight)/2+display.viewableContentHeight - buttonorange.contentWidth/2)
localGroup:insert(buttonorange)

local Forange = false
local Fgreen = 0


local function touch (event)
print (event.phase)
local flag = false
if event.phase=="ended" then
   title.alpha=0 
    if event.x < buttonorange.x+buttonorange.contentWidth/2 and event.x > buttonorange.x-buttonorange.contentWidth/2
       and event.y < buttonorange.y+buttonorange.contentHeight/2 and event.y > buttonorange.y-buttonorange.contentHeight/2
	   and Fgreen == 0 and Forange == false  and flag == false
    then
	print ("orange")
	  Forange = true
	  flag = true

    end
	
	if event.x < buttongreen.x+buttongreen.contentWidth/2 and event.x > buttongreen.x-buttongreen.contentWidth/2
       and event.y < buttongreen.y+buttongreen.contentHeight/2 and event.y > buttongreen.y-buttongreen.contentHeight/2
	   and (Fgreen == 0 or Fgreen == 1) and Forange == true and flag == false
    then 
	
	  if Fgreen == 0 then
	
	    buttonred.x=buttongreen.x
	    buttonred.y=buttongreen.y
	    buttongreen.x = math.random(buttongreen.contentWidth/2,buttonred.x -buttongreen.contentWidth )
	    buttongreen.y = math.random(title.y,buttonred.y - buttongreen.contentWidth)
		
		local smolx, bigx = buttonblue.contentWidth/2,buttonblue.x 
		local smoly, bigy = buttonblue.contentHeight/2,buttonblue.y
		
		if  display.viewableContentWidth - buttonblue.x  >  buttonblue.x - buttonblue.contentWidth/2
		 then smolx, bigx =  buttonblue.x, display.viewableContentWidth end 
		if  display.viewableContentHeight - buttonblue.y >  buttonblue.y - buttonblue.contentHeight/2
		 then  smoly, bigy =  buttonblue.y, display.viewableContentHeight  end
		
		buttonblue.x = math.random(smolx, bigx )
		buttonblue.y = math.random(smoly, bigy)
	  end
		print ("grean")
	  Fgreen = Fgreen +1
	  flag = true
    end
	
	if event.x < buttonblue.x+buttonblue.contentWidth/2 and event.x > buttonblue.x-buttonblue.contentWidth/2
       and event.y < buttonblue.y+buttonblue.contentHeight/2 and event.y > buttonblue.y-buttonblue.contentHeight/2
	   and Fgreen == 2 and Forange == true and flag == false
    then
	 print ("blue")
	  director:changeScene("s1r2l2")
	  flag = true
    end
	
	if flag == false then print ("false - background") director:changeScene("fail") end

end
end

background:addEventListener ( "touch", touch )
------------------------------------------------------------------------------
------------------------------------------------------------------------------
return localGroup
end