CREATE DATABASE supermercado;

USE supermercado;

CREATE TABLE cliente(
	cpf bigint NOT NULL PRIMARY KEY,
    nome varchar(40) NOT NULL,
    logradouro varchar(100) NOT NULL,
    bairro varchar(30) NOT NULL
);

CREATE TABLE produto(
	codigo int auto_increment NOT NULL PRIMARY KEY,
    descricao varchar(200)
);

CREATE TABLE notafiscal(
	numero int auto_increment PRIMARY KEY NOT NULL,
    cpf bigint NOT NULL,
    dataFatura date NOT NULL,
    FOREIGN KEY (cpf) REFERENCES cliente(cpf)
);

CREATE TABLE produtoNota(
	numero int NOT NULL,
    codigo int NOT NULL,
    FOREIGN KEY (numero) REFERENCES notaFiscal(numero),
    FOREIGN KEY (codigo) REFERENCES produto(codigo)
);

/*
DROP TABLE produtoNota;
DROP TABLE notaFiscal;
DROP TABLE produto;
DROP TABLE cliente;
*/

alter table cliente drop column dataNascimento;

select * from cliente;

