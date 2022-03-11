create database BlueControl;
use BlueControl;


create table cadastro (idCadastro int primary key, Nome varchar(50), Email varchar(40), Senha varchar(30), CEP varchar (10), Cidade varchar(40),
 Rua varchar (50), Bairro varchar (40), Número int, Complemento varchar(50), telefone int);
 
 
 select* from cadastro;
 
 create table controlador (idControl int primary key, Cliente int, Temperatura varchar(20), Horário varchar(10));
 
 select * from controlador;