/*
=========================================================
ETAPA 2 - INSERÇÃO DOS DADOS

Nesta etapa são inseridos dados fictícios nas tabelas do
banco de dados "Empresa_Vendas", simulando informações
que poderiam existir em uma empresa de vendas.

Conceitos e comandos utilizados:

• INSERT INTO
• VALUES

Objetivo:
Popular as tabelas com dados consistentes para possibilitar
a execução de consultas SQL, filtros, junções e análises
nas próximas etapas do projeto.
=========================================================
*/

-- Inserção dos clientes cadastrados.
insert into clientes (nome, cidade, estado, idade)
values
    ('Ronaldo', 'Osasco', 'São Paulo', 22),
    ('Gabriel', 'Curitiba', 'Paraná', 29),
    ('Bruno', 'Curitiba', 'Paraná', 29),
    ('Cinthia', 'Barueri', 'São Paulo', 27),
    ('Guilherme', 'Osasco', 'São Paulo', 26),
    ('Thiago', 'Barueri', 'São Paulo', 34),
    ('Leonardo', 'Vitória', 'Espírito Santo', 30),
    ('Lucas', 'Vitória', 'Espírito Santo', 30),
    ('Regina', 'Niterói', 'Rio de Janeiro', 21),
    ('Ailton', 'Niterói', 'Rio de Janeiro', 25),
    ('Sara', 'Duque de Caxias', 'Rio de Janeiro', 27),
    ('Eduardo', 'Ouro Fino', 'Minas Gerais', 24),
    ('Julia', 'Uberlândia', 'Minas Gerais', 25),
    ('Sabrina', 'Curitiba', 'Paraná', 28),
    ('Isac', 'Curitiba', 'Paraná', 28);

-- Inserção dos produtos cadastrados.
insert into produtos (nome_produto, categoria, preco)
values
    ('Armário Suspenso Cinza', 'Cozinha', 1936.00),
    ('Armário Aéreo 2 Portas Cinza', 'Cozinha', 352.00),
    ('Cama Cabeceira Cinza', 'Quarto', 1369.98),
    ('Guarda Roupa Solteiro Branco', 'Quarto', 829.99),
    ('Closet Casal Branco', 'Quarto', 1899.98),
    ('Cama Casal Marrom', 'Quarto', 1629.98), 
    ('Gabinete 3 Gavetas Branco', 'Banheiro', 266.99),
    ('Espelho Branco Banheiro', 'Banheiro', 659.98),
    ('Rack Ripado Marrom', 'Sala', 699.98),
    ('Painel TV 60 Pol Ripado Marrom', 'Sala', 257.99),
    ('Armário 2 Portas Branco', 'Lavanderia', 295.32),
    ('Armário Despensa Branco', 'Lavanderia', 344.23),
    ('Armário Modulado Branco', 'Lavanderia', 1319.98),
    ('Mesa Dobrável Jardim Marrom', 'Quintal', 412.71),
    ('Cadeiras Kit 4 Marrom', 'Quintal', 597.70);

-- Inserção dos funcionários cadastrados.
insert into funcionarios (nome, setor)
values
    ('André', 'Vendas'),
    ('Eliza', 'Vendas'),
    ('Jhenifer', 'Atendimento'),
    ('Robson', 'Vendas'),
    ('Cicera', 'Gerência'),
    ('Renato', 'Entrega'),
    ('Claudinei', 'Logística'),
    ('Evandro', 'Estoque'),
    ('Clauber', 'Vendas'),
    ('Merlinda', 'Administrativo');

-- Inserção das Vendas registradas.
insert into vendas (id_cliente, id_produto, id_funcionario, quantidade, data_venda)
values
	(3, 3, 4, 1, '2026-06-23'),
	(3, 4, 4, 1, '2026-06-23'),
	(5, 7, 9, 1, '2026-06-23'),
    (5, 8, 9, 1, '2026-06-23'),
    (14, 11, 2, 2, '2026-06-23'),
    (14, 12, 2, 1, '2026-06-23'),
    (14, 13, 2, 1, '2026-06-23'),
    (4, 5, 1, 1, '2026-06-23'),
    (4, 6, 1, 1, '2026-06-23'),
    (8, 14, 2, 2, '2026-06-23'),
    (8, 15, 2, 2, '2026-06-23'),
    (11, 9, 9, 1, '2026-06-23'),
    (11, 10, 9, 1, '2026-06-23'),
    (9, 7, 9, 1, '2026-06-24'),
    (9, 8, 9, 1, '2026-06-24'),
    (5, 1, 1, 1, '2026-06-24'),
    (5, 2, 1, 2, '2026-06-24'),
    (13, 3, 2, 1, '2026-06-24'),
    (13, 4, 2, 1, '2026-06-24'),
    (10, 5, 4, 1, '2026-06-24'),
    (10, 6, 4, 1, '2026-06-24'),
    (10, 1, 4, 1, '2026-06-24'),
    (10, 2, 4, 2, '2026-06-24'),
    (1, 1, 2, 1, '2026-06-25'),
    (1, 2, 2, 2, '2026-06-25'),
    (1, 5, 2, 1, '2026-06-25'),
    (1, 6, 2, 1, '2026-06-25'),
    (7, 9, 2, 1, '2026-06-25'),
    (7, 10, 2, 1, '2026-06-25'),
    (7, 6, 2, 1, '2026-06-25'),
    (8, 9, 1, 1, '2026-06-25'),
    (8, 10, 1, 1, '2026-06-25'),
    (4, 11, 4, 2, '2026-06-25'),
    (4, 12, 4, 1, '2026-06-25'),
    (4, 13, 4, 1, '2026-06-25'),
    (6, 11, 2, 2, '2026-06-26'),
    (6, 12, 2, 1, '2026-06-26'),
    (6, 13, 2, 1, '2026-06-26'),
    (15, 5, 2, 1, '2026-06-26'),
    (15, 6, 2, 1, '2026-06-26'),
    (15, 14, 9, 2, '2026-06-26'),
    (15, 15, 9, 2, '2026-06-26'),
    (12, 11, 1, 2, '2026-06-27'),
    (12, 12, 1, 1, '2026-06-27'),
    (12, 13, 1, 1, '2026-06-27'),
    (2, 5, 4, 1, '2026-06-27'),
    (2, 6, 4, 1, '2026-06-27'),
    (11, 7, 1, 1, '2026-06-28'),
    (11, 8, 1, 1, '2026-06-28'),
    (7, 5, 2, 1, '2026-06-28')
