<#
.SYNOPSIS
    Instalador / trocador de temas (Oh My Posh + Fastfetch)

.DESCRIPTION
    Lista os temas disponiveis na pasta "themes\", deixa voce escolher um
    (ou recebe via parametro), e copia os arquivos para os locais corretos:
      - <Tema>.omp.json    -> ~/.config/oh-my-posh/<tema>.omp.json
      - config.jsonc       -> ~/.config/fastfetch/config.jsonc
      - ascii.txt          -> ~/.config/fastfetch/ascii.txt
      - Microsoft.PowerShell_profile.ps1 -> seu $PROFILE real (OneDrive)

.EXAMPLE
    .\install.ps1
    Mostra o menu para escolher o tema.

.EXAMPLE
    .\install.ps1 -ThemeName zerotwo
    Aplica direto o tema "zerotwo" sem mostrar o menu.
#>

param(
    [string]$ThemeName
)

$ErrorActionPreference = "Stop"

# --- Caminhos base ---
$RepoRoot      = $PSScriptRoot
$ThemesRoot    = Join-Path $RepoRoot "themes"

$PoshDestDir   = "$env:USERPROFILE\.config\oh-my-posh"
$FastfetchDir  = "$env:USERPROFILE\.config\fastfetch"
$ProfileDest   = "$env:USERPROFILE\OneDrive\Documentos\PowerShell\Microsoft.PowerShell_profile.ps1"
$WtSettingsDest = "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"

function Write-Step($msg) {
    Write-Host "→ $msg" -ForegroundColor Cyan
}

function Get-AvailableThemes {
    if (-not (Test-Path $ThemesRoot)) {
        throw "Pasta de temas nao encontrada: $ThemesRoot"
    }
    Get-ChildItem -Path $ThemesRoot -Directory | Select-Object -ExpandProperty Name
}

function Select-ThemeInteractive {
    param([string[]]$Themes)

    Write-Host "`nTemas disponiveis:`n" -ForegroundColor Magenta
    for ($i = 0; $i -lt $Themes.Count; $i++) {
        Write-Host "  [$($i + 1)] $($Themes[$i])"
    }
    Write-Host ""

    do {
        $choice = Read-Host "Escolha um tema (numero)"
        $index = $choice -as [int]
    } while (-not $index -or $index -lt 1 -or $index -gt $Themes.Count)

    return $Themes[$index - 1]
}

function Get-ThemeFiles {
    param([string]$ThemeDir)

    $ompFile = Get-ChildItem -Path $ThemeDir -Filter "*.omp.json" | Select-Object -First 1
    $configFile = Join-Path $ThemeDir "config.jsonc"
    $asciiFile  = Join-Path $ThemeDir "ascii.txt"
    $profileFile = Join-Path $ThemeDir "Microsoft.PowerShell_profile.ps1"
    $wtSettingsFile = Join-Path $ThemeDir "settings.json"

    foreach ($f in @($configFile, $asciiFile, $profileFile)) {
        if (-not (Test-Path $f)) { throw "Arquivo nao encontrado: $f" }
    }
    if (-not $ompFile) { throw "Nenhum arquivo *.omp.json encontrado em $ThemeDir" }

    $result = @{
        Omp     = $ompFile.FullName
        Config  = $configFile
        Ascii   = $asciiFile
        Profile = $profileFile
    }

    if (Test-Path $wtSettingsFile) {
        $result.WtSettings = $wtSettingsFile
    }

    return $result
}

function Install-Theme {
    param([string]$ThemeName, [hashtable]$Files)

    Write-Step "Criando diretorios de destino..."
    New-Item -ItemType Directory -Force -Path $PoshDestDir  | Out-Null
    New-Item -ItemType Directory -Force -Path $FastfetchDir | Out-Null
    New-Item -ItemType Directory -Force -Path (Split-Path $ProfileDest) | Out-Null

    $ompDest    = Join-Path $PoshDestDir "$ThemeName.omp.json"
    $configDest = Join-Path $FastfetchDir "config.jsonc"
    $asciiDest  = Join-Path $FastfetchDir "ascii.txt"

    Write-Step "Copiando arquivos..."
    Copy-Item -Path $Files.Omp     -Destination $ompDest    -Force
    Copy-Item -Path $Files.Config  -Destination $configDest -Force
    Copy-Item -Path $Files.Ascii   -Destination $asciiDest  -Force
    Copy-Item -Path $Files.Profile -Destination $ProfileDest -Force

    Write-Host "  OK:" -ForegroundColor Green
    Write-Host "    $ompDest"
    Write-Host "    $configDest"
    Write-Host "    $asciiDest"
    Write-Host "    $ProfileDest"

    if ($Files.WtSettings) {
        if (Test-Path $WtSettingsDest) {
            $backupPath = "$WtSettingsDest.bak"
            Copy-Item -Path $WtSettingsDest -Destination $backupPath -Force
            Write-Host "    Backup do Windows Terminal settings criado em: $backupPath" -ForegroundColor DarkGray
        }
        New-Item -ItemType Directory -Force -Path (Split-Path $WtSettingsDest) | Out-Null
        Copy-Item -Path $Files.WtSettings -Destination $WtSettingsDest -Force
        Write-Host "    $WtSettingsDest"
    }

    return @{ Omp = $ompDest; Config = $configDest; Ascii = $asciiDest }
}

function Update-FastfetchSourcePath {
    param([string]$ConfigDest, [string]$AsciiDest)

    Write-Step "Ajustando caminho do ascii.txt no config.jsonc..."
    $escapedPath = $AsciiDest -replace '\\', '\\\\'
    $content = Get-Content $ConfigDest -Raw
    $content = $content -replace '"source":\s*".*?"', "`"source`": `"$escapedPath`""
    Set-Content -Path $ConfigDest -Value $content -NoNewline
    Write-Host "  OK" -ForegroundColor Green
}

function Update-ProfileOmpPath {
    param([string]$OmpDest)

    Write-Step "Ajustando caminho do tema dentro do profile..."
    $forwardPath = $OmpDest -replace '\\', '/'
    $content = Get-Content $ProfileDest -Raw
    $content = $content -replace '(--config\s+")[^"]*(")', "`${1}$forwardPath`${2}"
    Set-Content -Path $ProfileDest -Value $content -NoNewline
    Write-Host "  OK" -ForegroundColor Green
}

function Test-Dependencies {
    Write-Step "Verificando dependencias..."
    $missing = @()
    if (-not (Get-Command oh-my-posh -ErrorAction SilentlyContinue)) { $missing += "oh-my-posh" }
    if (-not (Get-Command fastfetch  -ErrorAction SilentlyContinue)) { $missing += "fastfetch" }

    if ($missing.Count -gt 0) {
        Write-Host "  Aviso: nao encontrado(s) no PATH: $($missing -join ', ')" -ForegroundColor Yellow
        foreach ($m in $missing) {
            Write-Host "    winget install $m" -ForegroundColor Yellow
        }
    } else {
        Write-Host "  OK" -ForegroundColor Green
    }
}

# --- Execucao ---
Write-Host "`n=== Instalador de temas ===" -ForegroundColor Magenta

$availableThemes = Get-AvailableThemes

if (-not $ThemeName) {
    $ThemeName = Select-ThemeInteractive -Themes $availableThemes
} elseif ($ThemeName -notin $availableThemes) {
    throw "Tema '$ThemeName' nao encontrado. Disponiveis: $($availableThemes -join ', ')"
}

Write-Step "Tema selecionado: $ThemeName"

$themeDir = Join-Path $ThemesRoot $ThemeName
$files = Get-ThemeFiles -ThemeDir $themeDir
$installed = Install-Theme -ThemeName $ThemeName -Files $files
Update-FastfetchSourcePath -ConfigDest $installed.Config -AsciiDest $installed.Ascii
Update-ProfileOmpPath -OmpDest $installed.Omp
Test-Dependencies

Write-Host "`n=== Concluido ===" -ForegroundColor Magenta
Write-Host "Reinicie o terminal ou rode '. `$PROFILE' para aplicar o tema '$ThemeName'.`n" -ForegroundColor Green