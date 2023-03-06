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
drop table cadastro;

-- TABELA DE SENSOR
create table sensor (
idSensor int primary key auto_increment,
modelo varchar(10),
medição varchar(20),
serialNumber char(9) -- (SU2023001)
) auto_increment = 1;
drop table sensor;

-- TABELA DE CLIENTES 
create table clientes (
idCliente int primary key,
nome varchar(60),
qtdSensores int,
cidade varchar(40),
uf char(2)
);
drop table clientes;


-- TABELA DE FUNCIONÁRIOS
create table funcionarios (
idFuncionario int primary key auto_increment,
nome varchar(60),
matricula char(10), -- (M202303001)
cargo varchar(30),
cargaHorariaSemanal int
) auto_increment = 1;
drop table funcionarios;