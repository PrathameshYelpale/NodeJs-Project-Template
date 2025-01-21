@echo off

:: Define the Git repository URL for the Node.js template
SET NODE_TEMPLATE_REPO_URL=https://github.com/PrathameshYelpale/NodeJs_Project_Template

:: Arguments
SET PROJECT_NAME=%1
SET NEW_PROJECT_PATH=%2

:: Validate the project name (only lowercase letters, numbers, _ and - allowed)
echo %PROJECT_NAME%| findstr /R "^[a-z0-9_-]*$" >nul
IF %ERRORLEVEL% NEQ 0 (
    echo Error: Project name can only contain lowercase letters, numbers, underscores (_), and hyphens (-).
    exit /b 1
)

IF "%PROJECT_NAME%"=="" (
    echo Usage: setup_node_project.bat ^<project_name^> ^<optional_project_path^>
    exit /b 1
)

:: Set default project path if not provided
IF "%NEW_PROJECT_PATH%"=="" SET NEW_PROJECT_PATH=%cd%

:: Navigate to the specified project directory
cd "%NEW_PROJECT_PATH%" || exit /b

:: Clone the template repository
echo Cloning Node.js template repository from "%NODE_TEMPLATE_REPO_URL%"...
git clone %NODE_TEMPLATE_REPO_URL% %PROJECT_NAME%
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to clone the Node.js template repository. Exiting...
    exit /b 1
)

:: Navigate to the new project directory
cd "%PROJECT_NAME%"

:: Remove the template's .git directory to avoid conflicts with the new project
rmdir /s /q .git

:: Remove the setup script itself (create_nodejs_project.bat)
if exist "create_nodejs_project.bat" del /q "create_nodejs_project.bat"

:: Replace placeholder variables in project files
echo Customizing project files with project name "%PROJECT_NAME%"...
FOR /R %%f IN (*.js *.json *.md) DO (
    findstr /C:"nodejs_template" "%%f" >nul
    IF %ERRORLEVEL% EQU 0 (
        powershell -Command "(Get-Content '%%f') -replace 'nodejs_template', '%PROJECT_NAME%' | Set-Content '%%f'"
        echo Updated %%f
    )
)

:: Install dependencies
echo Installing dependencies...
npm install
IF %ERRORLEVEL% NEQ 0 (
    echo Failed to install dependencies. Exiting...
    exit /b 1
)

:: Final message
echo Node.js project "%PROJECT_NAME%" created successfully with dependencies installed.
pause