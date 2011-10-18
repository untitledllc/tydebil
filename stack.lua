module (..., package.seeall)
--- !! стек  оставил в секции для его выноса нужно переписыват часть секции. Запись результата происходит в финальном окне при условии, что результат улучшен.
-- финльный уровень s1r6l51
local globalGroup = display.newGroup()

-- Значение переменных перед началом секции:
checkPointWindow = "s1r1l1" 
checkPointNum = 3
BestTime = 0.0

local test
function LoadBestTime ()

local path = system.pathForFile( "data.txt", system.DocumentsDirectory )

-- io.open opens a file at path. returns nil if no file found
local file = io.open( path, "r" )
if file then
   -- read all contents of file into a string
   for line in io.lines(path) do 
   local n = string.find (line,"BestTime1 =")
   if n ~= nil then
    test = string.sub (line,n+11)
	BestTime = test
	end
   end
   io.close( file )
else
   -- create file b/c it doesn't exist yet
   file = io.open( path, "w" )
   file:write( "BestTime1 = 0.0" )
   io.close( file )
end
end

--- не дописана
function SaveBestTime ()
local path = system.pathForFile( "data.txt", system.DocumentsDirectory )
-- io.open opens a file at path. returns nil if no file found
--local file = io.open( path, "r" )
local file = io.open( path, "r" )
local All="0"
if file then
   -- read all contents of file into a string 
   for line in io.lines(path) do 
   local n = string.find (line,"BestTime1 =")
 
     if n ~= nil then
      test = string.sub (line,n+11)
	  line = "BestTime1 = "..BestTime 
	 end
	  All= All..line.."\n"	
   end  
   io.close( file )
   local file = io.open( path, "w" )
   local cl = string.sub (All,2)
    file:write(cl)
	 io.close( file )
end
end
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
print ("time stop")
	pauseflag=true
	--print (pauseflag)
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