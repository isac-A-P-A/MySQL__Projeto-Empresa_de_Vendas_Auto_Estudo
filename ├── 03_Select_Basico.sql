/*
=========================================================
ETAPA 3 - CONSULTAS E MANIPULAÇÃO DOS DADOS

Nesta etapa são realizadas consultas no banco de dados
"Empresa_Vendas", utilizando os dados inseridos nas etapas
anteriores.

O objetivo é praticar diferentes formas de consultar,
filtrar, ordenar e organizar os dados das tabelas.

Conceitos e comandos utilizados:

• SELECT
• FROM
• WHERE
• ORDER BY
• ASC
• DESC
• LIMIT
• DISTINCT
• MAX
• ALIAS (AS)

Objetivo:
Desenvolver a prática com consultas SQL, utilizando os
dados da empresa para realizar buscas, filtros, ordenações
e análises simples.

Os desafios desta etapa foram desenvolvidos como parte
do meu autoestudo, buscando reforçar na prática os
conceitos aprendidos em SQL.
=========================================================

📝 Desafio 1

Mostre todos os clientes cadastrados.

📝 Desafio 2

Mostre somente nome e idade dos clientes.

📝 Desafio 3

Encontre os clientes que moram em Curitiba.

📝 Desafio 4

Mostre os produtos do mais caro para o mais barato.

📝 Desafio 5

Mostre apenas os 5 primeiros produtos.

📝 Desafio 6

Descubra quais cidades aparecem na tabela Clientes, sem repetir.

📝 Desafio 7

Mostre o nome dos produtos, mas faça a coluna aparecer com um nome diferente no resultado.
*/

-- 📝 Desafio 1 - Mostre todos os clientes cadastrados.

select * from empresa_vendas.clientes;

-- 📝 Desafio 2 - Mostre somente nome e idade dos clientes.

select nome, idade from empresa_vendas.clientes;

-- 📝 Desafio 3 - Encontre os clientes que moram em Curitiba.

select id_cliente, cidade, estado
from empresa_vendas.clientes
WHERE cidade = 'Curitiba'
order by id_cliente;


-- 📝 Desafio 4 - Mostre os produtos do mais caro para o mais barato.

select nome_produto, preco
from empresa_vendas.produtos
order by preco desc;


-- 📝 Desafio 5 - Mostre apenas os 5 primeiros produtos.

select id_produto, nome_produto
from empresa_vendas.produtos
limit 0, 5;


-- 📝 Desafio 6 - Descubra quais cidades aparecem na tabela Clientes, sem repetir.

select distinct cidade
from empresa_vendas.clientes;

-- 📝 Desafio 7 - Mostre o nome dos produtos, mas faça a coluna aparecer com um nome diferente no resultado.

select nome_produto as produtos
from empresa_vendas.produtos;
