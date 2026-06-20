<div align="center">

# ❖ Windows Theme

A highly polished, premium terminal theme for **Oh My Posh** inspired by the classic and vibrant colors of the Windows/Microsoft logo: Red (#F25022), Green (#7FBA00), Blue (#00A4EF), and Yellow (#FFB900).

*Um tema de terminal premium e altamente polido para o **Oh My Posh**, inspirado nas cores clássicas e vibrantes da logo do Windows/Microsoft: Vermelho (#F25022), Verde (#7FBA00), Azul (#00A4EF) e Amarelo (#FFB900).*

[![Oh My Posh](https://img.shields.io/badge/Oh_My_Posh-Windows.omp.json-orange?style=for-the-badge&logo=oh-my-posh)](https://ohmyposh.dev/)
[![Fastfetch](https://img.shields.io/badge/Fastfetch-config.jsonc-blue?style=for-the-badge)](https://github.com/fastfetch-cli/fastfetch)
[![Theme Style](https://img.shields.io/badge/Aesthetic-Windows_Logo-0078D4?style=for-the-badge&logo=windows)](https://www.microsoft.com/windows)

</div>

---

## 📖 What is this? / O que é isso?

### English
This theme is a high-performance, professional terminal prompt utilizing the four corporate Windows colors. It features a clean powerline transition, structured context indicators, detailed Git status tracking, and dynamic environment detection while maintaining a pristine, modern look.

### Português
*Este tema é um prompt de terminal de alta performance e visual profissional, utilizando as quatro cores corporativas do Windows. Possui transições limpas de powerline, indicadores de contexto estruturados, rastreamento detalhado de status do Git e detecção dinâmica de ambientes, mantendo um design limpo e moderno.*

---

## ✨ Features / Funcionalidades

### ❖ Left Prompt (Prompt Esquerdo)
- **Session (Blue / #00A4EF):** Displays OS type and session state clearly with Nerd Font glyphs. *(Exibe o tipo de sistema operacional e estado da sessão de forma clara.)*
- **User (Red / #F25022):** Displays your current active terminal username. *(Exibe seu nome de usuário ativo do terminal.)*
- **Path (Yellow / #FFB900):** Shows your current working directory, contextually shortened to at most 3 parent folders with a dark foreground for perfect contrast and readability. *(Mostra o diretório atual, encurtado dinamicamente para até 3 pastas pai com texto escuro para legibilidade perfeita.)*
- **Git Status (Green / #7FBA00):** Renders the active branch, upstream tracking icons, modified/staged counts, and stashes. *(Renderiza branch ativa, ícones de upstream, arquivos modificados/staged e stashes.)*
- **Language Auto-Detection:** Renders custom indicators for `Node.js`, `Java`, `Python`, `Go`, `Rust`, and `.NET` as needed. *(Renderiza indicadores customizados para Node.js, Java, Python, Go, Rust e .NET conforme necessário.)*

### ⚡ Right Prompt (Prompt Direito)
- **Execution Timer (Yellow / #FFB900):** Shows the exact duration of the last executed command with high-contrast text. *(Mostra a duração exata de execução do último comando.)*
- **RAM Util (Green / #7FBA00):** Real-time monitoring of physical memory usage. *(Monitoramento em tempo real da porcentagem de memória RAM usada.)*
- **Real-Time Clock (Blue / #00A4EF):** Highly precise current local time in `HH:MM:SS` format. *(Relógio altamente preciso em tempo real no formato HH:MM:SS.)*

### ❯ Clean Input Line (Linha de Comando Limpa)
- The input cursor is situated on a new line below the metadata block.
- Features an interactive arrow indicator (`❯`) that turns bright red when a command fails.
- *O cursor de digitação fica posicionado em uma nova linha abaixo do bloco de metadados. Possui um indicador em seta (❯) interativo que fica vermelho brilhante quando um comando falha.*

---

## 🚀 Installation / Instalação

### English (Recommended)
1. Navigate to the root directory of this project in PowerShell.
2. Run:
   ```powershell
   .\install.ps1
   ```
3. Enter the number corresponding to **windows** in the interactive menu.
4. Restart your terminal or reload your PowerShell profile:
   ```powershell
   . $PROFILE
   ```

---

### Português (Recomendado)
1. *Abra o PowerShell na pasta raiz deste projeto.*
2. *Execute o comando:*
   ```powershell
   .\install.ps1
   ```
3. *Digite o número correspondente ao tema **windows** no menu interativo.*
4. *Reinicie seu terminal ou recarregue seu perfil do PowerShell:*
   ```powershell
   . $PROFILE
   ```

---

## 🛠️ Manual Installation (Advanced) / Instalação Manual (Avançado)

If you prefer full control, you can apply files manually as follows:

| File / Arquivo | Target Location / Destino | Description / Descrição |
|:---|:---|:---|
| **`Windows.omp.json`** | `~/.config/oh-my-posh/` | Oh My Posh configuration JSON. Load it in your `$PROFILE`. *(Configuração do Oh My Posh. Carregue no seu $PROFILE.)* |
| **`config.jsonc`** | `~/.config/fastfetch/` | Fastfetch configuration for theme display. *(Configuração do Fastfetch para exibição do tema.)* |
| **`settings.json`** | Terminal LocalState Folder | Windows Terminal settings (color schemes and fonts). *(Configurações de cores e fontes do Windows Terminal.)* |
| **`Microsoft.PowerShell_profile.ps1`** | `$PROFILE` | Optional PowerShell profile helper commands. *(Script de ajuda opcional para o perfil do PowerShell.)* |

---

## 🔒 Security & Safe Pathing

Like all themes in this collection, this configuration uses relative parameters to keep your personal directory path secure and shareable.

*Como todos os temas desta coleção, esta configuração utiliza parâmetros relativos para manter os caminhos de diretórios locais seguros e fáceis de compartilhar.*
