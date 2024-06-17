# Docker Manager

**Docker Manager** é um script simples para gerenciar containers Docker com um prefixo específico. Este script permite iniciar ou parar todos os containers que correspondem ao prefixo fornecido.

## Uso

```bash
docker-manager.sh <start|stop> <prefixo>
```

## Exemplos
- Para iniciar todos os containers com o prefixo enova:

```bash
docker-manager.sh start enova
```

- Para parar todos os containers com o prefixo enova:
```bash
docker-manager.sh stop enova
```

## Opções
`-h`, `--help`: Mostra a mensagem de ajuda.

## Instalação
1. Clone o repositório ou copie o script para o seu diretório desejado.
2. Certifique-se de que o script é executável:

```bash
chmod +x ~/bin/docker-manager.sh
```

3. Adicione a pasta `bin` ao seu PATH (caso ainda não esteja):
- Adicione a linha abaixo no seu arquivo `~/.bashrc` ou `~/.zshrc`, dependendo do seu shell.

```bash
export PATH="$HOME/bin:$PATH"
```

- Depois de editar o arquivo, aplique as mudanças:
```bash
source ~/.bashrc  # ou source ~/.zshrc
```

## Uso do script:
- Para mostrar ajuda:
```bash
docker-manager --help
docker-manager -h
```

- Para parar containers com um prefixo específico:
```bash
docker-manager stop enova
```

Licença

Este arquivo `README.md` fornece uma documentação clara e detalhada do script `docker-manager`, incluindo instruções de uso, exemplos e instalação. Você pode adicionar este arquivo ao seu repositório para ajudar outros usuários a entenderem e utilizarem o script. ✔️

