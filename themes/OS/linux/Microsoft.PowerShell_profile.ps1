# Profile: UTF-8 + Oh My Posh + Fastfetch (Linux/Tux Theme)
try {
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding = [System.Text.UTF8Encoding]::new($false)
    chcp 65001 > $null
} catch {}

oh-my-posh init pwsh --config "D:/Repositories/MyPoshTheme/themes/OS/linux/Linux.omp.json" | Invoke-Expression

Clear-Host
Write-Host "" # Adiciona um espacamento limpo no topo do terminal

if (Get-Command fastfetch -ErrorAction SilentlyContinue) {
    fastfetch -c "$env:USERPROFILE\.config\fastfetch\config.jsonc"
    Write-Host "" # Adiciona um espacamento limpo entre o Fastfetch e a linha de comando
}
