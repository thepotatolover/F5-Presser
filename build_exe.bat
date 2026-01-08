@echo off
REM PyInstaller build script for F5 Presser
REM This script creates a standalone executable

echo Building F5 Presser executable...
echo.

REM Install PyInstaller if not already installed
pip install pyinstaller

REM Build the executable
REM --onefile: Create a single executable file
REM --name: Name of the executable
REM --icon: (Optional) Add an icon file if you have one
REM --noconsole: Hide console window (use --console if you want to see output)
REM --clean: Clean PyInstaller cache before building

pyinstaller --onefile --name "F5-Presser" --clean main.py

echo.
echo Build complete! Check the 'dist' folder for F5-Presser.exe
echo.
pause
