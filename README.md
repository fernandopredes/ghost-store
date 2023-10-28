# Ghost Hunting API 👻

Uma API RESTful criada com Ruby on Rails para gerenciar itens relacionados à caça-fantasmas.

## Funcionalidades

- Listar todos os itens.
- Obter detalhes de um item específico pelo seu ID.
- Listar itens por categoria.
- Listar todas as categorias.

## Instalação e Configuração

### 1. Clone o repositório

```bash
git clone https://link-do-seu-repositorio.git
cd ghost_hunting_api
```
### 2. Configurar o banco de dados

```bash
rails db:create db:migrate
```

### 3. Iniciar o servidor Rails

```bash
rails server
```

### Agora você pode acessar a API em http://localhost:3000.

## Endpoints

# Itens

    Listar todos os itens: GET /items
    Obter um item pelo ID: GET /items/:id
    Listar itens por categoria: GET /categories/:category_slug/items

# Categorias

    Listar todas as categorias: GET /categories
