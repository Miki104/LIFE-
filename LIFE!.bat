@echo off
color 06
set /a euro=0
set /a Cibo_prezzo=50
set /a Acqua_prezzo=15
set /a fame=100
set /a sete=100
set /a esperienza=0
set /a lavoro=50
set /a casa_prezzo=100000
set /a villa_prezzo=1000000
set /a macchina_prezzo=50000

:game
cls
echo  ooooo        ooooo oooooooooooo oooooooooooo .o. 
echo  `888'        `888' `888'     `8 `888'     `8 888 
echo   888          888   888          888         888 
echo   888          888   888oooo8     888oooo8    Y8P 
echo   888          888   888    "     888    "    `8' 
echo   888       o  888   888          888       o .o. 
echo  o888ooooood8 o888o o888o        o888ooooood8 Y8P 
echo \\===================================================//--(By Miki104)
echo.
echo Hai %euro% Euro.
echo Premi E per andare a lavorare e incassare i tuoi %lavoro% Euro giornalieri.
echo Premi M per visualizzare il marketplace.
echo.
echo Fame: %fame%%
echo Sete: %sete%%
echo Esperienza: %esperienza%
echo.

choice /c em /n
if %errorlevel% equ 1 (
    if %esperienza% geq 1000 (
        set /a euro+=150
        set /a lavoro=150
        echo Hai cambiato lavoro! Ora guadagni %lavoro% Euro giornalieri.
    ) else (
        set /a euro+=%lavoro%
    )
    goto game
) else if %errorlevel% equ 2 (
    goto marketplace
) else (
    echo Invalid input. Try again!
    pause > nul
    goto game
)

timeout /t 300 /nobreak > nul
set /a fame-=10
set /a sete-=10
goto game

:marketplace
cls
echo --- Marketplace ---
echo.
echo Oggetto 1: %Acqua_prezzo% Euro - Acqua
echo Oggetto 2: %Cibo_prezzo% Euro - Cibo
echo Oggetto 3: %casa_prezzo% Euro - Casa
echo Oggetto 4: %villa_prezzo% Euro - Villa
echo Oggetto 5: %macchina_prezzo% Euro - Macchina
echo.
echo Premi 1 per acquistare dell'Acqua.
echo Premi 2 per acquistare del cibo.
echo Premi 3 per acquistare una casa.
echo Premi 4 per acquistare una villa.
echo Premi 5 per acquistare una macchina.
echo Premi B per tornare indietro.
echo.
echo Fame: %fame%%
echo Sete: %sete%%
echo Esperienza: %esperienza%
echo.

choice /c 12345b /n
if %errorlevel% equ 1 (
    if %euro% geq %Acqua_prezzo% (
        set /a euro-=%Acqua_prezzo%
        set /a sete+=20
		if %sete% geq 80 (
            set /a sete=100
        ) else (
            set /a sete+=20
        )
        set /a esperienza+=10
        echo Hai acquistato dell'acqua!
    ) else (
        echo Non hai abbastanza Euro per acquistare dell'acqua.
    )
    goto marketplace
) else if %errorlevel% equ 2 (
    if %euro% geq %Cibo_prezzo% (
        set /a euro-=%Cibo_prezzo%
        set /a fame+=20
		if %fame% geq 80 (
            set /a fame=100
        ) else (
            set /a fame+=20
        )
        set /a esperienza+=10
        echo Hai acquistato del cibo!
    ) else (
        echo Non hai abbastanza Euro per acquistare del cibo.
    )
    goto marketplace
) else if %errorlevel% equ 3 (
    if %euro% geq %casa_prezzo% (
        set /a euro-=%casa_prezzo%
        set /a esperienza+=10000
        echo Hai acquistato una casa nuova!
    ) else (
        echo Non hai abbastanza Euro per acquistare una casa nuova.
    )
    goto marketplace
) else if %errorlevel% equ 4 (
    if %euro% geq %villa_prezzo% (
        set /a euro-=%villa_prezzo%
        set /a esperienza+=100000
        echo Hai acquistato una villa!
	)	
		) else if %errorlevel% equ 5 (
    if %euro% geq %macchina_prezzo% (
        set /a euro-=%macchina_prezzo%
        set /a esperienza+=1000
        echo Hai acquistato un'auto!
        goto marketplace
    ) else (
        echo Non hai abbastanza Euro per acquistare una macchina.
        goto marketplace
    )
) else if %errorlevel% equ 6 (
    goto game
)