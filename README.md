# Zero Two Oh My Posh Theme

🇧🇷 [Leia em Português](docs/README_pt-BR.md)

A custom theme for [Oh My Posh](https://ohmyposh.dev/), inspired by the color palette of the character Zero Two (Darling in the Franxx) using shades of red and pink. 

The theme features modern blocks, a clean Powerline design, and useful information such as system RAM usage, real-time clock, git branches/commits, and native support for major programming languages.

## Features

- **Left Prompt:**
  - OS and user session (`WSL/Windows`).
  - Simplified directory path (max 3 subfolders).
  - Advanced Git status (`HEAD`, *commits*, *staging*, *modified* files, *stash*, and *upstream* tracking).
  - Automatic environment recognition for the following technologies: `Java`, `Node`, `Python`, `Go`, `Rust`, and `.NET`.
- **Right Prompt:**
  - Command execution time.
  - System information (% RAM usage).
  - Real-time clock (`HH:MM:SS`).
- **Clean Input:** The cursor always starts on a new line below, with an interactive indicator for terminal errors (red `❯`).
- **Windows Terminal Settings:** Includes a pre-configured `settings.json` file for the best visual experience.
- **Fastfetch Support:** Ready-to-use ASCII art (`ascii.txt`) and styling configurations (`config.jsonc`).

## Installation

You have two ways to install the configurations: **Automated** (using our PowerShell script) or **Manual**.

Before starting, ensure you have the following installed:
1. [Oh My Posh](https://ohmyposh.dev/docs/installation/windows)
2. [Fastfetch](https://github.com/fastfetch-cli/fastfetch) (e.g., `winget install fastfetch`)
3. A font from [Nerd Fonts](https://www.nerdfonts.com/) (e.g., `FiraCode Nerd Font` or `MesloLGM Nerd Font`).

---

### Option 1: Automated Installation (Recommended)

We provide a PowerShell script (`install.ps1`) that automatically copies all necessary files and **backs up your existing Windows Terminal settings** before replacing them.

1. Open PowerShell in the repository folder.
2. Run the script:
   ```powershell
   .\install.ps1
   ```
3. Follow the interactive menu to select the `zerotwo` theme.
4. Restart your terminal or reload your profile (`. $PROFILE`).

---

### Option 2: Manual Installation

If you prefer full control over where your files go, you can install everything manually:

#### 1. Oh My Posh
Move the `Zerotwo.omp.json` file to a folder on your PC (e.g., `~/.config/oh-my-posh/Zerotwo.omp.json`). Then, edit your PowerShell profile (`notepad $PROFILE`) and add the initialization line:
```powershell
oh-my-posh init pwsh --config "~/.config/oh-my-posh/Zerotwo.omp.json" | Invoke-Expression
```

#### 2. Fastfetch
Copy the files from `themes/zerotwo/` to your Fastfetch config directory (usually `~/.config/fastfetch/`):
- `config.jsonc`
- `ascii.txt`

*Note: Ensure the `"source"` property in `config.jsonc` points to the correct location of your `ascii.txt` (e.g., `"~/.config/fastfetch/ascii.txt"`).*

#### 3. Windows Terminal Settings
To apply the exact colors and window styling, copy the `settings.json` file from `themes/zerotwo/settings.json` to the Windows Terminal LocalState directory:
```text
%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
```
*(Make sure to backup your original `settings.json` first!)*

## Data Security / Can I commit this to Git?

**The main `Zerotwo.omp.json` file is 100% safe to be pushed to GitHub/Git.** 
Oh My Posh renders relative properties through environment variables (`{{ .UserName }}`, `{{ .Path }}`), so it does not save sensitive information or static directory paths from your computer.

If you modify `config.jsonc` or your `Microsoft.PowerShell_profile.ps1` to include restricted paths (e.g., `C:/Users/YourName/...`), remember to replace them with variables like `$env:USERPROFILE` or `~` before sharing your setup publicly.