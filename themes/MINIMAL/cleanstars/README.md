<div align="center">

# ✨ Clean Stars Theme

A premium, ultra-minimalist gray terminal theme for **Oh My Posh**, **Fastfetch**, and **Windows Terminal**, focused on high legibility and spacious aesthetics.

*Um tema de terminal premium e ultra-minimalista em tons de cinza para o **Oh My Posh**, **Fastfetch** e **Windows Terminal**, focado em alta legibilidade e estética espaçada.*

[![Oh My Posh](https://img.shields.io/badge/Oh_My_Posh-Cleanstars.omp.json-gray?style=for-the-badge&logo=oh-my-posh)](https://ohmyposh.dev/)
[![Fastfetch](https://img.shields.io/badge/Fastfetch-ascii.txt-lightgrey?style=for-the-badge)](https://github.com/fastfetch-cli/fastfetch)
[![Theme Colors](https://img.shields.io/badge/Aesthetic-Cool_Gray-7F8C8D?style=for-the-badge)](#)

</div>

---

## 📖 What is this? / O que é isso?

### English
This theme is a sleek, ultra-clean grayscale console configuration designed to minimize visual clutter while providing an elite development environment. It features dual-space internal segment padding, breathing space around typing inputs, vertical blank line margins between commands, a minimalist 3D wireframe ASCII logo, and structured horizontal dividers.

### Português
*Este tema é uma configuração de terminal elegante e ultra-limpa em escala de cinza, projetada para minimizar a poluição visual e fornecer um ambiente de desenvolvimento de elite. Possui espaçamento interno duplo nos segmentos, margem de respiro no cursor de digitação, espaçamentos verticais automáticos entre comandos, logo ASCII 3D minimalista em aramado e divisores horizontais estruturados.*

---

## ✨ Features / Funcionalidades

### 📂 Left Prompt (Prompt Esquerdo)
- **Spacious Floating Pills:** Round-pill segments styled in highly balanced, premium shades of slate and charcoal gray. *(Pílulas Flutuantes Espaçadas: Segmentos arredondados estilizados em tons premium de cinza ardósia e chumbo.)*
- **Sleek OS Badge:** Renders a clean, rounded OS icon to initiate the prompt. *(Badge de OS Elegante: Renderiza um ícone de sistema operacional limpo e arredondado para iniciar o prompt.)*
- **Smart Directory Path:** Contextually shortens path names to show at most 3 parent folders for clean spacing. *(Caminho de Diretório Inteligente: Encurta o caminho para exibir no máximo 3 pastas pai.)*
- **Integrated Git Sync:** Displays active branch and sync states, turning into a subtle red-gray hue when the working tree is dirty. *(Sincronização Integrada de Git: Exibe a branch ativa e estados, mudando sutilmente para um tom avermelhado quando há modificações.)*
- **Muted Runtimes:** Muted, low-contrast environment icons and details for `Node.js`, `Python`, `Go`, `Rust`, and `.NET` that dynamically appear only when inside project folders. *(Runtimes Suaves: Ícones de baixo contraste para Node.js, Python, Go, Rust e .NET que aparecem de forma dinâmica.)*

### ⚡ Right Prompt (Prompt Direito)
- **Execution Timer:** Shows the exact duration of the last executed command in clean slate gray. *(Timer de Execução: Mostra a duração exata do último comando em cinza ardósia limpo.)*
- **Real-Time Clock:** Displays current local time in `HH:MM:SS` format inside a dark charcoal pill. *(Relógio em Tempo Real: Exibe o horário local atual no formato HH:MM:SS dentro de uma pílula chumbo.)*

### ❯ Spacious Input Line (Linha de Comando Espaçada)
- Auto-inserts a vertical blank line between command outputs and your next prompt, preventing a cluttered wall of text.
- Features an input arrow (`❯`) with double trailing spacing (`❯  `) for high typing comfort, turning soft red on command failure.
- *Insere automaticamente uma linha em branco entre a saída de comandos e seu próximo prompt, prevenindo uma parede de texto poluída. Possui um cursor (❯) com espaço duplo (❯  ) para alto conforto ao digitar, mudando para vermelho suave em caso de falha.*

---

## 📸 Previews / Visualização

### Windows Terminal (PowerShell)
![Terminal Preview](IMGS/terminal.png)

### IntelliJ IDEA Terminal (PowerShell)
![IntelliJ Preview](IMGS/intellij.png)

---

## 🚀 Installation / Instalação

### English (Recommended)
This theme is part of a larger collection. The easiest and safest way to install it is using the automated installer at the root of this repository.

1. Navigate to the root directory of this project.
2. Run:
   ```powershell
   .\install.ps1
   ```
3. Enter `4` to select **Clean Stars** from the interactive menu.
4. Restart your terminal or run `. $PROFILE`.

---

### Português (Recomendado)
*Este tema faz parte de uma coleção maior. A maneira mais fácil e segura de instalá-lo é usando o instalador automatizado na raiz deste repositório.*

1. *Navegue até a pasta raiz deste projeto.*
2. *Execute o comando:*
   ```powershell
   .\install.ps1
   ```
3. *Digite `4` para selecionar **Clean Stars** no menu interativo.*
4. *Reinicie o seu terminal ou execute o comando `. $PROFILE`.*

---

## 🛠️ Manual Installation (Advanced) / Instalação Manual (Avançado)

If you prefer full control, you can apply files manually as follows:

| File / Arquivo | Target Location / Destino | Description / Descrição |
|:---|:---|:---|
| **`Cleanstars.omp.json`** | `~/.config/oh-my-posh/` | Oh My Posh configuration JSON. Load it in your `$PROFILE`. *(Configuração do Oh My Posh. Carregue no seu $PROFILE.)* |
| **`config.jsonc` & `ascii.txt`** | `~/.config/fastfetch/` | Fastfetch configuration and custom ASCII art. *(Configuração do Fastfetch e arte ASCII personalizada.)* |
| **`settings.json`** | Terminal LocalState Folder | Windows Terminal settings (color schemes and fonts). *(Configurações de cores e fontes do Windows Terminal.)* |
| **`Microsoft.PowerShell_profile.ps1`** | `$PROFILE` | Optional PowerShell profile helper commands. *(Script de ajuda opcional para o perfil do PowerShell.)* |

---

## 🔒 Security & Safe Pathing

This theme uses dynamic variables like `{{ .UserName }}` inside its prompt definitions instead of hardcoding username directories. This ensures that your local environment stays secure and shareable on Git.

*Este tema utiliza variáveis dinâmicas como `{{ .UserName }}` em suas definições de prompt em vez de fixar caminhos específicos de usuário. Isso garante que seu ambiente local permaneça seguro e compartilhável no Git.*
