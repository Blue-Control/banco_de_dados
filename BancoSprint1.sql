create database BlueControl;
use BlueControl;

create table  clientes (
idCliente int not null auto_increment,
nome varchar (60),
cnpj int (18),
cidade varchar (50),
estado varchar (2),
cep int (8),
rua varchar (45),
bairro varchar (45),
telefone int (9),

primary key (idCliente)

);

create table sensor (
idSensor int not null auto_increment primary key,
tanqueLocalizado int(1)

);

create table registro (
idRegistro int not null auto_increment primary key,
temperatura varchar (10),
alerta varchar (15) check(alerta= 'critico' or alerta = 'alerta' or 'manter'),
hora_data datetime,
sensor char (1)

);

desc registro;

