@echo off
color 2
echo ===============================
echo   LIMPIEZA DE ARCHIVOS TEMP
echo ===============================
echo.

echo Cerrando el Explorador de Windows...
taskkill /f /im explorer.exe >nul 2>&1

echo Eliminando archivos temporales del usuario...
del /s /f /q "%temp%\*" >nul 2>&1
rd /s /q "%temp%" >nul 2>&1

echo Eliminando archivos temporales de Windows...
del /s /f /q "C:\Windows\Temp\*" >nul 2>&1
rd /s /q "C:\Windows\Temp" >nul 2>&1

echo Eliminando archivos temporales de Prefetch...
del /s /f /q "C:\Windows\Prefetch\*" >nul 2>&1

echo Reiniciando el Explorador...
start explorer.exe

echo.
echo Limpieza completada.
echo Reiniciando 


pause