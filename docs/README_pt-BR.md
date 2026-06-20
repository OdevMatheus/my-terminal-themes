<div align="center">

# Meus Temas de Terminal

Uma coleção de temas personalizados e configurações de terminal altamente estéticas para o **Windows Terminal**, **Oh My Posh** e **Fastfetch**.

[![Stars](https://img.shields.io/github/stars/OdevMatheus/my-terminal-themes?style=for-the-badge)](https://github.com/OdevMatheus/my-terminal-themes/stargazers)
[![Platform](https://img.shields.io/badge/Platform-Windows-0078D4?style=for-the-badge&logo=windows&logoColor=white)](https://www.microsoft.com/windows)
[![Oh My Posh](https://img.shields.io/badge/Oh_My_Posh-v19+-FF6F00?style=for-the-badge&logo=powershell&logoColor=white)](https://ohmyposh.dev/)

🇺🇸 [Read in English](../README.md)

</div>

---

## O que é isso?

Este repositório serve como um hub centralizado para todas as minhas configurações personalizadas de terminal. Ele conta com powerlines customizados, elementos interativos, monitoramento detalhado de recursos do sistema e detecção dinâmica de ambientes de desenvolvimento.

Para garantir uma instalação simples e descomplicada, o projeto inclui um script em PowerShell interativo para instalar, atualizar e alternar entre os temas de forma segura, realizando backup automático das suas configurações atuais.

## 🎨 Temas Disponíveis

| Tema | Descrição | Detalhes & Visualização |
|:---|:---|:---|
| **🌸 Zero Two** | Um tema marcante em tons de rosa e vermelho inspirado no anime *Darling in the Franxx*. Integra estatísticas de RAM em tempo real e suporte multilíngue. | [Ver Tema](../themes/zerotwo/README.md) |
| **❖ Windows** | Um tema de terminal altamente polido e premium inspirado nas cores clássicas e vibrantes da logo corporativa do Windows/Microsoft. | [Ver Tema](../themes/windows/README.md) |

---

## 🚀 Instalação Rápida

Deixe seu novo terminal pronto e configurado em menos de 60 segundos.

### 📋 Requisitos

Antes de executar o instalador, certifique-se de ter os seguintes itens instalados:

1. **[Oh My Posh](https://ohmyposh.dev/docs/installation/windows)** — O motor de renderização do prompt.
2. **[Fastfetch](https://github.com/fastfetch-cli/fastfetch)** — Ferramenta de informações do sistema (`winget install fastfetch`).
3. **[Nerd Fonts](https://www.nerdfonts.com/)** — Uma fonte patcheada é obrigatória para exibir os ícones corretamente (ex: *FiraCode Nerd Font* ou *MesloLGM Nerd Font*).

### 🛠️ Instalação Automatizada (Recomendado)

O script automatizado configura tudo, carrega o tema escolhido e **faz um backup de segurança das suas configurações do Windows Terminal** antes de aplicar qualquer alteração.

1. Clone o repositório e navegue até a pasta raiz:
   ```powershell
   git clone https://github.com/OdevMatheus/my-terminal-themes.git
   cd my-terminal-themes
   ```

2. Execute o instalador interativo:
   ```powershell
   .\install.ps1
   ```

3. Siga o menu interativo para escolher o seu tema (ex: digite `1` para o Zero Two).
4. Reinicie o seu terminal ou recarregue o seu perfil do PowerShell:
   ```powershell
   . $PROFILE
   ```

---

## ⚙️ Instalação Manual

Se você prefere controle manual completo, a pasta de cada tema contém todos os arquivos fonte necessários. Para instalar manualmente:

1. **Prompt do Oh My Posh (`*.omp.json`)**
   - Copie o arquivo do tema para a sua pasta de configurações (normalmente `~/.config/oh-my-posh/`).
   - Inicialize-o no seu perfil do PowerShell (`$PROFILE`):
     ```powershell
     oh-my-posh init pwsh --config "~/.config/oh-my-posh/Zerotwo.omp.json" | Invoke-Expression
     ```

2. **Fastfetch (`config.jsonc` & `ascii.txt`)**
   - Copie ambos os arquivos para `~/.config/fastfetch/`.
   - Abra o `config.jsonc` e atualize o caminho `"source"` da arte ASCII para apontar para a localização local do seu `ascii.txt`.

3. **Estilos do Windows Terminal (`settings.json`)**
   - Faça backup das suas configurações atuais primeiro!
   - Copie ou mescle as propriedades de estilo de `settings.json` nas suas configurações locais do Windows Terminal: `%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`.

---

## 🔒 Segurança e Integração com Git

Este repositório segue diretrizes rigorosas de segurança para compartilhamento de terminais:
- Todos os perfis `.omp.json` utilizam variáveis relativas (ex: `{{ .UserName }}`) para evitar expor nomes de usuário locais ou caminhos internos do sistema.
- Se você fizer customizações locais, utilize caminhos dinâmicos como `~` ou `$env:USERPROFILE` antes de commitar ou compartilhar suas alterações.

---

## 📂 Estrutura do Projeto

```
docs/
  README_pt-BR.md
themes/
  zerotwo/
    IMGS/
      intellij.png
      terminal.png
    ascii.txt
    config.jsonc
    Microsoft.PowerShell_profile.ps1
    README.md
    settings.json
    Zerotwo.omp.json
.gitignore
install.ps1
README.md
```

---

## 🤝 Contribuições

Contribuições são super bem-vindas! Se você tem um tema que gostaria de compartilhar ou melhorias para o script instalador:

1. Faça um Fork do repositório.
2. Crie uma branch de feature (`git checkout -b theme/nome-do-seu-tema`).
3. Salve suas alterações com segurança (nunca envie credenciais pessoais ou caminhos absolutos locais).
4. Envie o push para a branch e abra um Pull Request.

<a href="https://github.com/OdevMatheus/my-terminal-themes/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=OdevMatheus/my-terminal-themes" />
</a>

---

## Licença

Este projeto é de código aberto e livre para uso. Consulte as configurações individuais de cada tema para obter licenças de ativos externos, quando aplicável.

---
