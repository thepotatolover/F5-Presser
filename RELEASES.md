# 🚀 Release Process

This document explains how releases are created for F5 Presser.

## 📋 Automatic Releases

Releases are automatically created when you push a git tag starting with `v` (e.g., `v1.0.0`).

### Creating a Release

1. **Update the version** in relevant files (if needed)
2. **Update CHANGELOG.md** with the new version and changes
3. **Commit your changes:**
   ```bash
   git add .
   git commit -m "chore: prepare release v1.0.0"
   ```
4. **Create and push a tag:**
   ```bash
   git tag -a v1.0.0 -m "Release v1.0.0"
   git push origin v1.0.0
   ```
5. **GitHub Actions will automatically:**
   - Build executables for Windows, macOS, and Linux
   - Create a GitHub release
   - Attach all executables to the release
   - Generate release notes

## 🔨 Manual Release (via GitHub Actions)

You can also trigger a release manually:

1. Go to **Actions** tab in GitHub
2. Select **Build & Release Executable** workflow
3. Click **Run workflow**
4. Fill in:
   - **Version**: e.g., `1.0.0`
   - **Build Windows**: ✅ (default)
   - **Build macOS**: Optional
   - **Build Linux**: Optional
5. Click **Run workflow**

## 📦 What Gets Built

The workflow builds standalone executables using PyInstaller:

- **Windows**: Single `.exe` file (no console window)
- **macOS**: Single executable binary
- **Linux**: Single executable binary

All executables are self-contained and don't require Python to be installed.

## 🏷️ Version Format

We follow [Semantic Versioning](https://semver.org/):
- **MAJOR.MINOR.PATCH** (e.g., `1.0.0`)
- Tags must start with `v` (e.g., `v1.0.0`)

## 📝 Release Notes

Release notes are automatically generated from:
- Version number
- Available executables
- Link to CHANGELOG.md

You can customize release notes by editing the workflow file or manually editing the release after creation.

## 🔍 Checking Build Status

1. Go to **Actions** tab
2. Find the **Build & Release Executable** workflow run
3. Check individual build jobs for each platform
4. View logs if builds fail

## 🐛 Troubleshooting

### Build Fails

- Check the workflow logs in the **Actions** tab
- Ensure all dependencies are listed in `requirements.txt`
- Verify PyInstaller can build your script locally

### Release Not Created

- Ensure the tag format is correct (`v*.*.*`)
- Check that the workflow completed successfully
- Verify GitHub Actions are enabled for the repository

### Executable Not Working

- Test locally first: `pyinstaller --onefile main.py`
- Check for missing dependencies
- Review PyInstaller documentation for platform-specific issues

## 📚 Related Documentation

- [BUILD.md](BUILD.md) - Local build instructions
- [CHANGELOG.md](CHANGELOG.md) - Version history
- [CONTRIBUTING.md](CONTRIBUTING.md) - Contribution guidelines
