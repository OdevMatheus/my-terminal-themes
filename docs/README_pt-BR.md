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

## Segurança de Dados / Posso subir pro Git?

**O arquivo `Zerotwo.omp.json` principal (na raiz) é 100% seguro para ser subido para o GitHub/Git.** 
O Oh My Posh renderiza propriedades relativas através de variáveis de ambiente (`{{ .UserName }}`, `{{ .Path }}`), então ele não salva informações sensíveis, chaves ou caminhos de diretório estáticos do seu computador.

**Atenção aos arquivos gerados em sua pasta `.config` e `.profile`!** 
O projeto possui alguns arquivos da pasta `themes/zerotwo/` como o `config.jsonc` (do fastfetch) ou o seu `Microsoft.PowerShell_profile.ps1` que possuem o caminho restrito da sua máquina (ex: `C:/Users/Mathe/...`). Caso queira distribuir isso em um repositório git público, lembre-se de usar variáveis como `$env:USERPROFILE` no script ou orientar o usuário a substituir no JSON do Fastfetch. 

## Como Instalar e Configurar na Sua Máquina

1. Certifique-se de que o **Oh My Posh** está instalado. Veja como na [documentação oficial](https://ohmyposh.dev/docs/installation/windows).
2. Para que os ícones do Git e linguagens apareçam corretamente, utilize uma fonte do projeto [Nerd Fonts](https://www.nerdfonts.com/) em seu Terminal (ex: `FiraCode Nerd Font`, `MesloLGM Nerd Font`).

### Configurando o arquivo do Oh My Posh
Mova ou faça uma cópia do arquivo `Zerotwo.omp.json` para uma pasta de temas em seu PC ou aponte seu arquivo de perfil diretamente para o repositório.

Abra o seu perfil do powershell:
```powershell
notepad $PROFILE
```

E substitua ou adicione a linha de inicialização, trocando `C:/caminho/para/` pela localização correta do seu arquivo:
```powershell
oh-my-posh init pwsh --config "C:/caminho/para/Zerotwo.omp.json" | Invoke-Expression
```

### Removendo Dependência do Nome de Usuário de Perfis Anteriores 
Se em outros arquivos do seu perfil do Terminal/PowerShell houveram modificações estáticas para chamar scripts no caminho de `C:/Users/Mathe`, basta alterá-los para torná-los universais (dinâmicos para qualquer pc):

- No seu **Perfil do PowerShell**:
  Troque `C:/Users/Mathe/.config/fastfetch/config.jsonc` para:
  `$env:USERPROFILE/.config/fastfetch/config.jsonc`
- No **config.jsonc** (Fastfetch):
  Apesar do Fastfetch utilizar caminhos absolutos, você pode usar um til `~` que no bash ou powershell mais recente fará referência à *home*:
  `"source": "~/.config/fastfetch/ascii.txt"`
