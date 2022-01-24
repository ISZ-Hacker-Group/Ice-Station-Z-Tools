@echo off
echo Basic System Info:
wmic computersystem get model,name,manufacturer,systemtype
echo.
echo Graphics Card:
wmic path win32_VideoController get name, videoarchitecture, deviceID, adapterram, DriverVersion
echo.
echo Processor:
wmic cpu get caption, deviceid, name, numberofcores, maxclockspeed
@pause