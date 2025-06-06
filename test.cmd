@echo off

:start
REM Nacitani cisel
set /p prvni=Zadej prvni cislo:
set /p druhy=Zadej druhe cislo:


set /p operace=Jako chces operaci? */+//:

REM pocitani
if %operace%==* (
    set /a nasobeni=%prvni%*%druhy%
goto s)

if %operace%==+ (
    set /a soucet=%prvni%+%druhy%
goto n)

if %operace%==/ (
    set /a deleni=%prvni%/%druhy% 
    goto d)

REM Vypocty
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