create database BlueControl;
use BlueControl;

create table  clientes (
idCliente int not null auto_increment,
nome varchar (60),
cnpj char(14),
cidade varchar (50),
estado varchar (2),
cep char(8),
rua varchar (45),
bairro varchar (45),
telefone char (11),

primary key (idCliente)

);

create table sensor (
idSensor int not null auto_increment,
tanqueLocalizado int (1),
primary key (idSensor)
);

create table registro (
idRegistro int not null auto_increment,
temperatura float,
alerta varchar (15) check(alerta= 'critico' or alerta= 'alerta' or alerta= 'manter'),
hora_data datetime,
sensor char (1),
primary key (idRegistro)
);

insert into clientes (nome, cnpj, cidade, estado, cep, rua, bairro, telefone) values ('Peixaria do Sergio', '12345678912345', 'São Paulo', 'SP', '02977180', 'Rua Coronel Machado', 'Santa Helena', '113972-6636'),
('Tilapa do rei', '12345678912347', 'Barueri', 'SP', '03362060', 'Rua Mari Estella', 'Jardim Camburi', '112650-1232'),
('Psicu da Tilapia', '12345678912346', 'Paraná', 'PA', '08036920', 'Rua Esteves Cloral', 'Vila Zatt', '113245-8662');

insert into sensor (tanqueLocalizado) values (1),
(2),
(3);


insert into registro (temperatura, alerta, hora_data, sensor) values ('30.1', 'critico', '2022-12-23 11:35', 1),
('26.5', 'alerta', '2023-02-13 15:05', 2),
('22.8', 'manter', '2023-01-10 09:10', 3);

select * from clientes;

update clientes set cidade = 'Curitiba' where idCliente = 3;

select cidade from clientes where idCliente = 3;

select * from Clientes;


