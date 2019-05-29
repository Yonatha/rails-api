# README

### Salvando variáveis de ambiente do retorno da autenticação da API 

postman.setEnvironmentVariable('access-token', postman.getResponseHeader("access-token"));
postman.setEnvironmentVariable('client', postman.getResponseHeader("client"));
postman.setEnvironmentVariable('expiry', postman.getResponseHeader("expiry"));
postman.setEnvironmentVariable('token-type', postman.getResponseHeader("token-type"));
postman.setEnvironmentVariable('uid', uid);