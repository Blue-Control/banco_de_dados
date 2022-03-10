create database blue_control;

use blue_control;

create table cliente(
	idCliente int primary key auto_increment,
	nome_empresa varchar(55),
	cnpj char(14),
	estado char (2),
	cidade varchar(45),
	cep char(8),
	bairro varchar(45),
	rua varchar(45),
	telefone varchar (12)
);

create table sensor (
	idSensor int primary key auto_increment,
	tanque_localizado char(1)
);

create table registro (
	idRegistro int primary key auto_increment,
	temperatura varchar(10),
	alerta varchar (15) check(alerta= 'critico' or alerta = 'alerta' or alerta = 'estavel' ),
	data_hora_registro datetime,
	sensor_responsavel char(1)
);

