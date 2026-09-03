# Render Trace - Banco de Dados

## 1. Sobre o projeto

O Render Trace é uma solução de monitoramento aplicada ao processo de reciclagem animal, com foco no acompanhamento do nível de material armazenado em tanques de armazenamento.

O banco de dados é responsável por armazenar informações sobre empresas, unidades, tanques, sensores, leituras realizadas e períodos de armazenamento, permitindo o acompanhamento operacional e a consulta de dados históricos.

A solução busca fornecer informações para identificação de situações críticas, análise do comportamento do nível dos tanques e apoio à tomada de decisões preventivas.

## 2. Tecnologias
- MySQL Server
- MySQL Workbench
- SQL

## 3. Estrutura do banco

O banco de dados é composto pelas seguintes tabelas:

- `usuario` → armazena os dados de acesso e identificação dos usuários do sistema, incluindo seu tipo de acesso.

- `empresa` → armazena os dados cadastrais das empresas clientes.

- `unidade` → representa as unidades industriais pertencentes às empresas, armazenando seus dados de localização.

- `tanque` → armazena as características dos tanques de armazenamento monitorados, como altura, capacidade, tipo de resíduo e status.

- `sensor` → registra os sensores ultrassônicos utilizados no monitoramento, incluindo seu código, tanque associado, data de instalação e status.

- `leitura_sensor` → armazena o histórico das medições realizadas pelos sensores, incluindo distância medida, nível percentual, estado do tanque e data/hora da leitura.

- `periodo_armazenamento` → registra os períodos em que determinado tanque esteve em processo de armazenamento, contendo data/hora de entrada e, quando finalizado, data/hora de saída.

## 4. Monitoramento

O sistema utiliza sensores ultrassônicos para realizar medições da distância entre o sensor e a superfície do material armazenado.

Cada leitura é registrada no banco de dados contendo:

- distância medida em centímetros;
- nível percentual calculado;
- estado do tanque (`baixo`, `medio`, `alto` ou `critico`);
- data e hora da leitura.

O armazenamento dessas leituras permite acompanhar o comportamento do nível dos tanques ao longo do tempo e identificar situações que necessitam de atenção operacional.

## 5. Histórico de armazenamento

A tabela `periodo_armazenamento` registra os períodos em que um tanque esteve armazenando material.

Cada período possui:

- data e hora de entrada;
- data e hora de saída, quando o armazenamento é finalizado;
- identificação do tanque relacionado.

Quando a data de saída está vazia (`NULL`), significa que o período de armazenamento ainda está em andamento.

Esse histórico permite consultar períodos anteriores e identificar quais tanques estão ou estiveram em processo de armazenamento.

## 6. Relacionamentos

A estrutura do banco segue o fluxo:

Empresa → Unidade → Tanque de armazenamento → Sensor → Leitura do sensor

Além disso:

Tanque de armazenamento → Período de armazenamento

Uma empresa pode possuir uma ou mais unidades industriais.

Cada unidade pode possuir um ou mais tanques de armazenamento.

Um tanque pode estar associado a um sensor responsável pelo monitoramento do seu nível.

Cada sensor pode possuir diversas leituras registradas ao longo do tempo.

Um tanque também pode possuir diversos períodos de armazenamento, permitindo manter o histórico operacional.

## 7. Objetivo do banco de dados

O banco de dados tem como objetivo fornecer uma base estruturada para:

- armazenar os dados dos clientes e suas unidades;
- cadastrar e acompanhar os tanques de armazenamento;
- registrar os sensores utilizados no monitoramento;
- armazenar o histórico das leituras;
- identificar estados críticos;
- consultar o histórico de armazenamento;
- fornecer dados para o dashboard da aplicação;
- apoiar análises operacionais e tomada de decisões.