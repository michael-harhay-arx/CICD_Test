@echo off

rem ------------ Compile Unit Tests ------------
echo [INFO] Building unit tests...

rem Set project and CVI path
set PROJECT_PATH=C:\Users\Michael_Harhay\Desktop\CICD_Test\UnitTests\UnitTests.prj
set CVI_EXE=compile.exe
set EXE_NAME=UnitTests.exe
set BUILD_DIR=C:\Users\Michael_Harhay\Desktop\CICD_Test\UnitTests
set TARGET_DIR=C:\Users\Michael_Harhay\Desktop\CICD_Test


rem Run CVI to build the project
%CVI_EXE% %PROJECT_PATH%

rem Check for errors
if %errorlevel% neq 0 (
    echo [ERROR] Build failed with error code %errorlevel%.
    exit /b %errorlevel%
) else (
    echo [SUCCESS] Build completed successfully.
)


rem ------------ Move Executable ------------
if exist "%BUILD_DIR%\%EXE_NAME%" (
    move /Y "%BUILD_DIR%\%EXE_NAME%" "%TARGET_DIR%\%EXE_NAME%"
    echo [INFO] Moved %EXE_NAME% to %TARGET_DIR%
) else (
    echo [WARNING] %EXE_NAME% not found in build directory.
)
