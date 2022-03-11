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

SELECT * FROM users;		

INSERT INTO users (nome, sobrenome, cpf, cnpj, telefone, email, endereco, cep, login, senha, criado) 
VALUES ('Fabiano', 'Nogueira', '433.555.412-89', '0', '(11) 9544-1210', 'fabiano@test.com', 'Rua Carmon 01', '08041-701', 'fabiano01', 'fabiano3', '2021-03-29');


CREATE TABLE sensores (
id_sensor int primary key auto_increment,
user_id int,
max_temp float,
min_temp float,
max_umi float,
min_umi float
);

SELECT * FROM sensores;	

SELECT * FROM users AS U INNER JOIN sensores AS S ON (users.id = S.user_id);

INSERT INTO sensores (user_id, max_temp, min_temp, max_umi, min_umi) VALUES (2, 25, 20, 90, 70);


CREATE TABLE status (
id_st int primary key auto_increment,
id_sensor int,
tipo varchar(50),
atual_temp float,
atual_umi float,
date_time datetime
);


SELECT * FROM status;

INSERT INTO status (id_sensor, tipo, atual_temp, atual_umi, date_time)
VALUES(3, 'Temperatura/Umidade', 18.55, 73.00, '2022-03-14 10:33:22');

CREATE TABLE alertas(
	id_alert int primary key auto_increment,
    id_sensor int,
    nome varchar(50),
    tipo varchar(50),
    graus float,
    date_time datetime
);

INSERT INTO alertas (id_sensor, nome, tipo, graus, date_time) VALUES (2, 'Temperatura', 'Máx', 25.88, '11-03-11 12:00:33'), (3, 'Umidade', 'Min', 80.88, '11-03-11 12:00:33');

SELECT * FROM alertas AS A INNER JOIN sensores AS SS ON (A.id_sensor = SS.id_sensor);
SELECT * FROM Alertas;

UPDATE alertas SET id_sensor = 4 WHERE id_alert = 4;


CREATE TABLE produtos(
id_produto int primary key auto_increment,
id_sensor int,
nome varchar(100),
quantidade int
);

INSERT INTO produtos (id_sensor, nome, quantidade) VALUES (1, 'Café', 5000),(2, 'Arroz', 10400),(3, 'Soja', 35000);

SELECT * FROM produtos;

UPDATE produtos SET id_sensor = 5 WHERE id_produto = 3;

