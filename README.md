# Backend Service

Atividade para avaliaçao de P1 - TESI-Docker desenvolvido em Node.js, com BD em MongoDB.

## 📦 Requisitos

- Docker
- (Opcional) MongoDB rodando localmente ou via container

---

## 🚀 Como executar

### 1. Build da imagem

```bash
docker build -t plsantos/backend-service .
```

Ou utilizar o docker-compose para subir o backend já com o MongoDB:

```bash
docker-compose up
```

## ⚙️ Variáveis de ambiente

| Nome                 | Descrição                               | Exemplo de valor                |
| -------------------- | --------------------------------------- | ------------------------------- |
| `URL_BANCO_DE_DADOS` | Endereço de conexão com o banco MongoDB | `mongodb://mongo:27017/tarefas` |

## 🐳 Imagem no DockerHub

📦 **Link:** [https://hub.docker.com/r/plsantos/backend-service](https://hub.docker.com/r/plsantos/backend-service)

Para baixar a imagem:

```bash
docker pull plsantos/backend-service
```
