# Projeto de Banco de Dados – Engenharia da Computação  **Universidade Federal do Maranhão (UFMA)**  


## 📌 Apresentação do Projeto  
Este projeto foi desenvolvido como parte da disciplina de Banco de Dados, do curso de Engenharia da Computação na Universidade Federal do Maranhão (UFMA). O principal objetivo é aplicar os conhecimentos teóricos e práticos adquiridos em sala na modelagem, estruturação e manipulação de um banco de dados relacional.

## 🧱 Componentes do Sistema  
O sistema foi projetado para atender a uma aplicação realista (exemplo: sistema de gerenciamento de biblioteca, loja, escola, etc. — *substituir conforme o contexto real do projeto*).  

### 🗂️ Entidades  
- **Usuário**: Armazena informações dos usuários do sistema (nome, e-mail, CPF, etc.).
- **Produto/Serviço**: Representa itens cadastrados ou serviços oferecidos.
- **Pedido/Transação**: Relaciona usuários com os produtos/serviços adquiridos.
- **Pagamento**: Dados relacionados ao método e status do pagamento.
- **Endereço**: Informações de localização associadas aos usuários.

### 🔗 Relacionamentos  
- Um **usuário** pode fazer vários **pedidos**.
- Um **pedido** pode conter vários **produtos**.
- Um **produto** pode estar presente em vários **pedidos** (relacionamento muitos para muitos com tabela intermediária).
- Cada **pedido** possui um **pagamento**.
- Um **usuário** pode ter um ou mais **endereços**.

## 📚 Assuntos Abordados  
- Modelagem Conceitual (DER – Diagrama Entidade Relacionamento)  
- Modelagem Lógica (tradução DER para tabelas)  
- Normalização de dados  
- SQL: comandos DDL e DML  
- Integridade referencial e chave estrangeira  
- Consultas SQL com `JOIN`, `GROUP BY`, `HAVING`, `ORDER BY`  
- Criação de índices e otimização de consultas

## 🛠️ Ferramenta Utilizada  
A ferramenta escolhida para a modelagem e desenvolvimento do banco de dados foi o **DBDiagram.io** (gratuita e acessível via navegador) para o DER, e o **PostgreSQL** como SGBD para execução prática. Ambas são de uso livre e amplamente utilizadas na indústria.

## ✅ Resultados  
- Modelo conceitual aprovado com consistência e integridade entre as entidades e relacionamentos.
- Tabelas criadas com chaves primárias e estrangeiras corretamente definidas.
- Dados populados com `INSERT INTO`.
- Consultas elaboradas com foco em análise e recuperação de dados.
- Projeto validado com sucesso no ambiente PostgreSQL.

---

## 👨‍💻 Feito por  
- **Juan Pablo F. M. Macedo**  
- **Noam Willyan de Araujo Costa**  
- **Matheus Donavan Carvalho Sousa**

📅 **Período de desenvolvimento:** 09/05/2025 – 12/05/2025
