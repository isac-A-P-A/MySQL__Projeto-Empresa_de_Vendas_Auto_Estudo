/*
=========================================================
ETAPA 1 - CRIAÇÃO DO BANCO DE DADOS E DAS TABELAS

Nesta etapa foi realizada a criação da estrutura do banco
de dados "Empresa_Vendas", definindo as tabelas,
relacionamentos e restrições que garantem a integridade
dos dados.

Conceitos e comandos utilizados:

• CREATE DATABASE
• USE
• CREATE TABLE
• PRIMARY KEY
• FOREIGN KEY
• REFERENCES
• AUTO_INCREMENT
• NOT NULL
• Tipos de dados (INT, VARCHAR, DECIMAL e DATE)

Objetivo:
Construir uma base de dados relacional que servirá como
fundação para as próximas etapas do projeto, onde serão
realizadas inserções, consultas, atualizações e análises
de dados utilizando SQL.
=========================================================
*/

-- Responsável pela criação do banco de dados.
create database Empresa_Vendas;

use empresa_vendas;

-- Responsável por armazenar as informações dos clientes.
create table Clientes (
	id_cliente
		int
        not null
        auto_increment,
	nome
		varchar(255)
        not null,
	cidade
		varchar(255)
        not null,
	estado
		varchar(255)
        not null,
	idade
		int
        not null,
        primary key (id_cliente)
);

-- Responsável por armazenar os produtos disponíveis para venda.
create table Produtos (
	id_produto
		int
        not null
        auto_increment,
	nome_produto
		varchar(255)
        not null,
	categoria
		varchar(255)
        not null,
	preco
		DECIMAL(10, 2)
        not null,
		primary key(id_produto)
);

-- Responsável por armazenar os funcionários da empresa.
create table Funcionarios (
	id_funcionario
		int
        not null
        auto_increment,
	nome
		varchar(255)
        not null,
	setor
		varchar(255)
        not null,
		primary key(id_funcionario)
);

-- Responsável por registrar todas as vendas realizadas.
create table Vendas (
	id_venda
		int
        not null
        auto_increment,
	id_cliente
		int
        not null,
	id_produto
		int
        not null,
	id_funcionario
		int
        not null,
	quantidade
		int 
        not null,
	data_venda
		date
        not null,
        
	primary key (id_venda),
        
-- Responsável por definir os relacionamentos da tabela Vendas.
foreign key (id_cliente)
    references Clientes(id_cliente),

foreign key (id_produto)
    references Produtos(id_produto),

foreign key (id_funcionario)
    references Funcionarios(id_funcionario)
);
