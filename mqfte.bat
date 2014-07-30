@ECHO OFF
PATH=%PATH%;C:\Program Files\IBM\WMQFTE\tools\bin
:START
SET /p agent="Enter agent name: " %=%
FOR /F "TOKENS=3 DELIMS=_" %%? IN ("%AGENT%") DO SET DISP=%%?
IF %disp%==P GOTO continue
IF %disp%==D GOTO continue
IF %disp%==Q GOTO continue
ECHO Incorrect entry, try again. 
GOTO start
:CONTINUE 
ftePingAgent -p GIS_FTECOORD_%disp%  -m GIS_FTECOORD_%disp% %AGENT%
PAUSE
