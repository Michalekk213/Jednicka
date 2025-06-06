@echo off

:start
REM Nacitani cisel
set /p prvni=Zadej prvni cislo:
set /p druhy=Zadej druhe cislo:


set /p operace=Jako chces operaci? */+//

REM pocitani
if %operace%==* (
    set /a nasobeni=%prvni%*%druhy%)
echo Vysledek je %nasobeni%
goto start

if %operace%==+ (
    set /a soucet=%prvni%+%druhy%)
echo Vysledek je %soucet%
goto start

if %operace%==/ (
    set /a deleni=%prvni%/%druhy%)
echo Vysledek je %deleni%
goto start

pause