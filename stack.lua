module (..., package.seeall)

local globalGroup = display.newGroup()

-- Значение переменных перед началом секции:
checkPointWindow = "s1r1l1" 
checkPointNum = 3




-------- Times ----------------- 
local pauseflag=true -- Будет проставлен true. Фальсить нужно будет при переходе на 1 уровень.


times=0 --нужно занулять перед началом сессии

textTime =  display.newText(times, 20, 300, native.systemFont, 12 )
globalGroup:insert(textTime)
textTime:setTextColor(0, 0, 0)
textTime.isVisible=false --Чтобы не было видно в экране секции. Видимость делаем в функции timeStart()

function tik_tak()
if pauseflag==false then
times = times + 0.1 
times = math.ceil(times*10)/10 -- обрабатываем возожную накапливаемую ошибку, (0,99999)
--print(pauseflag)
textTime.text=times
end
end

local clockTimer = timer.performWithDelay( 100, tik_tak, -1 )




------- Times close ---------------

function timeStop()
	pauseflag=true
   textTime.isVisible=false
end

--Функция для запуска таймера. Используем для возврата из паузы.
function timeStart()
	pauseflag=false
  textTime.isVisible=true
end


-----  Pause function list ---

 function Pause (event)
 if event.type == "applicationSuspend"  then -- вышли на пауззу,(например позвонили) при этом приложение продолжает работать и счетчик продолжает отсчитывать
 pauseflag = true
 director:openPopUp("paused")

 end
 end
Runtime:addEventListener( "system", Pause )

-----  Pause function list close

------ Restart function

function restart()
checkPointWindow = "s1r1l1" 
checkPointNum = 3
textTime.isVisible=false
times=0
end

---------Restart close