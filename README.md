# Desafio Técnico - Sistema de Cadastro de Pessoas e Endereços

## 📋 Descrição

Este projeto tem como objetivo implementar um sistema de cadastro de pessoas e seus respectivos endereços. O modelo de dados foi baseado em uma relação 1:N (um para muitos), onde uma pessoa pode ter múltiplos endereços. O foco principal é demonstrar boas práticas de modelagem de dados, organização de código e uso de frameworks modernos.

---

## 🧱 Decisões Técnicas e Arquiteturais

- **Modelo Relacional**: O banco de dados foi modelado com base em uma estrutura relacional simples, com duas entidades principais (`Pessoa` e `Endereco`) e um relacionamento 1:N.
- **Separação por camadas**: O projeto foi dividido em camadas (Controller, Service, Repository) para manter a organização e a responsabilidade única de cada classe.
- **REST API**: A comunicação é realizada via API RESTful, o que facilita a integração com diferentes front-ends e serviços externos.
- **Validações**: Foram aplicadas validações nos dados de entrada para garantir a integridade das informações.
- **Persistência**: Utilizamos um banco de dados relacional (por exemplo, PostgreSQL ou H2 em ambiente de testes).

---

## 📦 Frameworks e Bibliotecas Utilizadas

- **JPA**: Simplifica o acesso ao banco de dados e reduz significativamente o boilerplate de código.
- **JSF**
- **PRimesFaces**

---

## 🚀 Como Compilar e Executar o Projeto

### Pré-requisitos

- Java
- Maven
- Git (opcional)

### Passos

1. Clone o repositório:

   ```bash
   git clone https://github.com/seu-usuario/desafio-pessoa-endereco.git
   cd desafio-pessoa-endereco
   ```

2. Compile e execute o projeto:

   ```bash
   ./mvnw tomcat:run
   ```

3. Acesse a API no navegador ou via ferramentas como Postman:

   ```
   http://localhost:8080/api/pessoas
   ```

---

## ✅ Executando os Testes

Para rodar os testes automatizados, utilize o comando abaixo:

```bash
./mvnw test
```

Os testes cobrem funcionalidades básicas de cadastro, listagem e validações de pessoas e endereços, garantindo que as regras de negócio sejam corretamente aplicadas.

---

## 📝 Nota Adicional

- O projeto segue princípios de **Clean Code**, **SOLID** e **boas práticas de REST**.
