<div align="center">

# 🛠️ My Terminal Themes

A curated collection of highly aesthetic, premium terminal themes and configurations for **Windows Terminal**, **Oh My Posh**, and **Fastfetch**.

[![Stars](https://img.shields.io/github/stars/OdevMatheus/my-terminal-themes?style=for-the-badge)](https://github.com/OdevMatheus/my-terminal-themes/stargazers)
[![Platform](https://img.shields.io/badge/Platform-Windows-0078D4?style=for-the-badge&logo=windows&logoColor=white)](https://www.microsoft.com/windows)
[![Oh My Posh](https://img.shields.io/badge/Oh_My_Posh-v19+-FF6F00?style=for-the-badge&logo=powershell&logoColor=white)](https://ohmyposh.dev/)

🇧🇷 [Leia em Português](docs/README_pt-BR.md)

</div>

---

## 📖 What is this?

This repository is an all-in-one hub for modern terminal aesthetics. It provides everything you need to transform your standard PowerShell and Windows Terminal into an elite development environment.

Instead of spending hours tweaking JSON configurations, you can use the **intelligent interactive installer** to set up, upgrade, or switch themes in seconds—complete with automated, safe backups of your existing setups.

### ✨ Highlights

- **Automated Setup:** Run one command (`.\install.ps1`) to copy configurations, adjust absolute paths, and wire up PowerShell.
- **Dual Profile Support:** The installer automatically detects and configures both **Windows PowerShell (v5.1)** and **PowerShell Core (v7+)** profiles concurrently.
- **Dynamic Documents Pathing:** No hardcoded usernames or OneDrive paths. The installer dynamically resolves the active Documents directory across OneDrive redirections and multilingual systems.
- **Safety Backups:** Automatically backs up your original Windows Terminal `settings.json` before applying theme styles.
- **100% Machine Portable:** Zero hardcoded paths (`C:/Users/name`) or fragile version-locked paths (`WindowsApps`). Fully compatible out-of-the-box on any Windows machine.
- **Modular Themes:** Every theme includes Oh My Posh prompts, Fastfetch system configs, custom ASCII art, and Windows Terminal color schemes.

---

## 🎨 Available Themes

| Theme | Preview / Description | Details & Preview |
|:---|:---|:---|
| **✨ Clean Stars** | Premium, ultra-minimalist gray theme featuring spacious floating-pill prompts, custom 3D geometric wireframe ASCII art, horizontal dividers, and a tidy layout. | [View Theme & Screenshots](themes/MINIMAL/cleanstars/README.md) |
| **🌸 Zero Two** | Ultra-aesthetic pink & red styling inspired by *Darling in the Franxx*. Includes live RAM monitors, execution timers, and exclusive ASCII art. | [View Theme & Screenshots](themes/ANIMES/zerotwo/README.md) |
| **🐦‍⬛ Itachi** | Ultra-aesthetic, premium crimson & black styling inspired by *Naruto*. Features retro line-borders, custom Sharingan eye input cursor, and legendary crow ASCII art. | [View Theme & Screenshots](themes/ANIMES/itachi/README.md) |
| **❖ Windows** | Highly polished premium theme utilizing the vibrant classic Microsoft palette. Perfect contrast, modern powerline layouts, and resource tracking. | [View Theme & Screenshots](themes/OS/windows/README.md) |

---

## 🚀 Quick Start (60 Seconds)

### 📋 Prerequisites

Ensure you have these tools installed before running the installer:

1. **[Oh My Posh](https://ohmyposh.dev/docs/installation/windows)** (Prompt engine)
2. **[Fastfetch](https://github.com/fastfetch-cli/fastfetch)** (System information) — `winget install fastfetch`
3. **[Nerd Fonts](https://www.nerdfonts.com/)** (Icon rendering) — e.g., *JetBrainsMono Nerd Font* or *FiraCode Nerd Font*

### 🛠️ Interactive Installation

1. Clone the repository and enter the directory:
   ```powershell
   git clone https://github.com/OdevMatheus/my-terminal-themes.git
   cd my-terminal-themes
   ```

2. Run the installer script:
   ```powershell
   .\install.ps1
   ```

3. Choose your theme from the interactive menu, then restart your terminal or reload your profile:
   ```powershell
   . $PROFILE
   ```

---

## ⚙️ Manual Installation (Advanced)

If you prefer full manual control, apply the assets from your desired theme's directory:

1. **Oh My Posh Prompt (`*.omp.json`)**
   - Copy to your configuration directory (usually `~/.config/oh-my-posh/`).
   - Load it in your PowerShell profile (`$PROFILE`):
     ```powershell
     oh-my-posh init pwsh --config "~/.config/oh-my-posh/ThemeName.omp.json" | Invoke-Expression
     ```

2. **Fastfetch (`config.jsonc` & `ascii.txt`)**
   - Copy to `~/.config/fastfetch/`.
   - Update the `"source"` field in `config.jsonc` to point to the absolute path of your local `ascii.txt` (remember to escape backslashes on Windows as `\\`).

3. **Windows Terminal (`settings.json`)**
   - Merge the visual profiles and color schemes into your local Windows Terminal configuration: `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`.

---

## 🔒 Security & Peace of Mind

No hardcoded home paths (`C:/Users/name`) or fragile system directories. All configurations use dynamic system environment variables and generic commands (`powershell.exe -NoLogo`). This keeps your local paths hidden, making your configuration completely safe to use, fork, and share on Git.

---

## 🤝 Contributing

Contributions are welcome! If you have built an awesome theme or want to improve the installer script:

1. Fork this repository.
2. Create your theme branch (`git checkout -b theme/your-theme-name`).
3. Commit your changes (keep paths generic/dynamic).
4. Open a Pull Request.

<a href="https://github.com/OdevMatheus/my-terminal-themes/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=OdevMatheus/my-terminal-themes" />
</a>

---

## 📜 License

This project is open-source and free to use. Refer to individual theme configurations for external asset details and credits.
