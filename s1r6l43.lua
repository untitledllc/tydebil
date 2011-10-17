


module (..., package.seeall )



function new()
	local localGroup=display.newGroup ( )	
	
local background=display.newImage("image/bg.png")
  background.x= display.viewableContentWidth/2
    background.y=display.contentHeight/2
    background.xScale = display.viewableContentWidth/background.contentWidth 
    background.yScale = display.viewableContentHeight/background.contentHeight
localGroup:insert(background)
	
local title=display.newText("", 50, 20, native.systemFont, 17 ) 
title.x= display.contentWidth/2
title.y= (display.contentHeight - display.viewableContentHeight)/2 + title.contentHeight*1/2
title:setTextColor ( 50, 50, 255)
localGroup:insert(title)

local pic1 = display.newImageRect("image/6/level4/bee.jpg",50, 50)
pic1.xScale = 1
pic1.yScale = 1
pic1.x = pic1.contentWidth*2/2 
pic1.y = pic1.contentHeight/2+title.contentHeight*1/2
pic1.isVisible = true
localGroup:insert(pic1)	
	
local pic2 = display.newImageRect("image/6/level4/b.jpg",50, 50)
pic2.xScale = 1
pic2.yScale = 1
pic2.x = display.viewableContentWidth*2/2 - pic2.contentWidth*3/2
pic2.y = display.contentHeight/2 + display.viewableContentHeight/2 - pic2.contentHeight*4/4
pic2.isVisible = true
localGroup:insert(pic2)	
	
local pic3 = display.newImageRect("image/6/level4/carrot.jpg",50, 50)
pic3.xScale = 1
pic3.yScale = 1
pic3.x = display.viewableContentWidth*2/2 - pic3.contentWidth*3/4
pic3.y = pic3.contentHeight*3/4+title.contentHeight*1/2
pic3.isVisible = true
localGroup:insert(pic3)

local pic4 = display.newImageRect("image/6/level4/compass.jpg",50, 50)
pic4.xScale = 1
pic4.yScale = 1
pic4.x =  pic4.contentWidth*128/100
pic4.y = display.contentHeight/2 + display.viewableContentHeight/2 - pic4.contentHeight*5/4
pic4.isVisible = true
localGroup:insert(pic4)

local pic5 = display.newImageRect("image/6/level4/PC.jpg",50, 50)
pic5.xScale = 1
pic5.yScale = 1
pic5.x = display.viewableContentWidth*2/5 - pic5.contentWidth*100/100
pic5.y = display.contentHeight/2+  pic5.contentHeight*131/100
pic5.isVisible = true
localGroup:insert(pic5)

local pic6 = display.newImageRect("image/6/level4/sk1.jpg",50, 50)
pic6.xScale = 1
pic6.yScale = 1
pic6.x = display.viewableContentWidth*2/5 - pic6.contentWidth*15/10
pic6.y = display.contentHeight/2 - pic6.contentHeight*89/100
pic6.isVisible = true
localGroup:insert(pic6)

local pic7 = display.newImageRect("image/6/level4/kr.jpg",50, 50)
pic7.xScale = 1
pic7.yScale = 1
pic7.x = display.viewableContentWidth*1/2 +50
pic7.y = display.contentHeight/2 -  pic7.contentHeight*150/100
pic7.isVisible = true
localGroup:insert(pic7)

local pic8 = display.newImageRect("image/6/level4/earth.jpg",50, 50)
pic8.xScale = 1
pic8.yScale = 1
pic8.x = display.viewableContentWidth*2/3 - pic8.contentWidth*64/100
pic8.y = display.contentHeight/2 + pic8.contentHeight*150/100
pic8.isVisible = true
localGroup:insert(pic8)

local pic9 = display.newImageRect("image/6/level4/egg.png",50, 50)
pic9.xScale = 1
pic9.yScale = 1
pic9.x = display.viewableContentWidth*3/5 + pic9.contentWidth*134/100
pic9.y = display.contentHeight/2 - pic9.contentHeight*60/100
pic9.isVisible = true
localGroup:insert(pic9)

local pic10 = display.newImageRect("image/6/level4/mal.jpg",50, 50)
pic10.xScale = 1
pic10.yScale = 1
pic10.x = display.viewableContentWidth*1/2 
pic10.y = display.contentHeight/2
pic10.isVisible = true
localGroup:insert(pic10)

flag = false
num = 1

function touch1 (event)
if flag == false then
   flag = true
   if event.phase == "ended" then
       if num == 1 then 
	       num =  num + 1 
		   pic1.isVisible = false
		else
        director:changeScene("fail")
        end		
   end
end
end

function touch2 (event)
if flag == false then
   flag = true
   if event.phase == "ended" then
       if num == 2 then 
	       num =  num + 1 
		   pic2.isVisible = false
		else
        director:changeScene("fail")
        end		
   end
end
end

function touch3 (event)
if flag == false then
   flag = true
   if event.phase == "ended" then
       if num == 3 then 
	       num =  num + 1 
		   pic3.isVisible = false
		else
        director:changeScene("fail")
        end		
   end
end
end

function touch4 (event)
if flag == false then
   flag = true
   if event.phase == "ended" then
       if num == 4 then 
	       num =  num + 1 
		   pic4.isVisible = false
		else
        director:changeScene("fail")
        end		
   end
end
end

function touch5 (event)
if flag == false then
   flag = true
   if event.phase == "ended" then
       if num == 5 then 
	       num =  num + 1 
		   pic5.isVisible = false
		else
        director:changeScene("fail")
        end		
   end
end
end

function touch6 (event)
if flag == false then
   flag = true
   if event.phase == "ended" then
       if num == 6 then 
	       num =  num + 1 
		   pic6.isVisible = false
		else
        director:changeScene("fail")
        end		
   end
end
end

function touch7 (event)
if flag == false then
   flag = true
   if event.phase == "ended" then
       if num == 7 then 
	       num =  num + 1 
		   pic7.isVisible = false
		else
        director:changeScene("fail")
        end		
   end
end
end

function touch8 (event)
if flag == false then
   flag = true
   if event.phase == "ended" then
       if num == 8 then 
	       num =  num + 1 
		   pic8.isVisible = false
		else
        director:changeScene("fail")
        end		
   end
end
end

function touch9 (event)
if flag == false then
   flag = true
   if event.phase == "ended" then
       if num == 9 then 
	       num =  num + 1 
		   pic9.isVisible = false
		else
        director:changeScene("fail")
        end		
   end
end
end

function touch10 (event)
if flag == false then
   flag = true
   if event.phase == "ended" then
       if num == 10 then 
	       num =  num + 1 
		   pic10.isVisible = false
		   director:changeScene("s1r6l51")
		else
        director:changeScene("fail")
        end		
   end
end
end

function bad(event)
if flag == false then
director:changeScene("fail")
end
flag = false
end
pic1:addEventListener ( "touch", touch1 )
pic2:addEventListener ( "touch", touch2 )
pic3:addEventListener ( "touch", touch3 )
pic4:addEventListener ( "touch", touch4 )
pic5:addEventListener ( "touch", touch5 )
pic6:addEventListener ( "touch", touch6 )
pic7:addEventListener ( "touch", touch7 )
pic8:addEventListener ( "touch", touch8 )
pic9:addEventListener ( "touch", touch9 )
pic10:addEventListener ( "touch", touch10 )
background:addEventListener ( "touch", bad )
--title1:addEventListener ( "touch", done1 )

	return localGroup
end