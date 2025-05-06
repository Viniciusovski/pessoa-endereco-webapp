
# 🧑‍💼 Aplicação Web de Cadastro de Pessoas e Endereços

Aplicação web completa para cadastro de pessoas e endereços utilizando **Java EE** com **JSF**, **PrimeFaces**, **JPA/Hibernate** e **EJB**.

---

## 📋 Funcionalidades

- CRUD completo de pessoas e endereços  
- Relacionamento 1-N entre Pessoa e Endereço  
- Interface responsiva com PrimeFaces  
- Validações em formulários  
- Filtros e paginação em listagens  
- Integração com PostgreSQL  

---

## 🛠 Tecnologias

- **Java EE 8**: JSF 2.3, JPA 2.2, EJB 3.2, CDI 2.0  
- **PrimeFaces 10**: Componentes de interface  
- **Hibernate 5.4**: Implementação da JPA  
- **PostgreSQL 13**: Banco de dados relacional  
- **Payara Server 5**: Servidor de aplicação  
- **Docker**: Containerização de ambientes  

---

## 🚀 Como Executar

### Pré-requisitos

- Java JDK 11+  
- Maven 3.6+  
- Docker (opcional)  

### 1. Com Docker (recomendado)

```bash
# Build da aplicação
mvn clean package

# Build e execução dos containers
docker-compose up -d
```

Acesse: [http://localhost:8080/pessoa-endereco-webapp/pessoa/lista.xhtml](http://localhost:8080/pessoa-endereco-webapp/pessoa/lista.xhtml)

### 2. Localmente

```bash
# Compilar
mvn clean package

# Executar PostgreSQL (via Docker)
docker run --name postgres-pessoa   -e POSTGRES_USER=postgres   -e POSTGRES_PASSWORD=postgres   -e POSTGRES_DB=pessoa_db   -p 5432:5432   -d postgres:13

# Fazer deploy no Payara
asadmin deploy target/pessoa-endereco-webapp.war
```

---

## 🐳 Configuração Docker

O arquivo `docker-compose.yml` configura:

- **Aplicação**: Payara Micro com a aplicação  
- **Banco de dados**: PostgreSQL 13  
- **Volume**: Persistência de dados do PostgreSQL  

---

## 🗃 Estrutura do Banco

### Tabela `pessoa`

| Campo            | Tipo         | Descrição                    |
|------------------|--------------|------------------------------|
| `id`             | SERIAL       | Chave primária              |
| `nome`           | VARCHAR(150) | Nome completo                |
| `data_nascimento`| DATE         | Data de nascimento           |
| `sexo`           | VARCHAR(2)   | M (Masculino) ou F (Feminino)|

### Tabela `endereco`

| Campo       | Tipo         | Descrição              |
|-------------|--------------|------------------------|
| `id`        | SERIAL       | Chave primária         |
| `logradouro`| VARCHAR(100) | Rua/Avenida            |
| `numero`    | INTEGER      | Número                 |
| `cidade`    | VARCHAR(100) | Cidade                 |
| `estado`    | VARCHAR(2)   | UF                     |
| `cep`       | VARCHAR(8)   | CEP                    |
| `id_pessoa` | INTEGER      | FK para pessoa         |

---

## 📂 Estrutura do Projeto

```
src/
├── main/
│   ├── java/
│   │   └── com/exemplo/
│   │       ├── controller/   # Managed Beans JSF
│   │       ├── model/        # Entidades JPA
│   │       ├── repository/   # DAOs
│   │       ├── service/      # EJBs
│   │       └── util/         # Utilitários
│   ├── resources/
│   │   ├── META-INF/
│   │   │   └── persistence.xml
│   │   └── messages.properties
│   └── webapp/
│       ├── WEB-INF/
│       ├── resources/
│       └── pessoa/           # Views JSF
└── test/                     # Testes
```

---

## 🔧 Configurações

- **Banco de dados**: Editar `src/main/resources/META-INF/persistence.xml`  
- **Tema PrimeFaces**: Alterar em `src/main/webapp/WEB-INF/web.xml`  
- **Mensagens**: `src/main/resources/messages.properties`  

---

## 📊 Operações Disponíveis

- Listar, cadastrar, editar e remover pessoas  
- Adicionar múltiplos endereços para cada pessoa  
- Filtrar pessoas por nome  
- Validação de formulários  

---

## 📝 Licença

Este projeto está sob a licença **MIT**. Veja o arquivo `LICENSE` para mais detalhes.
