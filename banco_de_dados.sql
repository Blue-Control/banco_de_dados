create database blue_control;
use blue_control;

create table Usuario (
idUsuario int primary key auto_increment,
nome_empresa varchar (100),
cnpj char (14),
cep char (8),
estado varchar (80),
bairro varchar (80),
rua varchar (80),
numero varchar (6), 
email varchar (80),
telefone char (11),
senha varchar (32)
);

create table sensor (
idSensor int primary key auto_increment,
tanque_localizado char (4)
);

create table registro (
idregistro int primary key auto_increment,
temperatura float,
alerta varchar(10) check(alerta = 'critico' or alerta ='alerta' or alerta ='estavel'),
data_hora_registrada datetime);





  
