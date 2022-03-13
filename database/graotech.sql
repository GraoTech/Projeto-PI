CREATE DATABASE graotech;
Use graotech;

CREATE TABLE users (
id int primary key auto_increment,
nome varchar(50),
sobrenome varchar(50),
cpf varchar(20),
cnpj varchar(20),
telefone varchar(20),
email varchar(70),
endereco varchar(225),
cep varchar(30),
login varchar(40),
senha varchar(255),
criado date
);

CREATE TABLE sensores (
id_sensor int primary key auto_increment,
user_id int,
max_temp float,
min_temp float,
max_umi float,
min_umi float
);


CREATE TABLE status (
id_st int primary key auto_increment,
id_sensor int,
tipo varchar(50),
atual_temp float,
atual_umi float,
date_time datetime
);

CREATE TABLE alertas(
	id_alert int primary key auto_increment,
    id_sensor int,
    nome varchar(50),
    tipo varchar(50),
    graus float,
    date_time datetime
);


CREATE TABLE produtos(
id_produto int primary key auto_increment,
id_sensor int,
nome varchar(100),
quantidade int
);


