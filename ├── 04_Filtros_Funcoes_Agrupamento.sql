/*
=========================================================
ETAPA 4 - FILTROS, FUNÇÕES E AGRUPAMENTO DE DADOS

Nesta etapa serão realizadas consultas utilizando filtros,
funções e agrupamentos para obter informações mais
específicas sobre os dados do banco de dados
"Empresa_Vendas".

Conceitos e comandos utilizados:

• WHERE
• AND
• OR
• BETWEEN
• IN
• LIKE
• COUNT
• SUM
• AVG
• MIN
• MAX
• GROUP BY
• HAVING

Objetivo:
Aprofundar a utilização das consultas SQL, permitindo
filtrar informações específicas, realizar cálculos e
agrupar dados para obter análises mais completas sobre
clientes, produtos e vendas.
=========================================================


Desafios da Etapa 4

📝 Desafio 1

AND — Encontre os clientes que moram em Curitiba e têm mais de 25 anos.

📝 Desafio 2

OR — Encontre os clientes que moram em Curitiba ou Osasco.

📝 Desafio 3

BETWEEN — Encontre produtos dentro de uma determinada faixa de preço.

📝 Desafio 4

IN — Encontre clientes que moram em determinadas cidades.

📝 Desafio 5

LIKE — Encontre produtos utilizando parte do nome.

📝 Desafio 6

COUNT() — Descubra quantos clientes estão cadastrados.

📝 Desafio 7

AVG() — Descubra a idade média dos clientes.

📝 Desafio 8

SUM() — Calcule a quantidade total de produtos vendidos.

📝 Desafio 9

GROUP BY — Descubra quantos clientes existem em cada cidade.

📝 Desafio 10

HAVING — Faça um agrupamento e filtre os resultados agrupados.
*/

-- 📝 Desafio 1 - AND — Encontre os clientes que moram em Curitiba e têm mais de 25 anos.

select cidade, idade from empresa_vendas.clientes
where cidade = 'curitiba' and idade > 25;

-- 📝 Desafio 2 OR — Encontre os clientes que moram em Curitiba ou Osasco.

select cidade, idade from empresa_vendas.clientes
where cidade = 'curitiba' or cidade = 'Osasco';

--📝 Desafio 3 - BETWEEN — Encontre produtos dentro de uma determinada faixa de preço.

Select nome_produto, preco from empresa_vendas.produtos
where preco between 300.00 and 1000.00
order by preco desc;

--📝 Desafio 4 IN — Encontre clientes que moram em determinadas cidades.

select cidade, idade from empresa_vendas.clientes
where cidade in ('curitiba', 'Osasco', 'Barueri');

--📝 Desafio 5 - LIKE — Encontre produtos utilizando parte do nome.

select nome_produto from empresa_vendas.produtos
where nome_produto like '%Armário%';

-- 📝 Desafio 6 - COUNT() — Descubra quantos clientes estão cadastrados.

select count(nome) from empresa_vendas.clientes;

-- 📝 Desafio 7 - AVG() — Descubra a idade média dos clientes.

select avg(idade) from empresa_vendas.clientes;

--📝 Desafio 8 - SUM() — Calcule a quantidade total de produtos vendidos.

select sum(quantidade) from empresa_vendas.vendas;

--📝 Desafio 9 - GROUP BY — Descubra quantos clientes existem em cada cidade.

select cidade, count(nome) as total from empresa_vendas.clientes
group by cidade order by total desc;

--📝 Desafio 10 - HAVING — Faça um agrupamento e filtre os resultados agrupados.

select cidade, count(nome) as total from empresa_vendas.clientes
group by cidade having total >= 2 order by total desc;
