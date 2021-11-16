@echo off
cls
color F
chcp 65001 > nul
mode con cols=80 lines=18
title MINGW64:/C:/Users/%username%
set hrs=%time:~0,2%
set mns=%time:~3,2%
set scs=%time:~6,2%
set mls=%time:~9,2%
set nmt=%time:~0,8%
echo.
Call :Color 8 " WARNING : This is not the real Git. "
echo.
Echo.
goto main
:Color
SetLocal EnableExtensions EnableDelayedExpansion
Set "Text=%~2"
If Not Defined Text (Set Text=^")
Subst `: "!Temp!" >Nul &`: &Cd \
If Not Exist `.7 (
Echo(|(Pause >Nul &Findstr "^" >`)
Set /P "=." >>` <Nul
For /F "delims=;" %%# In (
'"Prompt $H;&For %%_ In (_) Do Rem"') Do (
Set /P "=%%#%%#%%#" <Nul >`.3
Set /P "=%%#%%#%%#%%#%%#" <Nul >`.5
Set /P "=%%#%%#%%#%%#%%#%%#%%#" <Nul >`.7))
Set /P "LF=" <` &Set "LF=!LF:~0,1!"
For %%# in ("!LF!") Do For %%_ In (
\ / :) Do Set "Text=!Text:%%_=%%~#%%_%%~#!"
For /F delims^=^ eol^= %%# in ("!Text!") Do (
If #==#! SetLocal DisableDelayedExpansion
If \==%%# (Findstr /A:%~1 . \` Nul
Type `.3) Else If /==%%# (Findstr /A:%~1 . /.\` Nul
Type `.5) Else (Echo %%#\..\`>`.dat
Findstr /F:`.dat /A:%~1 .
Type `.7))
If "\n"=="%~3" (Echo()
goto :Eof
:main

Call :Color a  "%username%@21T002526 "
Call :Color d "MINGW64"
Call :Color 6 " ~ "
Call :Color b "(master) "
echo.
set /p oeoe=$ 
if %oeoe% == yes goto yes
if %oeoe% == git goto gitsecret
if %oeoe% == help goto helpgit
if %oeoe% == exit MSG * Hope you enjoyed & exit
if %oeoe% == history goto find
if %oeoe% == dir/s goto dir
Call :Color f "bash: %oeoe%: command not found"
echo.
echo.
goto main
:yes
echo y
goto yes
:gitsecret
cls
echo Hey, this is not the real git, only a clone that i tried to do :D
pause > nul
cls
goto main
:helpgit
cls
color F
Call :Color b "yes "
Call :Color 4 "~ "
Call :Color 6 "Cool thing "
echo.
Call :Color b "help "
Call :Color 4 "~ "
Call :Color 6 "Help for the "
Call :Color 8 "fake "
Call :Color 6 "Git interface"
echo.
Call :Color b "history "
Call :Color 4 "~ "
Call :Color 6 "Find files in your local system"
echo.
pause > nul
goto main
:find
cls
color 4
tree C:/Users/%username%
echo.
pause > nul

color F
cls
goto main
:dir
echo.
dir/s
echo.
goto main
