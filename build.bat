@echo off
echo [INFO] Starting CVI 2019 build...

rem Set your project path
set PROJECT_PATH=C:\Users\Michael_Harhay\Desktop\CICD_Test\CICD_TestProject.prj

rem Set CVI executable path (adjust if installed elsewhere)
set CVI_EXE=compile.exe

rem Run CVI to build the project
%CVI_EXE% %PROJECT_PATH%

rem Check errorlevel and exit appropriately
if %errorlevel% neq 0 (
    echo [ERROR] Build failed with error code %errorlevel%.
    exit /b %errorlevel%
) else (
    echo [SUCCESS] Build completed successfully.
)