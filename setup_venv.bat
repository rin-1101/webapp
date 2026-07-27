@echo off
setlocal

cd /d "%~dp0"

if exist .venv (
    echo Virtual environment already exists at .venv
    goto :end
)

echo Creating virtual environment in %CD%\.venv...
py -3 -m venv .venv

if errorlevel 1 (
    echo Failed to create virtual environment.
    echo Install Python and try again.
    pause
    exit /b 1
)

echo Virtual environment created successfully.
echo To activate it, run:
echo .venv\Scripts\activate.bat

echo To run the app, use:
echo run_app.bat

:end
pause
