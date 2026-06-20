# My Terminal Themes

🇧🇷 [Leia em Português](docs/README_pt-BR.md)

A collection of custom terminal themes and configurations for [Oh My Posh](https://ohmyposh.dev/), [Fastfetch](https://github.com/fastfetch-cli/fastfetch), and **Windows Terminal**. 

This repository is designed to be a central hub for all my terminal setups. It includes an automated installation script to easily switch between different aesthetics.

## 🎨 Available Themes

| Theme | Description | Link |
| :--- | :--- | :--- |
| **🌸 Zero Two** | A pink and red theme inspired by Darling in the Franxx. Includes custom RAM/Time blocks and full Git integration. | [View Theme](themes/zerotwo/README.md) |

*(More themes will be added here in the future!)*

## 🚀 Installation

You can install any theme from this repository using the automated script or manually.

### Requirements
1. [Oh My Posh](https://ohmyposh.dev/docs/installation/windows)
2. [Fastfetch](https://github.com/fastfetch-cli/fastfetch) (e.g., `winget install fastfetch`)
3. A font from [Nerd Fonts](https://www.nerdfonts.com/) (e.g., `FiraCode Nerd Font` or `MesloLGM Nerd Font`).

---

### Option 1: Automated Installation (Recommended)

We provide a PowerShell script (`install.ps1`) that automatically copies all necessary files for the chosen theme and **backs up your existing Windows Terminal settings** before replacing them.

1. Open PowerShell in this repository's root folder.
2. Run the script:
   ```powershell
   .\install.ps1
   ```
3. Follow the interactive menu to select your desired theme (e.g., `1` for Zero Two).
4. Restart your terminal or reload your profile (`. $PROFILE`).

---

### Option 2: Manual Installation

If you prefer full control over where your files go, you can install the files manually. Inside each theme folder (e.g., `themes/zerotwo/`), you will find:

1. **`*.omp.json`**: Move this to `~/.config/oh-my-posh/` and load it in your `$PROFILE` using `oh-my-posh init pwsh --config "<path>" | Invoke-Expression`.
2. **`config.jsonc` & `ascii.txt`**: Move these to `~/.config/fastfetch/`. Update the `"source"` property in the `.jsonc` file to point to your new `ascii.txt` path.
3. **`settings.json`**: Copy this to your Windows Terminal LocalState directory: `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`. *(Backup your original first!)*

## 🔒 Security & Git 

All `.omp.json` files here are safe to be pushed to Git. They use relative properties (like `{{ .UserName }}`) and do not hardcode your local computer's paths.

If you ever edit `config.jsonc` or your PowerShell profile, ensure you use dynamic paths like `~` or `$env:USERPROFILE` instead of hardcoding `C:/Users/YourName/...`.
