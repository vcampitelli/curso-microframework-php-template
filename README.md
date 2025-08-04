# Curso "Criando nosso próprio microframework PHP"

Esse é o _microframework_ criado durante o curso "Criando nosso próprio microframework PHP" do [@vcampitelli](https://github.com/vcampitelli).

## Estrutura de arquivos

- Em `app/`, crie os arquivos de sua aplicação E-commerce
- Em `framework/`, crie os arquivos de seu framework (agnóstico do E-commerce)
- Em `config/routes.php`, configure o sistema de rotas

```
🗂️
├── 📂 app/
│   └── 👉 Crie arquivos de sua aplicação E-commerce aqui
├── ⚙️️ compose.yaml
├── 🐘 composer.json
├── 📂 config/
│   └── 🐘 routes.php
├── 🛠️ docker-php-entrypoint
├── 🐋 Dockerfile
├── 📂 framework/
│   └── 👉 Crie arquivos de seu framework agnóstico aqui
├── ⚙️️ phpcs.xml
├── ⚙️️ phpmd.xml
├── ⚙️️ phpstan.neon
├── 📂 public/
│   └── 🐘 index.php
└── 📄 README.md
```

## Execução do projeto

- Clone este repositório
  ```shell
  git clone git@github.com:vcampitelli/microframework-php.git
  ```
- Instale o [Docker](https://docs.docker.com/get-docker) e execute o comando abaixo dentro da pasta criada:
  ```shell
  docker compose up -d
  ```
- Acesse [`localhost:9000`](http://localhost:9000) em seu navegador

## Checagem das ferramentas de qualidade

- Para executar **todas as ferramentas** de qualidade:
  ```shell
  docker compose exec app composer run quality
  ```
- Para executar **apenas o PHPCS**:
  ```shell
  docker compose exec app composer phpcs
  ```
- Para executar **apenas o PHPMD**:
  ```shell
  docker compose exec app composer phpmd
  ```
- Para executar **apenas o PHPStan**:
  ```shell
  docker compose exec app composer phpstan
  ```
