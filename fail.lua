module(..., package.seeall)



function new()

local FailGroup = display.newGroup()
stack.textTime.isVisible=false --чтобы не мешало
stack.timeStop()

local background = display.newImage ("image\\bg.png",0  ,0 )  
background.x= display.viewableContentWidth/2--display.contentHeight -200 display.contentWidth
background.y= display.viewableContentHeight/2

background.xScale = display.contentWidth/background.contentWidth 
background.yScale = display.contentHeight/background.contentHeight
FailGroup:insert(background)

local pic1 = display.newImage ("image\\fail\\Fail.jpg",0  ,0 )  
pic1.x= display.viewableContentWidth/2 
pic1.y= display.viewableContentHeight/2 - display.viewableContentHeight*1/5 
pic1.xScale = 4
pic1.yScale = 4
FailGroup:insert(pic1)

local pic2 = display.newImage ("image\\fail\\menu.jpg",0  ,0 )  
pic2.xScale = 1
pic2.yScale = 1
pic2.x= pic2.contentWidth/2
pic2.y= display.contentHeight/2+display.viewableContentHeight/2 - pic2.contentHeight/2 
FailGroup:insert(pic2)

local pic3 = display.newImage ("image\\fail\\Start.jpg",0  ,0 )  
pic3.xScale = 1
pic3.yScale = 1
pic3.x= display.viewableContentWidth/2
pic3.y= display.viewableContentHeight/2 
FailGroup:insert(pic3)

local pic4 = display.newImage ("image\\fail\\Return to Check @ 2.png",0  ,0 )  
pic4.xScale = 1
pic4.yScale = 1
pic4.x= display.viewableContentWidth/2 
pic4.y= display.viewableContentHeight/2 + pic3.contentHeight + pic4.contentHeight

local text1 = display.newText( "Continues remaining: ", 0, 0, native.systemFont, 12 )
text1.text = "Continues remaining: "..stack.checkPointNum
text1:setTextColor(0, 0, 0)
text1.x = display.viewableContentWidth - text1.contentWidth/2 
text1.y = display.contentHeight/2 + display.viewableContentHeight/2 - text1.contentHeight/2 

if stack.checkPointNum <= 0 then pic4.alpha = 0 end -- Нужно!!!
if stack.checkPointWindow =="s1r1l1" then  pic4.alpha = 0 text1.alpha = 0 end -- Нужно!!! 
FailGroup:insert(pic4)
FailGroup:insert(text1)

local function gotomenu(event)
if event.phase=="ended" then
stack.restart()
director:changeScene("menu")
--Как то нужно тут убить кучу... или не тут
end
end

local function gotostart(event)
if event.phase=="ended" then
stack.restart()
director:changeScene("section1")

end
end


local function gotocheck(event)
if event.phase=="ended" then
director:changeScene(stack.checkPointWindow)
stack.timeStart()
--Нужно обсудить насчёт времени. Есть смысл востанавливать время после чекпоинта.
print ("gotocheck")
print ("stack.checkPointWindow")
--if stack.checkPointWindow~="s1r1l1" then
stack.checkPointNum=stack.checkPointNum-1
--end
end
end

pic2:addEventListener("touch", gotomenu)
pic3:addEventListener("touch", gotostart)
pic4:addEventListener("touch", gotocheck)

return FailGroup
end