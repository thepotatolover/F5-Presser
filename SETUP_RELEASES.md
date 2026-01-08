# 🚀 Setting Up Automatic Releases

This guide will walk you through setting up automatic release building and publishing for F5 Presser.

## ✅ Prerequisites

The workflow is already configured! You just need to:

1. ✅ Ensure the workflow file exists: `.github/workflows/build-release.yml`
2. ✅ Ensure GitHub Actions are enabled for your repository
3. ✅ Have write access to the repository

## 🔧 Step 1: Enable GitHub Actions (If Not Already Enabled)

1. Go to your repository on GitHub: `https://github.com/thepotatolover/F5-Presser`
2. Click on the **Settings** tab
3. In the left sidebar, click **Actions** → **General**
4. Under **Workflow permissions**, select:
   - ✅ **Read and write permissions**
   - ✅ **Allow GitHub Actions to create and approve pull requests**
5. Click **Save**

## 📝 Step 2: Commit and Push the Workflow File

If you haven't already committed the workflow file:

```bash
# Add the workflow file
git add .github/workflows/build-release.yml

# Commit it
git commit -m "feat: add automatic release workflow"

# Push to GitHub
git push origin main
```

## 🎯 Step 3: Create Your First Release

### Option A: Automatic Release (Recommended)

This is the easiest way - just push a git tag:

```bash
# 1. Make sure all your changes are committed
git add .
git commit -m "chore: prepare release v1.0.0"

# 2. Create an annotated tag (use semantic versioning)
git tag -a v1.0.0 -m "Release v1.0.0"

# 3. Push the tag to GitHub
git push origin v1.0.0
```

**That's it!** GitHub Actions will automatically:
- ✅ Detect the tag push
- ✅ Build Windows executable (always)
- ✅ Build macOS executable (if enabled)
- ✅ Build Linux executable (if enabled)
- ✅ Create a GitHub release
- ✅ Upload all executables
- ✅ Generate release notes

### Option B: Manual Release via GitHub UI

1. Go to your repository on GitHub
2. Click the **Actions** tab
3. In the left sidebar, select **🔨 Build & Release Executable**
4. Click **Run workflow** (top right)
5. Fill in the form:
   - **Version**: `1.0.0` (or your version number)
   - **Build Windows**: ✅ (checked by default)
   - **Build macOS**: ☐ (optional)
   - **Build Linux**: ☐ (optional)
6. Click **Run workflow**

## 📊 Step 4: Monitor the Build

1. Go to the **Actions** tab
2. You'll see a new workflow run appear
3. Click on it to see the progress
4. You can watch each step:
   - 🔨 Build Executables (Windows, macOS, Linux)
   - 🚀 Create Release

## ✅ Step 5: Verify the Release

Once the workflow completes:

1. Go to your repository homepage
2. Click on **Releases** (right sidebar, or go to `https://github.com/thepotatolover/F5-Presser/releases`)
3. You should see your new release with:
   - Release title: "Release v1.0.0"
   - Release notes (auto-generated)
   - Downloadable executables attached

## 🎨 Customizing Release Behavior

### Build Only Windows (Default)

By default, only Windows builds automatically. To build all platforms on tag push, edit `.github/workflows/build-release.yml`:

```yaml
build_enabled: ${{ github.event.inputs.build_windows != 'false' || (github.event_name == 'push' && startsWith(github.ref, 'refs/tags/v')) }}
```

Change to:
```yaml
build_enabled: ${{ github.event.inputs.build_windows != 'false' || github.event_name == 'push' }}
```

### Change Version Format

The workflow expects tags in format `v*.*.*` (e.g., `v1.0.0`). To change this, edit the trigger:

```yaml
on:
  push:
    tags:
      - 'v*.*.*'  # Change this pattern
```

## 🔍 Troubleshooting

### Workflow Not Triggering

**Problem**: Pushing a tag doesn't trigger the workflow.

**Solutions**:
- ✅ Ensure the workflow file is in `.github/workflows/build-release.yml`
- ✅ Check that GitHub Actions are enabled (Settings → Actions)
- ✅ Verify tag format matches `v*.*.*` (e.g., `v1.0.0`)
- ✅ Check Actions tab for any error messages

### Build Fails

**Problem**: Build step fails.

**Solutions**:
- ✅ Check the workflow logs in the Actions tab
- ✅ Ensure `requirements.txt` includes all dependencies
- ✅ Verify `main.py` exists and is valid Python
- ✅ Test locally: `pyinstaller --onefile main.py`

### Release Not Created

**Problem**: Build succeeds but no release appears.

**Solutions**:
- ✅ Check the "Create Release" step logs
- ✅ Ensure workflow has write permissions (Settings → Actions → General)
- ✅ Verify the release job ran (check the workflow run)
- ✅ Check if a release with that tag already exists

### Permission Errors

**Problem**: "Permission denied" or "403" errors.

**Solutions**:
- ✅ Go to Settings → Actions → General
- ✅ Set "Workflow permissions" to "Read and write permissions"
- ✅ Save and retry

## 📋 Quick Reference

### Create a Release

```bash
# Tag format: vMAJOR.MINOR.PATCH
git tag -a v1.0.0 -m "Release v1.0.0"
git push origin v1.0.0
```

### View Workflow Runs

```
https://github.com/thepotatolover/F5-Presser/actions
```

### View Releases

```
https://github.com/thepotatolover/F5-Presser/releases
```

### Manual Workflow Trigger

```
Actions → Build & Release Executable → Run workflow
```

## 🎉 You're All Set!

Once you push a tag, the workflow will automatically:
1. Build your executables
2. Create a GitHub release
3. Upload the files
4. Make it available for download

No manual steps required! 🚀

## 📚 Additional Resources

- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Semantic Versioning](https://semver.org/)
- [PyInstaller Documentation](https://pyinstaller.org/)
