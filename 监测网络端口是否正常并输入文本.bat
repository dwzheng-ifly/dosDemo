rem  ping地址
rem ping sz3.tencent.com >> des\a.txt

rem  监测网络端口状态
rem
rem | 前面命令输出结果作为后面命令的输入内容
rem || 前面命令执行失败的时候才执行后面的命令
rem & 前面命令执行后接着执行后面的命令
rem && 前面命令执行成功了才执行后面的命令

rem  创建文件方法 1.copy con  des\b.txt  可以出入内容 ctrl+z  再回车结束 
rem   2 echo ...... > A.txt 重定向输出，此时创建文本文件A.txt;  echo ...... >>A.txt 向A.txt文件中追加信息.....;  
rem   3.type nul>filename 可建立一个空文件中，在批处理中经常用。copy nul A.txt 可建立一个空文件中，在批处理中经常用，也可清空一个文件。

rem  为啥复制要换行
IF EXIST  des\b.txt (del des\b.txt
  type nul> des\b.txt ) ELSE  (  copy con  des\b.txt)
netstat  -a -n > des\b.txt
type b.txt |find '13060'&& echo "教学成功启动"
pause