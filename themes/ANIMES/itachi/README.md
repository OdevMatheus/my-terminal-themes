<div align="center">

# 🐦‍⬛ Itachi Theme (Sharingan Edition)

An ultra-aesthetic, premium crimson-and-black terminal theme for **Oh My Posh**, **Fastfetch**, and **Windows Terminal**, inspired by Itachi Uchiha (*Naruto*).

*Um tema de terminal premium e ultra-estético em tons de vermelho carmesim e preto profundo para o **Oh My Posh**, **Fastfetch** e **Windows Terminal**, inspirado no Itachi Uchiha (Naruto).*

[![Oh My Posh](https://img.shields.io/badge/Oh_My_Posh-Itachi.omp.json-orange?style=for-the-badge&logo=oh-my-posh)](https://ohmyposh.dev/)
[![Fastfetch](https://img.shields.io/badge/Fastfetch-ascii.txt-red?style=for-the-badge)](https://github.com/fastfetch-cli/fastfetch)
[![Theme Colors](https://img.shields.io/badge/Aesthetic-Crimson_&_Black-FF0000?style=for-the-badge)](#)

</div>

---

## 📖 What is this? / O que é isso?

### English
This theme is a high-performance, visually striking terminal configuration custom-tailored to the color palette of Itachi and his iconic Sharingan. It features structured retro multi-line borders, high-contrast crimson accents, real-time system monitoring, and a fully customized Fastfetch layout with custom Sharingan ASCII art.

### Português
*Este tema é uma configuração de terminal de alta performance e visual marcante, personalizada sob medida com a paleta de cores do Itachi e de seu icônico Sharingan. Possui bordas retrô multi-linha estruturadas, detalhes carmesim de alto contraste, monitoramento avançado do sistema em tempo real e um layout do Fastfetch totalmente personalizado com arte ASCII do Sharingan.*

---

## ✨ Features / Funcionalidades

### 🐦‍⬛ Left Prompt (Prompt Esquerdo)
- **Session Details:** Displays OS type, system user, and hostname clearly, prefixed with Itachi's legendary black crow symbol (`🐦‍⬛`). *(Detalhes da Sessão: Exibe o tipo de OS, usuário e hostname, acompanhado pelo lendário símbolo do corvo negro do Itachi.)*
- **Smart Directory Path:** Contextually shortens path names to show at most 3 parent folders for clean spacing, prefixed with a crow feather (`🪶`). *(Caminho Inteligente: Encurta o caminho de diretórios para no máximo 3 pastas pai, acompanhado por uma pena de corvo.)*
- **Comprehensive Git Integration:** Renders active branch, commits ahead/behind upstream, and modified/staged/untracked file states in custom crimson markers. *(Integração Completa com Git: Renderiza branch ativa, commits à frente/atrás do upstream e estados de arquivos modificados/staged/não rastreados em vermelho carmesim.)*
- **Environment Auto-Detection:** Automatically detects and shows icons for `Node.js`, `Java`, `Python`, `Go`, `Rust`, and `.NET`. *(Detecção de Ambientes: Detecta e exibe ícones de forma automática para Node.js, Java, Python, Go, Rust e .NET.)*

### ⚡ Right Prompt (Prompt Direito)
- **Resource Monitor:** Displays real-time RAM usage percentage prefixed with a brain symbol (`🧠`) representing Itachi's master Genjutsu (Tsukuyomi). *(Monitor de Recursos: Exibe a porcentagem de uso de memória RAM em tempo real, acompanhado por um cérebro que representa seu Genjutsu mestre.)*
- **Execution Timer:** Shows the exact duration of the last executed command prefixed with lightning (`⚡`) for hand-sign speed. *(Timer de Execução: Mostra a duração exata do último comando executado, com um raio simbolizando rapidez.)*
- **Real-Time Clock:** Displays current local time in `HH:MM:SS` format with a crescent moon (`🌙`) representing the crimson moon of the tragedy. *(Relógio em Tempo Real: Exibe o horário local no formato HH:MM:SS, com uma lua crescente representando a lua vermelha.)*

### ❯ Clean Input Line (Linha de Comando Limpa)
- The input cursor starts on a fresh line framed by a glowing red `╰─🔴 ❯`, representing the activated Sharingan ready for command input.
- *O cursor de digitação inicia em uma nova linha limpa, emoldurado por um marcante `╰─🔴 ❯` vermelho brilhante, representando o Sharingan ativado pronto para digitação.*

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
3. Enter the number corresponding to **itachi** from the interactive menu.
4. Restart your terminal or run `. $PROFILE`.

---

### Português (Recomendado)
*Este tema faz parte de uma coleção maior. A maneira mais fácil e segura de instalá-lo é usando o instalador automatizado na raiz deste repositório.*

1. *Navegue até a pasta raiz deste projeto.*
2. *Execute o comando:*
   ```powershell
   .\install.ps1
   ```
3. *Selecione o tema **itachi** no menu interativo.*
4. *Reinicie o seu terminal ou execute o comando `. $PROFILE`.*

---

## 🛠️ Manual Installation (Advanced) / Instalação Manual (Avançado)

If you prefer full control, you can apply files manually as follows:

| File / Arquivo | Target Location / Destino | Description / Descrição |
|:---|:---|:---|
| **`Itachi.omp.json`** | `~/.config/oh-my-posh/` | Oh My Posh configuration JSON. Load it in your `$PROFILE`. *(Configuração do Oh My Posh. Carregue no seu $PROFILE.)* |
| **`config.jsonc` & `ascii.txt`** | `~/.config/fastfetch/` | Fastfetch configuration and custom ASCII art. *(Configuração do Fastfetch e arte ASCII personalizada.)* |
| **`settings.json`** | Terminal LocalState Folder | Windows Terminal settings (color schemes and fonts). *(Configurações de cores e fontes do Windows Terminal.)* |
| **`Microsoft.PowerShell_profile.ps1`** | `$PROFILE` | Optional PowerShell profile helper commands. *(Script de ajuda opcional para o perfil do PowerShell.)* |

---

## 🔒 Security & Safe Pathing

This theme uses dynamic variables like `{{ .UserName }}` inside its prompt definitions instead of hardcoding username directories. This ensures that your local environment stays secure and shareable on Git.

*Este tema utiliza variáveis dinâmicas como `{{ .UserName }}` em suas definições de prompt em vez de fixar caminhos específicos de usuário. Isso garante que seu ambiente local permaneça seguro e compartilhável no Git.*
