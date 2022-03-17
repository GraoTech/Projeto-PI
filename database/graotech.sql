CREATE DATABASE graotech;
Use graotech;

CREATE TABLE user (
id int primary key auto_increment,
nome varchar(50),
sobrenome varchar(50),
cpf varchar(20),
telefone varchar(20),
email varchar(70),
endereco varchar(225),
cep varchar(30),
login varchar(40),
senha varchar(255),
criado date
);

CREATE TABLE sensore (
id int primary key auto_increment,
nome varchar(100),
status varchar(100),
localidade varchar(100),
temp_atual float,
umi_atual float,
date_time datetime
);


CREATE TABLE produto(
id int primary key auto_increment,
nome varchar(100),
temp_max float,
temp_min float,
umi_max float,
umi_min float,
);

CREATE TABLE alerta(
id int primary key auto_increment,
nome varchar(50),
tipo varchar(50),
graus float,
date_time datetime
);




