@echo off

rem ------------ Run Unit Tests ------------
echo [INFO] Running unit tests...
cd /d "C:\Users\Michael_Harhay\Desktop\CICD_Test\UnitTests"
start /wait UnitTests.exe

rem Check for errors
if %errorlevel% neq 0 (
    echo [ERROR] Unit tests failed with error code %errorlevel%.
    exit /b %errorlevel%
) else (
    echo [SUCCESS] All unit tests passed.
)


rem ---------- Remove Unit Test Executable ----------
echo [INFO] Cleaning up test executable...
set EXE_NAME=UnitTests.exe
set TARGET_DIR=C:\Users\Michael_Harhay\Desktop\CICD_Test

del /f /q "%TARGET_DIR%\%EXE_NAME%"

rem Return test result
exit /b %TEST_FAILED%
