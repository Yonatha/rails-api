# README


Realize o clone do projeto

```shell
git clone https://github.com/Yonatha/rails-api.git
```
Acesse o diretório
```shell
cd rails-api
```
Considerando que o docker e docker-compose estejam devidamente instalados, execute:

```shell
docker-compose up
```

Acesse http://localhost:3000


### Testando a API com Postman

Importe a collection para testar a API contida no arquivo "Ruptiva - Code Challenge Back-end.postman_collection.json"

### Salvando variáveis de ambiente do retorno da autenticação da API 

postman.setEnvironmentVariable('access-token', postman.getResponseHeader("access-token"));
postman.setEnvironmentVariable('client', postman.getResponseHeader("client"));
postman.setEnvironmentVariable('expiry', postman.getResponseHeader("expiry"));
postman.setEnvironmentVariable('token-type', postman.getResponseHeader("token-type"));
postman.setEnvironmentVariable('uid', uid);
