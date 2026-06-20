<div align="center">

# My Terminal Themes

A curated collection of highly aesthetic custom terminal themes and configurations for **Windows Terminal**, **Oh My Posh**, and **Fastfetch**.

[![Stars](https://img.shields.io/github/stars/OdevMatheus/my-terminal-themes?style=for-the-badge)](https://github.com/OdevMatheus/my-terminal-themes/stargazers)
[![Platform](https://img.shields.io/badge/Platform-Windows-0078D4?style=for-the-badge&logo=windows&logoColor=white)](https://www.microsoft.com/windows)
[![Oh My Posh](https://img.shields.io/badge/Oh_My_Posh-v19+-FF6F00?style=for-the-badge&logo=powershell&logoColor=white)](https://ohmyposh.dev/)

🇧🇷 [Leia em Português](docs/README_pt-BR.md)

</div>

---

## What is this?

This repository serves as a centralized hub for all my custom terminal setups and configurations. It features customized powerlines, interactive elements, detailed system status monitors, and dynamic environment tracking. 

To ensure seamless installation, it includes an interactive PowerShell script to safely install, update, and switch themes while automatically backing up your existing configurations.

## 🎨 Available Themes

| Theme | Description | Details & Preview |
|:---|:---|:---|
| **🌸 Zero Two** | A striking pink and red terminal theme inspired by *Darling in the Franxx*. Integrates real-time system resource stats and multi-language support. | [View Theme](themes/zerotwo/README.md) |
| **❖ Windows** | A highly polished, premium terminal theme inspired by the classic and vibrant corporate colors of the Windows/Microsoft logo. | [View Theme](themes/windows/README.md) |

---

## 🚀 Quick Start

Get your new terminal set up and running in under 60 seconds.

### 📋 Prerequisites

Before running the installer, ensure you have the following installed:

1. **[Oh My Posh](https://ohmyposh.dev/docs/installation/windows)** — The prompt engine.
2. **[Fastfetch](https://github.com/fastfetch-cli/fastfetch)** — System information tool (`winget install fastfetch`).
3. **[Nerd Fonts](https://www.nerdfonts.com/)** — A patched font is required for icons (e.g., *FiraCode Nerd Font* or *MesloLGM Nerd Font*).

### 🛠️ Automated Installation (Recommended)

The automated script configures everything, loads the chosen theme, and **safely backs up your existing Windows Terminal settings** before making any changes.

1. Clone this repository and navigate to its root folder:
   ```powershell
   git clone https://github.com/OdevMatheus/my-terminal-themes.git
   cd my-terminal-themes
   ```

2. Run the interactive installer script:
   ```powershell
   .\install.ps1
   ```

3. Follow the interactive menu to select your theme (e.g., enter `1` for Zero Two).
4. Restart your terminal or reload your PowerShell profile:
   ```powershell
   . $PROFILE
   ```

---

## ⚙️ Manual Installation

If you prefer full manual control, each theme directory contains the necessary source files. To install manually:

1. **Oh My Posh Prompt (`*.omp.json`)**
   - Copy the theme file to your configuration directory (usually `~/.config/oh-my-posh/`).
   - Initialize it in your PowerShell profile (`$PROFILE`):
     ```powershell
     oh-my-posh init pwsh --config "~/.config/oh-my-posh/Zerotwo.omp.json" | Invoke-Expression
     ```

2. **Fastfetch (`config.jsonc` & `ascii.txt`)**
   - Copy both files to `~/.config/fastfetch/`.
   - Open your `config.jsonc` and update the `"source"` path for the ASCII logo to point to your local `ascii.txt` location.

3. **Windows Terminal Styles (`settings.json`)**
   - Backup your current settings first!
   - Copy or merge the styling properties from `settings.json` into your local Windows Terminal configuration: `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`.

---

## 🔒 Security & Git Integration

This repository follows strict safety guidelines for terminal sharing:
- All `.omp.json` profiles utilize relative variables (e.g., `{{ .UserName }}`) to avoid hardcoding username details or internal paths.
- If you customize any configurations locally, ensure you use dynamic environment tags like `~` or `$env:USERPROFILE` before committing or sharing them.

---

## 📂 Project Structure

```
docs/
  README_pt-BR.md
themes/
  zerotwo/
    IMGS/
      intellij.png
      terminal.png
    ascii.txt
    config.jsonc
    Microsoft.PowerShell_profile.ps1
    README.md
    settings.json
    Zerotwo.omp.json
.gitignore
install.ps1
README.md
```

---

## 🤝 Contributing

Contributions are welcome! If you have a theme you'd like to share, or improvements to the installer script:

1. Fork the repository.
2. Create a feature branch (`git checkout -b theme/your-theme-name`).
3. Commit your changes safely (do not commit hardcoded personal credentials or local absolute paths).
4. Push to the branch and open a Pull Request.

<a href="https://github.com/OdevMatheus/my-terminal-themes/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=OdevMatheus/my-terminal-themes" />
</a>

---

## License

This project is open-source and free to use. Refer to individual theme configurations for external asset licenses where applicable.

---
