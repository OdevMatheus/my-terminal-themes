# Profile: UTF-8 + Oh My Posh + Fastfetch
try {
    [Console]::InputEncoding  = [System.Text.Encoding]::UTF8
    [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    $OutputEncoding = [System.Text.UTF8Encoding]::new($false)
    chcp 65001 > $null
} catch {}

oh-my-posh init pwsh --config "D:/Repositories/MyPoshTheme/themes/zerotwo/Zerotwo.omp.json" | Invoke-Expression

Clear-Host

if (Get-Command fastfetch -ErrorAction SilentlyContinue) {
    fastfetch -c "C:/Users/Mathe/.config/fastfetch/config.jsonc"
}