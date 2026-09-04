# Calculadora Financeira — Render Trace

## Sobre
Calculadora financeira desenvolvida para o Projeto Integrador da SPTech.
A ferramenta estima os prejuízos causados por **transbordamento** e **paradas operacionais**, além de demonstrar o potencial financeiro da solução IoT Render Trace.

## Funcionalidades
- Cálculo de massa perdida;
- Cálculo de produto não gerado;
- Cálculo de prejuízo por transbordamento;
- Cálculo de prejuízo por downtime;
- Cálculo do prejuízo mensal e anual;
- Estimativa de ganho com a solução;
- Projeção financeira de 1 e 3 anos.

## Tecnologias
- HTML5
- JavaScript

## Como utilizar
1. Abra o arquivo `index.html` no navegador.
2. Informe os dados da operação.
3. Clique em **Calcular**.
4. Confira os resultados financeiros.

## Fórmulas principais

**Massa Perdida**
```text
Insumo Processado × Perda (%)
```

**Produto Não Gerado**
```text
Massa Perdida × Rendimento (%)
```

**Prejuízo por Transbordamento**
```text
Produto Não Gerado × Valor do Produto
```

**Prejuízo por Downtime**
```text
Horas Paradas × Custo da Hora
```

**Prejuízo Mensal**
```text
Prejuízo por Transbordamento + Prejuízo por Downtime
```

**Prejuízo Anual**
```text
Prejuízo Mensal × 12
```

## Objetivo
Demonstrar, de forma simples, o impacto financeiro das perdas operacionais e o potencial de recuperação proporcionado pelo monitoramento IoT.

## Projeto
Render Trace — Projeto Integrador SPTech