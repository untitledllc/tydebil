module(..., package.seeall)local stack=require("stack")--local section = display.newGroup()--local bestT = 0.0function new()local ssection = display.newGroup()local bestT = 0.0stack.LoadBestTime ()print ( display.viewableContentHeight,display.viewableContentWidth)local function TouchS(event)if event.phase == "ended" thendirector:changeScene("s1r1l1")stack.timeStart()endendlocal function TouchB(event)  if event.phase == "ended" then   director:changeScene("menu") -- ������� � ������ ����  endend-----------------����� ���  ������������-------------------local goto = display.newText( "Go to: ", 70, 50, native.systemFont, 16 )goto:setTextColor(250, 256, 240)be = "s1r2l1" --!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!goto.text= "Go to:"..belocal function go(event)if event.phase == "ended" thendirector:changeScene(be)stack.timeStart()goto.alpha =0endend--goto.isVisible=false stackgoto:addEventListener( "touch", go )-----------------����� ���  ������������-------------------local background = display.newImage ("image\\bg.png",0  ,0 )  background.x= display.contentWidth/2--display.contentHeight -200 display.contentWidthbackground.y= display.contentHeight/2background.xScale = display.viewableContentWidth/background.contentWidth background.yScale = display.viewableContentHeight/background.contentHeightssection:insert(background) start = display.newImage ("image\\section1\\start.jpg",0  ,0 )   start.x= display.viewableContentWidth/2 -- display.viewableContentWidth*1/8 start.y= display.viewableContentHeight/2+start.contentHeight*1--0.5  --start.rotation= 90 start.xScale = 1 start.yScale = 1 start:addEventListener( "touch", TouchS )ssection:insert( start)local Besttime = display.newText( "Best time: ", 0, 0, native.systemFont, 19 )bestT = stack.BestTimeBesttime.text= "Best time:"..bestTBesttime:setTextColor(30, 90, 30)--Besttime.rotation =90Besttime.x = display.viewableContentWidth/2 --display.contentWidth/2+start.contentWidth*2 - text2.contentWidth/2Besttime.y = display.viewableContentHeight/2 - Besttime.contentHeight-- start.contentHeight*0.5 + text2.contentHeight*2/4--- start.contentHeight*1.3 - text2.contentHeight*2/3ssection:insert(Besttime)local text2 = display.newText( "Late Registration", 0, 0, native.systemFont, 30 )text2:setTextColor(255, 0, 0)--text2.rotation =90text2.x = display.viewableContentWidth/2text2.y = Besttime.y - Besttime.contentHeight*3/4 - text2.contentHeight*2/4 --display.viewableContentHeight/2ssection:insert(text2)local text1 = display.newText( "Section 1", 0, 0, native.systemFont, 22 )text1:setTextColor(255, 0, 0)--text1.rotation =90text1.x = display.viewableContentWidth/2--+start.contentWidth*2+ text2.contentWidthtext1.y = text2.y - text2.contentHeight*3/4 - text1.contentHeight*2/4 --display.viewableContentHeight/2 - start.contentHeight*0.5 - text2.contentHeight*2/4ssection:insert(text1) back = display.newImage ("image\\section1\\back.jpg",0  ,0 )   back.xScale = 0.7 back.yScale = 0.7 back.x= back.contentWidth/2 back.y= display.contentHeight/2 + display.viewableContentHeight/2 - back.contentHeight/2-- back.rotation= 90 back:addEventListener( "touch", TouchB )ssection:insert( back)return ssectionend