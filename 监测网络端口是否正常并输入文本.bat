rem  ping��ַ
rem ping sz3.tencent.com >> des\a.txt

rem  �������˿�״̬
rem
rem | ǰ��������������Ϊ�����������������
rem || ǰ������ִ��ʧ�ܵ�ʱ���ִ�к��������
rem & ǰ������ִ�к����ִ�к��������
rem && ǰ������ִ�гɹ��˲�ִ�к��������

rem  �����ļ����� 1.copy con  des\b.txt  ���Գ������� ctrl+z  �ٻس����� 
rem   2 echo ...... > A.txt �ض����������ʱ�����ı��ļ�A.txt;  echo ...... >>A.txt ��A.txt�ļ���׷����Ϣ.....;  
rem   3.type nul>filename �ɽ���һ�����ļ��У����������о����á�copy nul A.txt �ɽ���һ�����ļ��У����������о����ã�Ҳ�����һ���ļ���

rem  Ϊɶ����Ҫ����
IF EXIST  des\b.txt (del des\b.txt
  type nul> des\b.txt ) ELSE  (  copy con  des\b.txt)
netstat  -a -n > des\b.txt
type b.txt |find '13060'&& echo "��ѧ�ɹ�����"
pause