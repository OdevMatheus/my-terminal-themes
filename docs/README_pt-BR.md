<div align="center">

# 🛠️ Meus Temas de Terminal

Uma coleção curada de temas de terminal premium, altamente estéticos e configurações completas para o **Windows Terminal**, **Oh My Posh** e **Fastfetch**.

[![Stars](https://img.shields.io/github/stars/OdevMatheus/my-terminal-themes?style=for-the-badge)](https://github.com/OdevMatheus/my-terminal-themes/stargazers)
[![Platform](https://img.shields.io/badge/Platform-Windows-0078D4?style=for-the-badge&logo=windows&logoColor=white)](https://www.microsoft.com/windows)
[![Oh My Posh](https://img.shields.io/badge/Oh_My_Posh-v19+-FF6F00?style=for-the-badge&logo=powershell&logoColor=white)](https://ohmyposh.dev/)

🇺🇸 [Read in English](../README.md)

</div>

---

## 📖 O que é isso?

Este repositório é um hub completo para estética de terminal moderno. Ele fornece tudo o que você precisa para transformar seu PowerShell padrão e o Windows Terminal em um ambiente de desenvolvimento de elite.

Em vez de passar horas ajustando arquivos de configuração JSON, você pode usar o **instalador interativo inteligente** para configurar, atualizar ou alternar temas em segundos — com backups seguros e automatizados de suas configurações existentes.

### ✨ Destaques

- **Instalação Automatizada:** Execute um único comando (`.\install.ps1`) para copiar as configurações, ajustar caminhos absolutos e configurar o PowerShell.
- **Suporte a Perfil Duplo:** O instalador detecta e configura automaticamente os perfis do **Windows PowerShell (v5.1)** e do **PowerShell Core (v7+)** de forma simultânea.
- **Caminho de Documentos Dinâmico:** Sem nomes de usuário ou caminhos de OneDrive fixos. O instalador resolve dinamicamente o diretório ativo de Documentos (suportando redirecionamentos do OneDrive e sistemas em múltiplos idiomas).
- **Backups Seguros:** O instalador faz backup automático do arquivo original `settings.json` do seu Windows Terminal antes de aplicar os estilos do tema.
- **100% Portável entre Máquinas:** Sem caminhos locais rígidos (`C:/Users/nome`) ou executáveis presos a versões específicas (`WindowsApps`). Funciona perfeitamente em qualquer máquina Windows.
- **Temas Modulares:** Cada tema inclui prompts do Oh My Posh, configurações do Fastfetch, arte ASCII exclusiva e esquemas de cores para o Windows Terminal.

---

## 🎨 Temas Disponíveis

| Tema | Descrição / Detalhes | Detalhes e Visualização |
|:---|:---|:---|
| **✨ Clean Stars** | Estética cinza premium e ultra-minimalista, com pílulas flutuantes espaçadas, arte ASCII 3D geométrica, divisores horizontais e ruído visual zero. Extremamente limpo e legível. | [Ver Tema e Screenshots](../themes/MINIMAL/cleanstars/README.md) |
| **🌸 Zero Two** | Estética marcante em tons de rosa e vermelho inspirada em *Darling in the Franxx*. Inclui monitor de RAM em tempo real, timer de execução e arte ASCII exclusiva. | [Ver Tema e Screenshots](../themes/ANIMES/zerotwo/README.md) |
| **🐦‍⬛ Itachi** | Estética ultra-premium em vermelho carmesim e preto profundo inspirada em *Naruto*. Possui bordas de linha retrô, cursor em formato de olho Sharingan e arte ASCII do corvo lendário. | [Ver Tema e Screenshots](../themes/ANIMES/itachi/README.md) |
| **❖ Windows** | Tema premium altamente polido utilizando a vibrante paleta clássica da Microsoft. Contraste perfeito, layouts modernos de powerline e rastreamento de recursos. | [Ver Tema e Screenshots](../themes/OS/windows/README.md) |

---

## 🚀 Instalação Rápida (60 Segundos)

### 📋 Requisitos

Certifique-se de ter essas ferramentas instaladas antes de rodar o instalador:

1. **[Oh My Posh](https://ohmyposh.dev/docs/installation/windows)** (Motor de prompt)
2. **[Fastfetch](https://github.com/fastfetch-cli/fastfetch)** (Informações do sistema) — `winget install fastfetch`
3. **[Nerd Fonts](https://www.nerdfonts.com/)** (Renderização de ícones) — ex: *JetBrainsMono Nerd Font* ou *FiraCode Nerd Font*

### 🛠️ Instalação Interativa

1. Clone o repositório e acesse o diretório:
   ```powershell
   git clone https://github.com/OdevMatheus/my-terminal-themes.git
   cd my-terminal-themes
   ```

2. Execute o script de instalação:
   ```powershell
   .\install.ps1
   ```

3. Escolha seu tema no menu interativo, reinicie seu terminal ou recarregue seu perfil:
   ```powershell
   . $PROFILE
   ```

---

## ⚙️ Instalação Manual (Avançado)

Se preferir controle manual completo, aplique os arquivos a partir do diretório do tema desejado:

1. **Prompt do Oh My Posh (`*.omp.json`)**
   - Copie para a pasta de configurações (geralmente `~/.config/oh-my-posh/`).
   - Carregue no seu perfil do PowerShell (`$PROFILE`):
     ```powershell
     oh-my-posh init pwsh --config "~/.config/oh-my-posh/NomeDoTema.omp.json" | Invoke-Expression
     ```

2. **Fastfetch (`config.jsonc` e `ascii.txt`)**
   - Copie para `~/.config/fastfetch/`.
   - Atualize o campo `"source"` em `config.jsonc` para apontar para o caminho absoluto do seu `ascii.txt` local (lembre-se de usar barra invertida dupla no Windows: `\\`).

3. **Windows Terminal (`settings.json`)**
   - Mescle os perfis visuais e esquemas de cores no arquivo de configurações local do seu Windows Terminal: `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`.

---

## 🔒 Segurança e Privacidade

Nenhum caminho local rígido (`C:/Users/nome`) ou diretórios de sistema específicos. Todas as configurações utilizam variáveis de ambiente dinâmicas do sistema e comandos genéricos (`powershell.exe -NoLogo`). Isso mantém seus caminhos privados ocultos, tornando as configurações completamente seguras para uso, fork e compartilhamento no Git.

---

## 🤝 Contribuições

Contribuições são muito bem-vindas! Se você desenvolveu um tema incrível ou quer melhorar o script de instalação:

1. Faça um Fork deste repositório.
2. Crie uma branch para o seu tema (`git checkout -b theme/nome-do-seu-tema`).
3. Faça os commits com suas alterações (mantenha caminhos genéricos e dinâmicos).
4. Abra um Pull Request.

<a href="https://github.com/OdevMatheus/my-terminal-themes/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=OdevMatheus/my-terminal-themes" />
</a>

---

## 📜 Licença

Este projeto é de código aberto e gratuito para uso. Consulte as pastas individuais de cada tema para obter detalhes de ativos externos e créditos.
