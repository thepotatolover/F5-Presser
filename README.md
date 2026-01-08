# ⌨️ F5 Presser

<div align="center">

![Python Version](https://img.shields.io/badge/python-3.8%2B-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Platform](https://img.shields.io/badge/platform-Windows%20%7C%20macOS%20%7C%20Linux-lightgrey.svg)
![Status](https://img.shields.io/badge/status-active-success.svg)

**Automate your F5 key presses with ease!** 🚀

A simple yet powerful Python script that automatically presses the F5 key at regular intervals.

[Features](#-features) • [Installation](#-installation) • [Usage](#-usage) • [Contributing](#-contributing) • [License](#-license)

</div>

---

## 📋 Table of Contents

- [Features](#-features)
- [Installation](#-installation)
- [Usage](#-usage)
- [Configuration](#-configuration)
- [Requirements](#-requirements)
- [Contributing](#-contributing)
- [Troubleshooting](#-troubleshooting)
- [License](#-license)
- [Acknowledgments](#-acknowledgments)

---

## ✨ Features

- 🔄 **Automatic F5 Key Pressing** - Presses F5 at configurable intervals
- ⏱️ **Customizable Delays** - Adjust wait times between presses
- 🖥️ **Cross-Platform** - Works on Windows, macOS, and Linux
- 🎯 **Simple & Lightweight** - Minimal dependencies, easy to use
- 🔒 **Safe & Reliable** - Clean keyboard control implementation
- 📊 **Visual Feedback** - Console output for each key press

---

## 🚀 Installation

### Prerequisites

- Python 3.8 or higher
- pip (Python package manager)

### Quick Install

1. **Clone the repository:**
   ```bash
   git clone https://github.com/thepotatolover/F5-Presser.git
   cd F5-Presser
   ```

2. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

   Or install directly:
   ```bash
   pip install pynput
   ```

### Virtual Environment (Recommended)

```bash
# Create virtual environment
python -m venv venv

# Activate virtual environment
# Windows:
venv\Scripts\activate
# macOS/Linux:
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt
```

---

## 💻 Usage

### Basic Usage

Simply run the script:

```bash
python main.py
```

The script will:
1. Wait 5 seconds
2. Press F5
3. Print a confirmation message
4. Wait 25 seconds
5. Repeat indefinitely

### Stopping the Script

Press `Ctrl+C` in the terminal to stop the script.

### Example Output

```
I PRESSED F5 FOR YOU!!!!!
I PRESSED F5 FOR YOU!!!!!
I PRESSED F5 FOR YOU!!!!!
^C
KeyboardInterrupt
```

---

## ⚙️ Configuration

You can modify the delays in `main.py`:

```python
# Initial delay before first press (seconds)
time.sleep(5)

# Delay between presses (seconds)
time.sleep(25)
```

---

## 📦 Requirements

- **Python**: 3.8+
- **pynput**: >=1.7.6

See `requirements.txt` for the complete list.

---

## 📥 Download Pre-built Executables

Pre-built executables are automatically created for each release. Download the latest version from the [Releases page](https://github.com/thepotatolover/F5-Presser/releases).

### Available Platforms

- **Windows**: `F5-Presser-Windows.exe` - Ready to run, no Python required!
- **macOS**: `F5-Presser-macOS` - May require accessibility permissions
- **Linux**: `F5-Presser-Linux` - Ready to run on most Linux distributions

### Building Your Own

See [BUILD.md](BUILD.md) for instructions on building executables locally.

---

## 🤝 Contributing

Contributions are welcome! Please read our [Contributing Guide](CONTRIBUTING.md) for details on:

- Code of conduct
- Development setup
- Pull request process
- Code style guidelines

### Quick Start for Contributors

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'feat: add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

---

## 🐛 Troubleshooting

### Common Issues

**Issue: Script doesn't press F5**
- Ensure you have the necessary permissions (on macOS, grant accessibility permissions)
- Check that `pynput` is installed correctly: `pip install --upgrade pynput`

**Issue: Import errors**
- Verify Python version: `python --version` (should be 3.8+)
- Reinstall dependencies: `pip install -r requirements.txt`

**Issue: Permission denied (macOS)**
- Go to System Preferences → Security & Privacy → Privacy → Accessibility
- Add Terminal (or your IDE) to the allowed apps list

**Issue: Script runs but nothing happens**
- Ensure the target application is focused/active
- Check that F5 functionality works manually in your application

### Getting Help

- 📖 Check existing [Issues](https://github.com/thepotatolover/F5-Presser/issues)
- 💬 Open a new issue with details about your problem
- 📧 Contact maintainers (if contact info available)

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 🙏 Acknowledgments

- Built with [pynput](https://github.com/moses-palmer/pynput) - Cross-platform input control library
- Inspired by the need to automate repetitive tasks
- Thanks to all [contributors](https://github.com/thepotatolover/F5-Presser/graphs/contributors)!

---

<div align="center">

**Made with ❤️ by the F5 Presser community**

⭐ Star this repo if you find it useful!

[Report Bug](https://github.com/thepotatolover/F5-Presser/issues) • [Request Feature](https://github.com/thepotatolover/F5-Presser/issues) • [View Documentation](https://github.com/thepotatolover/F5-Presser#readme)

</div>
