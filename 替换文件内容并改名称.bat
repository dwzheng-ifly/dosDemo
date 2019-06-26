rem 目的  
rem 将source中的文件app.json  中的version 
rem 从strOld 更换成 strNew  并赋值到des中  并重命名


rem setlocal enabledelayedexpansion    设置全局变量  因为dos中遇到 if等 都会直接跳过 导致变量直接输出了
setlocal enabledelayedexpansion
set strOld=V4.0.2.1033
set strNew=V4.0.2.1036
rem "delims=" 的含义是取消默认的分隔符，所以会把行上的内容照搬下来，而 "tokens=*" 表示获取行上的所有内容，但是会忽略行首的所有空格。
for /f "delims=" %%i in (source\app.json) do (
           set "tmp=%%i"
          set "tmp=!tmp:%strOld%=%strNew%!"
	      echo !tmp!>> app.json
    )
 )
rem  setlocal 用	!tmp! 表示tmp变量    不是 setlocal 情况  用%tmp%
 move /y "app.json" "des" 
 rem   可选择 
 rem /c按键列表 /m提示内容 /d默认选择 /t等待秒数   /d 必须和 /t同时出现

 choice  /c YN /m "请输入" /d N /t 10

 if %ERRORLEVEL%==1 goto  yes 
 if %ERRORLEVEL%==2 goto  No 
 :yes
 rename "des\app.json" "renameApp.json"
 echo  "完成"
 pause
 
 :No
 echo  "完成但是不进行rename"

 
