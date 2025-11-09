# Documentação

Documentação do projeto de exemplo.

## Variáveis que precisam ser configuradas no Gitea em "Configurações" > "Ações" > "Segredos".

* ACTION_USERNAME=pipeline
* ACTION_PASSWORD=pipeline123456
* BASE_PATH_SERVER=server:3000
* BASE_PATH_REGISTRY=localhost:3000

## Comando para subir com o Docker, utilizando uma imagem do Gitea.

```shell
docker run --rm -it -p 3001:3001 localhost:3000/teste/back-end-api:runid35
```
