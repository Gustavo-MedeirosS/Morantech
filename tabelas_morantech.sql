create database Morantech;

use Morantech;

-- TABELA DE CADASTRO DO CLIENTE
create table cadastro (
idCliente int primary key auto_increment,
nome varchar(60),
email varchar(30),
senha varchar(20),
telefone varchar(11),
cnpj char(14)
) auto_increment = 1;

insert into cadastro values
(null, 'Gustavo Silva', 'gustavosilva@morantech', 'GustavoSilva123', '11901234567', '00000000000001'),
(null, 'Guilherme Santos', 'guilhermesantos@morantech', 'GuilhermeSantos123', '11901234568', '00000000000002'),
(null, 'Anna Paula', 'annapaula@morantech', 'AnnaPaula123', '11901234569', '00000000000003');

select * from cadastro;


-- TABELA DE SENSOR
create table sensor (
idSensor int primary key auto_increment,
modelo varchar(10),
medição varchar(40),
serialNumber char(9) -- (SU2023001)
) auto_increment = 1;

insert into sensor values
(null, 'UM-100', 'Umidade', 'UM2023001'),
(null, 'TP-100', 'Temperatura', 'TP2023002'),
(null, 'TU-100', 'Temperatura e Umidade', 'TU2023003');

select * from sensor;


-- TABELA DE CLIENTES 
create table clientes (
idCliente int primary key,
nome varchar(60),
qtdSensores int,
cidade varchar(40),
uf char(2)
);

insert into clientes values
(1, 'Gustavo Silva', 5, 'Belo Horizonte', 'MG'),
(2, 'Guilherme Santos', 7, 'Taubaté', 'SP'),
(3, 'Anna Paula', 9, 'Salvador', 'BA');

select * from clientes;


-- TABELA DE FUNCIONÁRIOS
create table funcionarios (
idFuncionario int primary key auto_increment,
nome varchar(60),
matricula char(10), -- (M202303001)
cargo varchar(30),
cargaHorariaSemanal int
) auto_increment = 1;

insert into funcionarios values
(null, 'Samuel Augusto', 'M202301001', 'Técnico de Instalação', 40),
(null, 'Kaiky Cruz', 'M202301002', 'Diretor', 30),
(null, 'Vinicius Inácio', 'M202301003', 'Suporte TI', 36);

select * from funcionarios;