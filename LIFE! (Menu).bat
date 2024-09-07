@echo off
color 06
:e 
echo  ooooo        ooooo oooooooooooo oooooooooooo .o. 
echo  `888'        `888' `888'     `8 `888'     `8 888 
echo   888          888   888          888         888 
echo   888          888   888oooo8     888oooo8    Y8P 
echo   888          888   888    "     888    "    `8' 
echo   888       o  888   888          888       o .o. 
echo  o888ooooood8 o888o o888o        o888ooooood8 Y8P 
echo \\===================================================//
echo Ciao! Benvenuto nel mio gioco(LIFE!),Perfavore seleziona una delle (3) seguenti opzioni.
@echo off
:c 
echo =====MENU======================
echo \                             /
echo  \  1. Gioca al gioco        /
echo   \                         /
echo   /     2. Esci             \
echo  /                           \
echo /     3. Informationi         \
echo ===============================
set /p ans="Inserisci Numero:"

if %ans%==1 (
start LIFE!.bat
exit
)
if %ans%==2 (
exit
)
if %ans%==3 (
start https://github.com/Miki104 
start https://www.youtube.com/@Bubumilaniooo
exit
)