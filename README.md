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

## Data Security / Can I commit this to Git?

**The main `Zerotwo.omp.json` file (in the root) is 100% safe to be pushed to GitHub/Git.** 
Oh My Posh renders relative properties through environment variables (`{{ .UserName }}`, `{{ .Path }}`), so it does not save sensitive information, keys, or static directory paths from your computer.

**Pay attention to the files generated in your `.config` and `.profile` folders!** 
The project has some files in the `themes/zerotwo/` folder, such as `config.jsonc` (from fastfetch) or your `Microsoft.PowerShell_profile.ps1`, which contain the restricted path of your machine (e.g., `C:/Users/Mathe/...`). If you want to distribute this in a public git repository, remember to use variables like `$env:USERPROFILE` in the script or guide the user to replace it in the Fastfetch JSON. 

## How to Install and Configure on Your Machine

1. Ensure **Oh My Posh** is installed. See how in the [official documentation](https://ohmyposh.dev/docs/installation/windows).
2. For Git and language icons to display correctly, use a font from the [Nerd Fonts](https://www.nerdfonts.com/) project in your Terminal (e.g., `FiraCode Nerd Font`, `MesloLGM Nerd Font`).

### Configuring the Oh My Posh file
Move or make a copy of the `Zerotwo.omp.json` file to a themes folder on your PC, or point your profile file directly to the repository.

Open your PowerShell profile:
```powershell
notepad $PROFILE
```

And replace or add the initialization line, changing `C:/path/to/` to the correct location of your file:
```powershell
oh-my-posh init pwsh --config "C:/path/to/Zerotwo.omp.json" | Invoke-Expression
```

### Removing Username Dependency from Previous Profiles
If there were static modifications in other files of your Terminal/PowerShell profile to call scripts in the `C:/Users/Mathe` path, simply change them to make them universal (dynamic for any PC):

- In your **PowerShell Profile**:
  Change `C:/Users/Mathe/.config/fastfetch/config.jsonc` to:
  `$env:USERPROFILE/.config/fastfetch/config.jsonc`
- In **config.jsonc** (Fastfetch):
  Although Fastfetch uses absolute paths, you can use a tilde `~` which in newer bash or powershell will reference the *home* directory:
  `"source": "~/.config/fastfetch/ascii.txt"`
