# Passos para o desenvolvimento do desafio

1. Criei um repositório no GitHub.
1. Upload do desafio enviado para branch `main`.
1. Criada uma branch `develop` para desenvolvimento.
1. Criada uma branch `feature/Dockerfile` para desenvolvimento do Dockerfile.

### Passos para o desenvolvimento do Dockerfile
1. Criado o arquivo `Dockerfile` com a imagem do `python` e com o conteúdo do desafio.
1. Alterado o arquivo `Dockerfile` para a imagem do `python:alpine3.13` para diminuir o tamanho da imagem.
1. Alterada a ordem das instruções para melhorar o cache do Docker.
1. Criado o arquivo `.dockerignore` para ignorar arquivos desnecessários para o build da imagem. 
1. Criado o arquivo `comments.sh` para executar o script e inserir os comentários na API.
1. Alterado o arquivo `Dockerfile` para copiar o script `comments.sh` para a imagem e instalação do curl.