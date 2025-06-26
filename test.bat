@echo off
rem Compile unit tests
echo [INFO] Building unit tests...

rem Adjust this if you installed CVI to a different location
set CVI_PATH="C:\Program Files (x86)\National Instruments\CVI2019"
set SRC_FILE=unit_test.c
set EXE_FILE=unit_test.exe

rem Change to script's directory
cd /d %~dp0

rem Compile and link into EXE
%CVI_PATH%\bin\compile.exe %SRC_FILE% -o %EXE_FILE%

if %errorlevel% neq 0 (
    echo [ERROR] Compilation failed.
    exit /b %errorlevel%
)


rem Run unit tests
echo [INFO] Running unit tests...
cd /d "C:\Users\Michael_Harhay\Desktop\CICD_Test\UnitTests"
start /wait UnitTests.exe

if %errorlevel% neq 0 (
    echo [ERROR] Unit tests failed with error code %errorlevel%.
    exit /b %errorlevel%
) else (
    echo [SUCCESS] All unit tests passed.
)