# Render Trace - Banco de dados (Sprint 1)

- Esse documento descreve o banco de dados estruturado dessa aplicação. Scripts de modelagem (DDL), inserção de dados (DML) e consulta de dados do banco relacional para o sistema de moniroramento no processo de reciclagem animal.



### 1. Tabela `usuario`

| Coluna       | Metadado         | Descrição                                     |
|:-------------|:-----------------|:----------------------------------------------|
| `id`         | PK (Primary Key) | Identificação do Usuário                      |
| `nome`       | NOT NULL         | Nome do Usuário                               |
| `email`      | UNIQUE           | Email do Usuário                              |
| `senha`      | NOT NULL         | Credencial do usuário                         |
| `dt_cadastro`| CURRENT_TIMESTAMP| Data registro do usuário                      |
| `status`     | DEFAULT 1        | Status (ativo, inativo)                       |
| `role`       | CHECK            | Permissão de usuário (admin, usuario, gestor) |

### 2. Tabela `empresa`

| Coluna        | Metadado         | Descrição                                     |
|:--------------|:-----------------|:----------------------------------------------|
| `id`          | PK (Primary Key) | Identificação do Usuário                      |
| `razao_social`| NOT NULL         | Nome da empresa                               |
| `cnpj`        | UNIQUE           | CNPJ da empresa                               |
| `dt_cadastro` | CURRENT_TIMESTAMP| Data registro do usuário                      |
| `status`      | DEFAULT 1        | Status (ativo, inativo)                       |

### 3. Tabela `unidade`

| Coluna        | Metadado         | Descrição                                       |
|:--------------|:-----------------|:------------------------------------------------|
| `id`          | PK (Primary Key) | Identificação do Usuário                        |
| `empresa_id`  | FK               | Identificação da empresa do qual a und. pertence|
| `nome`        | NOT NULL         | Nome da unidade                                 |
| `logradouro`  | NOT NULL         | Rua/Logradouro da unidade                       |
| `bairro`      | NOT NULL         | Bairro da unidade                               |
| `cidade`      | NOT NULL         | Cidade da unidade                               |
| `estado`      | NOT NULL         | Estado da unidade                               |
| `cep`         | NOT NULL         | CEP da unidade                                  |
| `dt_cadastro` | CURRENT_TIMESTAMP| Data registro do usuário                        |
| `status`      | DEFAULT 1        | Status (ativo, inativo)                         |

### 4. Tabela `tolva`

| Coluna           |   Metadado         | Descrição                                       |
|:-----------------|:-----------------|:--------------------------------------------------|
| `id`             | PK (Primary Key) | Identificação do Usuário                          |
| `unidade_id`     | FK               | Identificação da empresa do qual a tolva. pertence|
| `altura`         | NOT NULL         | Altura da tolva                                   |
| `capacidade`     | NOT NULL         | Capacidade máxima da tolva                        |
| `residuo`        | NOT NULL         | Resíduo aceitável da tolva                        |
| `residuo_entrada`| NOT NULL         | Data e Hora da entrada do resíduo                 |
| `residuo_saida`  | NOT NULL         | Data e Hora da saída do resíduo                   |
| `status`         | DEFAULT 1        | Status (ativo, inativo)                           |

### 5. Tabela `sensor`

| Coluna         | Metadado         | Descrição                                       |
|:---------------|:-----------------|:------------------------------------------------|
| `id`           | PK (Primary Key) | Identificação do Usuário                        |
| `codigo`       | NOT NULL         | Código de identificação física do sensor        |
| `tolva_id`     | FK               | Identificação da tolva do qual o sensor pertence|
| `dt_instalacao`| CURRENT_TIMESTAMP| Data registro da instalação do sensor           |
| `status`       | DEFAULT 1        | Status (ativo, inativo)                         |

### 6. Tabela `leitura_sensor`

| Coluna            | Metadado         | Descrição                                               |
|:------------------|:-----------------|:--------------------------------------------------------|
| `id`              | PK (Primary Key) | Identificação do Usuário                                |
| `sensor_id`       | NOT NULL         | Identificação do sensor do qual o registro pertence     |
| `distancia`       | NOT NULL         | Medida presente na leitura do sensor                    |
| `nivel_percentual`| NULL             | Baseado na medida e capacidade da tolva calcular o nivel|
| `estado`          | CHECK            | Status (baixo, medio, alto, critico)                    |
| `dt_leitura`      | CURRENT_TIMESTAMP| Data registro da leitura                                |
