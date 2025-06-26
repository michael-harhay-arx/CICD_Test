@echo off

rem ------------ Build CVI Project ------------
echo [INFO] Starting CVI 2019 build...

rem Set project and CVI path
set PROJECT_PATH=C:\Users\Michael_Harhay\Desktop\CICD_Test\CICD_TestProject.prj
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