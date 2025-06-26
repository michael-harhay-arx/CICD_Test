@echo off

rem ------------ Compile Unit Tests ------------
echo [INFO] Building unit tests...

rem Set project and CVI path
set PROJECT_PATH=C:\Users\Michael_Harhay\Desktop\CICD_Test\UnitTests\UnitTests.prj
set CVI_EXE=compile.exe

rem Run CVI to build the project
%CVI_EXE% %PROJECT_PATH%

rem Check for errors
if %errorlevel% neq 0 (
    echo [ERROR] Build failed with error code %errorlevel%.
    exit /b %errorlevel%
) else (
    echo [SUCCESS] Build completed successfully.
)


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
