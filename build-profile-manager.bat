@echo off
mkdir Bin\Release\Profiles
cd Bin\Release\Profiles
mkdir saved
:start
cd saved
cls
title Quasar Profile Manager v1.0
echo - Profiles: 
echo.
dir /b
echo.
echo.
echo - Commands:
echo.
echo save	Saves current build config
echo del	Delete an existing build config
echo credits	Show credits.
echo (Or select a profile to use from the list above)
echo.
echo.
set /p "profile=Select: "
if "%profile%"=="save" goto save
if "%profile%"=="del" goto del
if "%profile%"=="credits" goto credits
xcopy "%profile%" "..\Default.xml" /y
pause >nul
goto start

:save
set /p "name=Save As: "
cd ..
xcopy Default.xml "saved\%name%"
pause >nul
goto start

:del
set /p del=Delete Config: 
del %del%
pause >nul
goto start

:credits
cls
echo.
echo  This program was created by YSCH Group.
echo   GitHub: https://github.com/YSCHGroup
echo.
pause >nul
goto start