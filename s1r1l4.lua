

------              Section 1 Old School l
--level 3

module (..., package.seeall )



function new()
	local localGroup=display.newGroup ( )
	
	
	
local background=display.newImage("image/bg.png")
background.x= display.viewableContentWidth/2
    background.y=display.contentHeight/2
    background.xScale = display.viewableContentWidth/background.contentWidth 
    background.yScale = display.viewableContentHeight/background.contentHeight
localGroup:insert(background)
	
	
local title=display.newText("Сломай яйца с лева направо.", 40, 50, native.systemFont, 17 )
title.x= title.contentWidth/2
title.y= (display.contentHeight - display.viewableContentHeight)/2 + title.contentHeight*1/2
	title:setTextColor ( 50, 50, 255)
	localGroup:insert(title)
	
require "sprite"


local sheet1 = sprite.newSpriteSheet( "/image/level4/spriteegg.PNG", 120, 84)

local spriteSet1 = sprite.newSpriteSet(sheet1, 1, 2)



local instance1 = sprite.newSprite( spriteSet1 )

instance1.x = display.viewableContentWidth*1/4

instance1.y = display.contentHeight/2


localGroup:insert(instance1)

local instance2 = sprite.newSprite( spriteSet1 )

instance2.x = display.viewableContentWidth*2/4

instance2.y = display.contentHeight/2

sprite.add( spriteSet1, "sprite2", 1, 2,300, 1 )
instance2:prepare("sprite2")

localGroup:insert(instance2)


local instance3 = sprite.newSprite( spriteSet1 )

instance3.x = display.viewableContentWidth*3/4

instance3.y =display.contentHeight/2

sprite.add( spriteSet1, "sprite3", 1, 2,300, 1 )
instance3:prepare("sprite3")

localGroup:insert(instance3)

	local target1=false
	local target2=false
	local target3=false


local function touch(event)
local flag = false
if event.phase=="ended"  then

  if (event.x - instance1.x)^2 + (event.y - instance1.y)^2 < (instance1.contentHeight/2)^2 
  and flag == false and target1==false and target2==false and target3==false
  then
  print ("1")
  flag = true
  sprite.add( spriteSet1, "sprite1", 1, 2,300, 1 )
	instance1:prepare("sprite1")
	instance1:play()
	target1=true
	--print need delete, naxui'! need only debug
	print("instance1"..instance1.sequence) -- return name sprite "sprite1"
	print("instance2:"..instance2.sequence) -- "sprite2"
   end

   if (event.x - instance2.x)^2 + (event.y - instance2.y)^2 < (instance2.contentHeight/2)^2 
  and flag == false and target1==true and target2==false and target3==false
  then
  print ("2")
  flag = true
  sprite.add( spriteSet1, "sprite2", 1, 2,300, 1 )
	instance2:prepare("sprite2")
	instance2:play()
	target2=true
  end
   
   if (event.x - instance3.x)^2 + (event.y - instance3.y)^2 < (instance3.contentHeight/2)^2 
  and flag == false and target1==true and target2==true and target3==false
  then
    print ("3")
    flag = true
    sprite.add( spriteSet1, "sprite3", 1, 2,300, 1 )
	instance3:prepare("sprite3")
	instance3:play()
	--target3=true
	director:changeScene("s1r1l5")
  end 
  
  if flag == false then print("fail") director:changeScene("fail") end
  
end
end

--instance1:addEventListener ( "touch", press1 )
--instance2:addEventListener ( "touch", press2 )
--instance3:addEventListener ( "touch", press3 )
background:addEventListener ( "touch", touch)	--  с ним творится ерисьь
	
	

	return localGroup
end