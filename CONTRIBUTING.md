# Contributing to F5 Presser 🚀

Thank you for your interest in contributing to **F5 Presser**! This document provides comprehensive guidelines and instructions for contributing to this project.

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [How to Contribute](#how-to-contribute)
  - [Reporting Bugs](#reporting-bugs)
  - [Suggesting Features](#suggesting-features)
  - [Pull Requests](#pull-requests)
- [Development Setup](#development-setup)
- [Code Style Guidelines](#code-style-guidelines)
- [Testing Guidelines](#testing-guidelines)
- [Commit Message Guidelines](#commit-message-guidelines)
- [Release Process](#release-process)
- [Questions?](#questions)

---

## 📜 Code of Conduct

By participating in this project, you agree to maintain a respectful and inclusive environment:

- ✅ **Be respectful and considerate** of others' ideas and contributions
- ✅ **Welcome newcomers** and help them get started
- ✅ **Focus on constructive feedback** and productive discussions
- ✅ **Be open to feedback** and willing to learn
- ❌ **No harassment, discrimination, or offensive language**

---

## 🚀 Getting Started

Before you begin:
1. Check existing [Issues](https://github.com/thepotatolover/F5-Presser/issues) and [Pull Requests](https://github.com/thepotatolover/F5-Presser/pulls) to avoid duplicate work
2. If you're unsure about something, feel free to ask in an issue
3. Start with small, focused changes if you're new to the project

---

## 🤝 How to Contribute

### Reporting Bugs 🐛

Found a bug? Help us fix it! When reporting bugs, please include:

**Required Information:**
- 🏷️ **Clear, descriptive title** (e.g., "F5 key not pressing on Windows 11")
- 📝 **Detailed description** of the issue
- 🔄 **Steps to reproduce** the issue
- ✅ **Expected behavior** vs ❌ **Actual behavior**
- 💻 **Environment details:**
  - Operating System and version
  - Python version (`python --version`)
  - Package versions (`pip list`)
- 📋 **Error messages or logs** (if any)
- 📸 **Screenshots or GIFs** (if applicable)

**Bug Report Template:**
```markdown
**Describe the bug**
A clear and concise description of what the bug is.

**To Reproduce**
Steps to reproduce the behavior:
1. Run '...'
2. Press '...'
3. See error

**Expected behavior**
A clear description of what you expected to happen.

**Environment:**
- OS: [e.g., Windows 11]
- Python: [e.g., 3.11.0]
- Version: [e.g., 1.0.0]

**Additional context**
Add any other context about the problem here.
```

### Suggesting Features 💡

Have an idea? We'd love to hear it! Feature suggestions should include:

- 🎯 **Clear description** of the feature
- 💼 **Use cases** and examples
- 🔧 **Potential implementation** ideas (optional but appreciated)
- 📊 **Benefits** to users
- 🔗 **Related issues** or discussions (if any)

**Feature Request Template:**
```markdown
**Is your feature request related to a problem?**
A clear description of what the problem is.

**Describe the solution you'd like**
A clear description of what you want to happen.

**Describe alternatives you've considered**
Alternative solutions or features you've considered.

**Additional context**
Add any other context or screenshots about the feature request here.
```

### Pull Requests 🔄

Pull requests are the best way to propose changes. Here's how:

#### 1. **Fork and Clone**
```bash
# Fork the repository on GitHub, then:
   git clone https://github.com/thepotatolover/F5-Presser.git
cd F5-Presser
```

#### 2. **Create a Branch**
```bash
# Create a new branch from main
git checkout -b feature/your-feature-name
# or
git checkout -b fix/your-bug-fix
```

**Branch Naming Conventions:**
- `feature/` - New features
- `fix/` - Bug fixes
- `docs/` - Documentation changes
- `refactor/` - Code refactoring
- `test/` - Test additions/changes
- `chore/` - Maintenance tasks

#### 3. **Make Your Changes**
- ✍️ Write clean, readable code
- 💬 Add comments where necessary
- 📚 Follow existing code style
- ✅ Ensure your code works

#### 4. **Test Your Changes**
```bash
# Run the script to verify it works
python main.py

# Test on your system
# Ensure no errors occur
```

#### 5. **Commit Your Changes**
```bash
git add .
git commit -m "feat: add configurable delay option"
```

**Commit Message Format:**
- Use present tense ("Add feature" not "Added feature")
- Start with a type: `feat:`, `fix:`, `docs:`, `style:`, `refactor:`, `test:`, `chore:`
- Keep the first line under 72 characters
- Add more details in the body if needed

#### 6. **Push and Create Pull Request**
```bash
git push origin feature/your-feature-name
```

Then open a Pull Request on GitHub with:
- 📝 Clear title and description
- 🔗 Reference to related issues (e.g., "Fixes #123")
- 📸 Screenshots (if UI changes)
- ✅ Checklist of what was done

---

## 🛠️ Development Setup

### Prerequisites
- Python 3.8 or higher
- pip (Python package manager)
- Git

### Setup Steps

1. **Clone the repository:**
   ```bash
   git clone https://github.com/thepotatolover/F5-Presser.git
   cd F5-Presser
   ```

2. **Create a virtual environment** (recommended):
   ```bash
   # Windows
   python -m venv venv
   venv\Scripts\activate

   # macOS/Linux
   python3 -m venv venv
   source venv/bin/activate
   ```

3. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   pip install -r requirements-dev.txt  # For development tools
   ```

4. **Verify installation:**
   ```bash
   python main.py
   ```

5. **Make your changes and test them**

---

## 📐 Code Style Guidelines

We follow **PEP 8** Python style guidelines with some additions:

### General Rules
- ✅ Use **4 spaces** for indentation (no tabs)
- ✅ Maximum **line length**: 88 characters (Black formatter default)
- ✅ Use **meaningful variable names** (`delay_seconds` not `d`)
- ✅ Add **docstrings** for functions and classes
- ✅ Keep functions **focused and single-purpose**
- ✅ Use **type hints** when possible

### Example:
```python
def press_f5_key(delay_seconds: int = 5) -> None:
    """
    Press the F5 key after a specified delay.
    
    Args:
        delay_seconds: Number of seconds to wait before pressing F5
        
    Returns:
        None
    """
    time.sleep(delay_seconds)
    keyboard.press(Key.f5)
    keyboard.release(Key.f5)
```

### Code Formatting Tools
We use automated formatting tools:
- **Black** - Code formatter
- **flake8** - Linter
- **isort** - Import sorter

Run before committing:
```bash
black .
isort .
flake8 .
```

---

## 🧪 Testing Guidelines

### Before Submitting
- ✅ Test your code on your system
- ✅ Ensure no errors occur
- ✅ Verify the script works as expected
- ✅ Test edge cases if applicable

### Running Tests
```bash
# Basic functionality test
python main.py

# Verify imports
python -c "from pynput.keyboard import Key, Controller; import time; print('OK')"
```

---

## 📝 Commit Message Guidelines

We follow [Conventional Commits](https://www.conventionalcommits.org/):

**Format:**
```
<type>(<scope>): <subject>

<body>

<footer>
```

**Types:**
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code refactoring
- `test`: Test additions/changes
- `chore`: Maintenance tasks

**Examples:**
```
feat: add configurable delay option

Allow users to specify custom delay between F5 presses
through command-line arguments.

Closes #42
```

```
fix: handle keyboard controller initialization error

Add error handling for cases where keyboard controller
cannot be initialized on certain systems.
```

---

## 🚢 Release Process

Releases are managed by maintainers:

1. Version bumping
2. Changelog updates
3. Tag creation
4. GitHub release

If you're a maintainer, see the release workflow in `.github/workflows/release.yml`.

---

## ❓ Questions?

- 💬 **Open an issue** for questions or discussions
- 📧 **Contact maintainers** (if contact info is available)
- 📖 **Check existing issues** for similar questions

---

## 🙏 Thank You!

Your contributions make this project better! Every contribution, no matter how small, is appreciated.

**Happy coding!** 🎉✨
