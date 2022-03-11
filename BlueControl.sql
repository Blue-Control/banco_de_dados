create database BlueControl;
use BlueControl;


-- TABELA 1

create table Cliente (idCliente int primary key, Nome varchar(50), Email varchar(40), Senha varchar(30), CEP varchar (10), Estado varchar(30),
 Cidade varchar(40),
 Rua varchar (50), Bairro varchar (40), Número int, Complemento varchar(50), telefone varchar(50));
 
 insert into Cliente values
 ('1','Joaquim Souza','jotilapia@outlook.com','tili2022','03165-003','Paraná','Londrina','Rua Japão','Padre MIguel','342','sala 33','33997456767'),
 ('2','Caio Rodrigo','rodri_lapia@outlook.com','lapia2021','04165-002','São Paulo','São Paulo','Rua Pilar','Vila Sônia','5322','bloco A','21998556777');
 
 
 select* from cliente;
 
 

 
-- TABELA 2
 
 create table controlador (idControl int primary key, Cliente int, Temperatura varchar(20), Data_horário datetime, Alerta varchar(20) );
  
 insert into controlador values
 ('1','1','30°','2022-02-03/13:20', 'perigo'),
 ('2','1','26°','2022-02-03/13:20', 'estavel'),
 ('3','2','39°','2022-02-03/13:20', 'perigo');
 
 
 select * from controlador;
 select* from controlador where clienete=2 ;
 select* from controlador where cliente=1 ;
 
 -- TABELA 3
 
 create table Localidade_controlador (idLocal int primary key ,controlador int, CEP varchar (10), Estado varchar(30), Cidade varchar(40),
 Rua varchar (50), Bairro varchar (40), Número int);
 
 insert into Localidade_controlador values
 ('1','1','	03165-123','Paraná','Macaé','Rua fausto','Papa Bento','234'),
 ('2','2','06165-543','Paraná','Londrina','Rua gugu','Vila Margarida','543'),
 ('3','3','03165-002','São Paulo','Birigui','Rua rodrigo','Rio Branco','345');
 select* from localidade_controlador