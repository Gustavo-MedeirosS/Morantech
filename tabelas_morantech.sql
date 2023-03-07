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
(null, 'Transports Morango', 'transportsmorango@morantech', 'transports123', '11901234567', '00000000000001'),
(null, 'Leva e Traz Morango', 'levaetrazmorango@morantech', 'levaetraz123', '11901234568', '00000000000002'),
(null, 'Truck do Morango', 'truckdomorango@morantech', 'truck123', '11901234569', '00000000000003');

select * from cadastro;


-- TABELA DE SENSOR
create table sensor (
idSensor int primary key auto_increment,
modelo varchar(10),
medição varchar(20),
serialNumber char(9) -- (SU2023001)
) auto_increment = 1;

insert into sensor values
(null, 'SU-100', 'Umidade', 'SU2023001'),
(null, 'ST-100', 'Temperatura', 'ST2023002'),
(null, 'SB-100', 'Bloqueio', 'SB2023003');

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
(1, 'Transports Morango', 5, 'Belo Horizonte', 'MG'),
(2, 'Leva e Traz Morango', 7, 'Taubaté', 'SP'),
(3, 'Truck do Morango', 9, 'Salvador', 'BA');

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
(null, 'Gustavo', 'M202301001', 'Técnico de Instalação', 40),
(null, 'Kaiky', 'M202301002', 'Diretor', 30),
(null, 'Vinicius', 'M202301003', 'Suporte TI', 36);

select * from funcionarios;

drop table funcionarios;