module (..., package.seeall)


function new ()
local localGroup = display.newGroup()


stack.checkPointWindow="s1r3check" -- Записали в кучу
print(stack.checkPointWindow)


local background = display.newImage ("image\\bg.png",0  ,0 )  
background.x= display.viewableContentWidth/2
background.y= display.viewableContentHeight/2

background.xScale = display.contentWidth/background.contentWidth 
background.yScale = display.contentHeight/background.contentHeight
localGroup:insert(background)

local pic1 = display.newImage ("image\\checkpoint\\very_good.jpg",0  ,0 )
pic1.xScale = 2
pic1.yScale = 2  
pic1.x= display.viewableContentWidth/2
pic1.y= ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight/2 - pic1.contentHeight 
localGroup:insert(pic1)

local pic2 = display.newImage ("image\\checkpoint\\сheckpoint.png",0  ,0 )  -- почемуто не отображается ???? Бред
pic2.xScale = 2
pic2.yScale = 2
pic2.x= display.viewableContentWidth/2 
pic2.y = ( display.contentHeight - display.viewableContentHeight)/2 + pic2.contentHeight/2 
localGroup:insert(pic2)

local text = display.newText( " " , 0, 0, native.systemFont, 18 )
text.text = "You completed the following round." 
text:setTextColor(0, 0, 0)
text.x= display.viewableContentWidth/2
text.y = pic1.y - text.contentHeight*3/4- pic1.contentHeight/2
localGroup:insert(text)

local textZ = display.newText( " " , 0, 0, native.systemFont, 18 )
textZ.text = "Touch the male to continue..." 
textZ:setTextColor(0, 0, 0)
textZ.x= display.viewableContentWidth/2
textZ.y = ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight/2
localGroup:insert(textZ)

local picb = display.newImage ("image\\checkpoint\\3_14.jpg",0  ,0 )
picb.xScale = 1
picb.yScale =1
picb.x= display.viewableContentWidth*1/5
picb.y = ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*3/4 
localGroup:insert(picb)

local picd = display.newImage ("image\\checkpoint\\3_16.jpg",0  ,0 )
picd.xScale = 1
picd.yScale = 1
picd.x= display.viewableContentWidth*2/5 
picd.y = ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*3/4 
localGroup:insert(picd)
local picf = display.newImage ("image\\checkpoint\\3.13.jpg",0  ,0 )
picf.xScale = 1
picf.yScale = 1
picf.x= display.viewableContentWidth*3/5 
picf.y = ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*3/4 
localGroup:insert(picf)

local bee = display.newImage ("image\\checkpoint\\pie.jpg",0  ,0 )  
bee.xScale = 0.4
bee.yScale = 0.4
bee.x= display.viewableContentWidth*4/5 -- display.contentWidth/2+display.contentWidth*1/6 
bee.y = ( display.contentHeight - display.viewableContentHeight)/2 + display.viewableContentHeight*3/4 --picb.contentHeight/2 +
localGroup:insert(bee)


local function touchbee(event)
if event.phase=="ended" then
	director:changeScene("s1r5l1")
end
end

local function touchother(event)
if event.phase=="ended" then
	director:changeScene("fail")
end
end



bee:addEventListener("touch", touchbee)
picb:addEventListener("touch", touchother)
picf:addEventListener("touch", touchother)
picd:addEventListener("touch", touchother)
return localGroup

end