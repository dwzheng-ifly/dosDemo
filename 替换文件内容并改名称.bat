rem Ŀ��  
rem ��source�е��ļ�app.json  �е�version 
rem ��strOld ������ strNew  ����ֵ��des��  ��������


rem setlocal enabledelayedexpansion    ����ȫ�ֱ���  ��Ϊdos������ if�� ����ֱ������ ���±���ֱ�������
setlocal enabledelayedexpansion
set strOld=V4.0.2.1033
set strNew=V4.0.2.1036
rem "delims=" �ĺ�����ȡ��Ĭ�ϵķָ��������Ի�����ϵ������հ��������� "tokens=*" ��ʾ��ȡ���ϵ��������ݣ����ǻ�������׵����пո�
for /f "delims=" %%i in (source\app.json) do (
           set "tmp=%%i"
          set "tmp=!tmp:%strOld%=%strNew%!"
	      echo !tmp!>> app.json
    )
 )
rem  setlocal ��	!tmp! ��ʾtmp����    ���� setlocal ���  ��%tmp%
 move /y "app.json" "des" 
 rem   ��ѡ�� 
 rem /c�����б� /m��ʾ���� /dĬ��ѡ�� /t�ȴ�����   /d ����� /tͬʱ����

 choice  /c YN /m "������" /d N /t 10

 if %ERRORLEVEL%==1 goto  yes 
 if %ERRORLEVEL%==2 goto  No 
 :yes
 rename "des\app.json" "renameApp.json"
 echo  "���"
 pause
 
 :No
 echo  "��ɵ��ǲ�����rename"

 
