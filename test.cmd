@echo off
REM Tady jsem si zadal aby se mi po kazdem vypoctu program opakoval
:start
REM Nacitani cisel
set /p prvni=Zadej prvni cislo:
set /p druhy=Zadej druhe cislo:

REM zadal jsem si promenou operace aby si uzivatel vybral jakou chce
set /p operace=Jako chces operaci? */+//:

REM pocitani, po kazdem vypoctu mam goto a nekam aby to fungovalo
if %operace%==* (
    set /a nasobeni=%prvni%*%druhy%
goto s)

if %operace%==+ (
    set /a soucet=%prvni%+%druhy%
goto n)

if %operace%==/ (
    set /a deleni=%prvni%/%druhy% 
    goto d)

REM Vypocty, Tady se nam ukazou vypocty operace ktere si uzivatel zvolil
:s
echo Vysledek je %nasobeni%
goto start
:n
echo Vysledek je %soucet%
goto start
:d
echo Vysledek je %deleni%
goto start


pause