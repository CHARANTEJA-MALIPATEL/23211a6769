@echo off
echo ========================================
echo Campus Notification System - Startup
echo ========================================
echo.

cd Campus-Evaluation-FS\notification-app-fe

echo Checking if dependencies are installed...
if not exist node_modules (
    echo Installing dependencies...
    call npm install
    echo.
) else (
    echo Dependencies already installed!
    echo.
)

echo Starting development server...
echo The app will open at http://localhost:3000
echo.
echo Press Ctrl+C to stop the server
echo ========================================
echo.

call npm run dev
