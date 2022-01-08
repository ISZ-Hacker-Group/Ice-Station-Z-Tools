@echo off

SLEEP 1
echo ======================================
SLEEP 0.3
echo Hello this is test program.
SLEEP 1
echo ======================================
@pause
SLEEP 0.3
cls

SLEEP 0.3
echo ======================================
SLEEP 0.8

:y
echo Put in your sd card location and id0 number.
SLEEP 1.2
echo ======================================
set /P homework=

SLEEP 0.5
echo ======================================
SLEEP 0.2
echo Is this correct? %homework%
echo ======================================

SLEEP 0.3

:choice
set /P c=If it was incorrect please select Y. [Y/N]:
if /I "%c%" EQU "N" goto :n
if /I "%c%" EQU "n" goto :n
if /I "%c%" EQU "Y" goto :y
if /I "%c%" EQU "y" goto :y
goto :choice

:n
cls 
SLEEP 0.3
echo ======================================
SLEEP 0.2
echo Copying a file.
SLEEP 1
echo ======================================
SLEEP 0.3
xcopy /Y "%CD%\HOLY FUCK.cia" "%CD%\thing"
SLEEP 0.3

echo ======================================
echo success
SLEEP 0.3
echo %homework%
SLEEP 0.2
@pause
exit