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


### Passos para o desenvolvimento do Workflow do GitHub
1. Criado o arquivo `.github/workflows/docker-build.yaml` com o workflow para o build da imagem.
1. Alterada a identação do arquivo `Dockerfile` para acionamento automático do workflow.
1. Build e Push executados com sucesso.

![Build and Push](images/dockerhub-tag1.png)
