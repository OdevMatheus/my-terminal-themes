# Zero Two Oh My Posh Theme

🇺🇸 [Read in English](../README.md)

Um tema personalizado para o [Oh My Posh](https://ohmyposh.dev/), inspirado na paleta de cores da personagem Zero Two (Darling in the Franxx) utilizando tons de vermelho e rosa. 

O tema apresenta blocos modernos, Powerline limpo e informações úteis de sistema, horário, git branches/commits e suporte nativo às principais linguagens de programação.

## Características

- **Prompt Esquerdo:**
  - SO e sessão do usuário (`WSL/Windows`).
  - Caminho de diretório simplificado (máximo de 3 subpastas).
  - Status avançado do Git (`HEAD`, *commits*, arquivos em *staging*, *modificados*, *stash* e tracking *upstream*).
  - Reconhecimento automático do ambiente das seguintes tecnologias: `Java`, `Node`, `Python`, `Go`, `Rust` e `.NET`.
- **Prompt Direito:**
  - Tempo de execução dos comandos.
  - Informações do sistema (uso de RAM em %).
  - Relógio de tempo real (`HH:MM:SS`).
- **Input Limpo:** O cursor sempre fica em uma nova linha abaixo, com indicação interativa em caso de erros no terminal (`❯` vermelho).
- **Windows Terminal:** Inclui um arquivo `settings.json` pré-configurado para a melhor experiência visual.
- **Fastfetch:** Arte em ASCII pronta (`ascii.txt`) e configurações de estilo (`config.jsonc`).

## Instalação

Você tem duas formas de instalar as configurações: **Automatizada** (usando nosso script) ou **Manual**.

Antes de começar, certifique-se de que você possui instalados:
1. [Oh My Posh](https://ohmyposh.dev/docs/installation/windows)
2. [Fastfetch](https://github.com/fastfetch-cli/fastfetch) (ex: `winget install fastfetch`)
3. Uma fonte do projeto [Nerd Fonts](https://www.nerdfonts.com/) (ex: `FiraCode Nerd Font` ou `MesloLGM Nerd Font`).

---

### Opção 1: Instalação Automatizada (Recomendado)

Disponibilizamos um script (`install.ps1`) que copia automaticamente todos os arquivos necessários e **faz backup do seu Windows Terminal settings atual** antes de substituí-lo.

1. Abra o PowerShell na pasta raiz do repositório.
2. Execute o script:
   ```powershell
   .\install.ps1
   ```
3. Siga o menu interativo para selecionar o tema `zerotwo`.
4. Reinicie seu terminal ou recarregue seu perfil (`. $PROFILE`).

---

### Opção 2: Instalação Manual

Se preferir ter controle total sobre para onde seus arquivos vão, você pode copiar tudo manualmente:

#### 1. Oh My Posh
Mova o arquivo `Zerotwo.omp.json` para uma pasta de sua escolha (ex: `~/.config/oh-my-posh/Zerotwo.omp.json`). Em seguida, edite seu perfil do PowerShell (`notepad $PROFILE`) e adicione a inicialização:
```powershell
oh-my-posh init pwsh --config "~/.config/oh-my-posh/Zerotwo.omp.json" | Invoke-Expression
```

#### 2. Fastfetch
Copie os arquivos da pasta `themes/zerotwo/` para a sua pasta de configurações do Fastfetch (geralmente `~/.config/fastfetch/`):
- `config.jsonc`
- `ascii.txt`

*Nota: Certifique-se de que a propriedade `"source"` dentro do `config.jsonc` aponte para o local correto do seu `ascii.txt` (ex: `"~/.config/fastfetch/ascii.txt"`).*

#### 3. Configurações do Windows Terminal
Para aplicar as cores exatas e o estilo da janela, copie o arquivo `settings.json` presente em `themes/zerotwo/settings.json` e substitua na pasta LocalState do Windows Terminal:
```text
%LOCALAPPDATA%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
```
*(Não se esqueça de fazer um backup do seu arquivo original antes de substituir!)*

## Segurança de Dados / Posso subir pro Git?

**O arquivo principal `Zerotwo.omp.json` é 100% seguro para ser subido para o GitHub/Git.** 
O Oh My Posh renderiza propriedades relativas através de variáveis de ambiente (`{{ .UserName }}`, `{{ .Path }}`), então ele não salva informações sensíveis do seu computador.

Se você modificar o `config.jsonc` ou o `Microsoft.PowerShell_profile.ps1` local com caminhos restritos (ex: `C:/Users/SeuNome/...`), lembre-se de substituí-los por variáveis como `$env:USERPROFILE` ou `~` antes de publicar na internet.