# Meus Temas de Terminal

🇺🇸 [Read in English](../README.md)

Uma coleção de temas personalizados e configurações de terminal para [Oh My Posh](https://ohmyposh.dev/), [Fastfetch](https://github.com/fastfetch-cli/fastfetch) e **Windows Terminal**. 

Este repositório foi criado para ser um centralizador de todos os meus setups de terminal. Ele inclui um script de instalação automatizado para trocar facilmente entre diferentes estéticas.

## 🎨 Temas Disponíveis

| Tema | Descrição | Link |
| :--- | :--- | :--- |
| **🌸 Zero Two** | Um tema em tons de rosa e vermelho inspirado em Darling in the Franxx. Inclui blocos de RAM/Tempo e integração completa com Git. | [Ver Tema](../themes/zerotwo/README.md) |

*(Mais temas serão adicionados aqui no futuro!)*

## 🚀 Instalação

Você pode instalar qualquer tema deste repositório usando o script automatizado ou de forma manual.

### Requisitos
1. [Oh My Posh](https://ohmyposh.dev/docs/installation/windows)
2. [Fastfetch](https://github.com/fastfetch-cli/fastfetch) (ex: `winget install fastfetch`)
3. Uma fonte do projeto [Nerd Fonts](https://www.nerdfonts.com/) (ex: `FiraCode Nerd Font` ou `MesloLGM Nerd Font`).

---

### Opção 1: Instalação Automatizada (Recomendado)

Disponibilizamos um script (`install.ps1`) que copia automaticamente todos os arquivos necessários do tema escolhido e **faz backup do seu Windows Terminal settings atual** antes de substituí-lo.

1. Abra o PowerShell na pasta raiz do repositório.
2. Execute o script:
   ```powershell
   .\install.ps1
   ```
3. Siga o menu interativo para selecionar o tema desejado (ex: `1` para o Zero Two).
4. Reinicie seu terminal ou recarregue seu perfil (`. $PROFILE`).

---

### Opção 2: Instalação Manual

Se preferir ter controle total, você pode instalar tudo manualmente. Dentro da pasta de cada tema (ex: `themes/zerotwo/`), você encontrará:

1. **`*.omp.json`**: Mova para `~/.config/oh-my-posh/` e carregue no seu `$PROFILE` usando `oh-my-posh init pwsh --config "<caminho>" | Invoke-Expression`.
2. **`config.jsonc` & `ascii.txt`**: Mova para `~/.config/fastfetch/`. Atualize a propriedade `"source"` no arquivo `.jsonc` para apontar para o novo caminho do `ascii.txt`.
3. **`settings.json`**: Copie para a pasta LocalState do Windows Terminal: `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`. *(Faça backup do original primeiro!)*

## 🔒 Segurança e Git

Todos os arquivos `.omp.json` aqui são seguros para o Git. Eles utilizam propriedades relativas (como `{{ .UserName }}`) e não salvam caminhos específicos do seu computador.

Se você editar o `config.jsonc` ou o seu perfil do PowerShell, lembre-se de usar caminhos dinâmicos como `~` ou `$env:USERPROFILE` em vez de fixar `C:/Users/SeuNome/...`.
