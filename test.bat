@echo off
echo [INFO] Running unit tests...

rem Change directory
cd /d "C:\Users\Michael_Harhay\Desktop\CICD_Test\UnitTests"

rem Run the test executable and capture its exit code
start /wait UnitTests.exe

if %errorlevel% neq 0 (
    echo [ERROR] Unit tests failed with error code %errorlevel%.
    exit /b %errorlevel%
) else (
    echo [SUCCESS] All unit tests passed.
)