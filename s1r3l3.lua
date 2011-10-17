

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
	
	
local title=display.newText("–°–ª–æ–º–∞–π —è–π—Ü–∞ –ø–æ–ø–æ—Ä—è–¥–∫—É —Å–ª–µ–≤–∞ –Ω–∞–ø—Ä–∞–≤–æ.", 40, 50, native.systemFont, 17 )
title.x= title.contentWidth/2
title.y= (display.contentHeight - display.viewableContentHeight)/2 + title.contentHeight*1/2
	title:setTextColor ( 50, 50, 255)
	localGroup:insert(title)
	
require "sprite"


local sheet1 = sprite.newSpriteSheet( "/image/level4/spriteegg.PNG", 120, 84)

local spriteSet1 = sprite.newSpriteSet(sheet1, 1, 2)



local instance1 = sprite.newSprite( spriteSet1 )
instance1.x = display.viewableContentWidth*1/4
instance1.y = display.contentHeight*1/3
localGroup:insert(instance1)

local instance2 = sprite.newSprite( spriteSet1 )
instance2.x = display.viewableContentWidth*2/4
instance2.y = display.contentHeight*1/3
sprite.add( spriteSet1, "sprite2", 1, 2,300, 1 )
instance2:prepare("sprite2")
localGroup:insert(instance2)


local instance3 = sprite.newSprite( spriteSet1 )
instance3.x = display.viewableContentWidth*3/4
instance3.y =display.contentHeight*1/3
sprite.add( spriteSet1, "sprite3", 1, 2,300, 1 )
instance3:prepare("sprite3")
localGroup:insert(instance3)

local instance4 = sprite.newSprite( spriteSet1 )
instance4.x = display.viewableContentWidth*2/4 -5
instance4.y = display.contentHeight*2/3
sprite.add( spriteSet1, "sprite4", 1, 2,300, 1 )
instance4:prepare("sprite4")
localGroup:insert(instance4)

	local target1=false
	local target2=false
	local target3=false
    local target4=false

local function touch(event)
local flag = false
if event.phase=="ended"  then
title.alpha = 0
  if (event.x - instance1.x)^2 + (event.y - instance1.y)^2 < (instance1.contentHeight/2)^2 
  and flag == false and target1==false and target2==false and target3==false and target4==false
  then
  
  flag = true
  sprite.add( spriteSet1, "sprite1", 1, 2,300, 1 )
	instance1:prepare("sprite1")
	instance1:play()
	target1=true
   end

   if (event.x - instance4.x)^2 + (event.y - instance4.y)^2 < (instance4.contentHeight/2)^2 
  and flag == false and target1==true and target2==false and target3==false and target4==false
  then
   
    flag = true
    sprite.add( spriteSet1, "sprite3", 1, 2,300, 1 )
	instance4:prepare("sprite4")
	instance4:play()
	target4=true
  end 
   
   if (event.x - instance2.x)^2 + (event.y - instance2.y)^2 < (instance2.contentHeight/2)^2 
  and flag == false and target1==true and target2==false and target3==false and target4== true
  then
  
  flag = true
  sprite.add( spriteSet1, "sprite2", 1, 2,300, 1 )
	instance2:prepare("sprite2")
	instance2:play()
	target2=true
  end
   
   if (event.x - instance3.x)^2 + (event.y - instance3.y)^2 < (instance3.contentHeight/2)^2 
  and flag == false and target1==true and target2==true and target3==false and target4== true
  then
   
    flag = true
    sprite.add( spriteSet1, "sprite3", 1, 2,300, 1 )
	instance3:prepare("sprite3")
	instance3:play()
	target3=true
	director:changeScene("s1r3l4")
  end 
  
  if flag == false and target3~=true then print("fail") director:changeScene("fail") end
  
end
end

--instance1:addEventListener ( "touch", press1 )
--instance2:addEventListener ( "touch", press2 )
--instance3:addEventListener ( "touch", press3 )
background:addEventListener ( "touch", touch)	--  Ò ÌËÏ Ú‚ÓËÚÒˇ ÂËÒ¸¸
	
	

	return localGroup
end