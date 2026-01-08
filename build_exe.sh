#!/bin/bash
# PyInstaller build script for F5 Presser
# This script creates a standalone executable

echo "Building F5 Presser executable..."
echo ""

# Install PyInstaller if not already installed
pip install pyinstaller

# Build the executable
# --onefile: Create a single executable file
# --name: Name of the executable
# --icon: (Optional) Add an icon file if you have one
# --noconsole: Hide console window (use --console if you want to see output)
# --clean: Clean PyInstaller cache before building

pyinstaller --onefile --name "F5-Presser" --clean main.py

echo ""
echo "Build complete! Check the 'dist' folder for F5-Presser"
echo ""
