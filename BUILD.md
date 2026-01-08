# 🔨 Building Executable

This guide explains how to build a standalone executable for F5 Presser using PyInstaller.

## 📋 Prerequisites

- Python 3.8 or higher
- All dependencies installed (`pip install -r requirements.txt`)
- PyInstaller (`pip install pyinstaller`)

## 🚀 Quick Build

### Windows (Batch Script)

Simply run:
```bash
build_exe.bat
```

### macOS/Linux (Shell Script)

Make the script executable and run:
```bash
chmod +x build_exe.sh
./build_exe.sh
```

### Manual Build

Run PyInstaller directly:

```bash
pyinstaller --onefile --name "F5-Presser" --clean main.py
```

## ⚙️ Build Options

### Basic Command (Console Window Visible)

```bash
pyinstaller --onefile --name "F5-Presser" main.py
```

### Hide Console Window (No Console)

```bash
pyinstaller --onefile --name "F5-Presser" --noconsole main.py
```

### With Custom Icon

```bash
pyinstaller --onefile --name "F5-Presser" --icon=icon.ico main.py
```

### Advanced Options

```bash
pyinstaller --onefile \
    --name "F5-Presser" \
    --noconsole \
    --clean \
    --add-data "README.md;." \
    main.py
```

## 📦 Build Output

After building, you'll find:
- **Executable**: `dist/F5-Presser.exe` (Windows) or `dist/F5-Presser` (macOS/Linux)
- **Build files**: `build/` folder (can be deleted after building)
- **Spec file**: `F5-Presser.spec` (PyInstaller configuration)

## 🎯 PyInstaller Options Explained

| Option | Description |
|--------|-------------|
| `--onefile` | Creates a single executable file instead of a folder |
| `--name` | Sets the name of the executable |
| `--noconsole` | Hides the console window (use `--console` to show it) |
| `--clean` | Cleans PyInstaller cache before building |
| `--icon` | Adds a custom icon to the executable |
| `--add-data` | Includes additional files in the bundle |

## 🔍 Troubleshooting

### Issue: "ModuleNotFoundError"

If you get import errors, you may need to explicitly include hidden imports:

```bash
pyinstaller --onefile --name "F5-Presser" --hidden-import=pynput.keyboard main.py
```

### Issue: Large Executable Size

The executable includes Python and all dependencies, so it will be large (typically 20-50MB). This is normal for PyInstaller builds.

### Issue: Antivirus False Positives

Some antivirus software may flag PyInstaller executables as suspicious. This is a known false positive. You can:
- Add an exception in your antivirus
- Sign the executable with a code signing certificate
- Use `--debug=all` to see what's being included

## 📝 Custom Build Configuration

For more control, you can create a `.spec` file:

```bash
pyinstaller --name "F5-Presser" main.py
```

Then edit `F5-Presser.spec` and rebuild:

```bash
pyinstaller F5-Presser.spec
```

## 🎨 Adding an Icon

1. Create or download an `.ico` file (Windows) or `.icns` file (macOS)
2. Place it in the project root
3. Build with: `pyinstaller --onefile --name "F5-Presser" --icon=icon.ico main.py`

## ✅ Testing the Executable

After building, test the executable:

1. Navigate to the `dist` folder
2. Run `F5-Presser.exe` (Windows) or `./F5-Presser` (macOS/Linux)
3. Verify it works as expected

## 📚 Additional Resources

- [PyInstaller Documentation](https://pyinstaller.org/)
- [PyInstaller Manual](https://pyinstaller.org/en/stable/usage.html)
