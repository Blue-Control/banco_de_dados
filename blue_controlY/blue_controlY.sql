create database bluecontrol;
use bluecontrol;

create table clientes (
idcliente int,
nome varchar(255),
telefone varchar(11),
email varchar(255),
cpf varchar(15),
estado varchar(50),
bairro varchar(100),
endereco varchar(255));


create table sensor (
idsensor int,
tanquePeixe varchar(10));

create table registro (
idregistro int,
tanquePeixe varchar(10),
temperatura varchar(10)); 


