@echo off
color 17

echo Hello World!
SLEEP 0.4
echo.
xcopy /y "%CD%\Hello.bat" "%CD%\Tests"
echo.
echo Success in copying the file.
echo.
echo "%CD%\Tests"
SLEEP 0.4
echo.

:choice
set /P c=One or Two [1/2]:
if /I "%c%" EQU "1" goto :1
if /I "%c%" EQU "2" goto :2
if /I "%c%" EQU "one" goto :1
if /I "%c%" EQU "two" goto :2
echo.
echo.
goto :choice

:1
cls 
echo.
echo Hello you have select number one.
echo.
@pause
cls
echo.
goto :3

:2
cls 
echo.
echo Hello you have select number two.
echo.
set dirF=Hello world.
@pause
cls
echo.
(
    echo %dirF%
) > dirf.sav

< dirf.sav (
  set /p dirF=
)
@pause
echo.
echo %dirF%
echo.
@pause
cls
goto :3



:3
@pause
exit