@echo off
echo [INFO] Starting CVI 2019 build...

rem Set your project path
set PROJECT_PATH=%cd%\CICD_TestProject.prj

rem Set CVI executable path (adjust if installed elsewhere)
set CVI_EXE="C:\Program Files (x86)\National Instruments\CVI2019\compile.exe"

rem Run CVI to build the project
%CVI_EXE% %PROJECT_PATH% -build

rem Check errorlevel and exit appropriately
if %errorlevel% neq 0 (
    echo [ERROR] Build failed with error code %errorlevel%.
    exit /b %errorlevel%
) else (
    echo [SUCCESS] Build completed successfully.
)