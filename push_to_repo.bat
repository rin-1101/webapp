@echo off
setlocal

cd /d "%~dp0"

where git >nul 2>nul
if errorlevel 1 (
    echo Git is not installed or not on PATH.
    pause
    exit /b 1
)

if not exist .git (
    echo Initializing Git repository...
    git init
)

git add .
git commit -m "Initial commit"

git branch -M main
git remote add origin https://github.com/rin-1101/webapp.git 2>nul

git remote set-url origin https://github.com/rin-1101/webapp.git
git push -u origin main

if errorlevel 1 (
    echo.
    echo Push failed. Make sure GitHub authentication is available.
    pause
)
