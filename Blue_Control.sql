create database blue_control;

use blue_control;

create table cliente(
	idCliente int primary key auto_increment,
	nome_empresa varchar(55),
	cnpj char(14),
    cep char(8),
	estado char (2),
	cidade varchar(45),
	bairro varchar(45),
	rua varchar(45),
    numero varchar (10),
	telefone varchar (12),
    email varchar(70),
    senha varchar(20)
);

insert into cliente(nome_empresa, cnpj, cep, estado, cidade, bairro, rua, numero, telefone, email, senha) values 
	('Criadouro Ribeirinho','12345678901234', '09432360', 'GO', 'Goiania', 'Jardim Goiabada', 
    'Avenida São Luiz', '96', '123456789012', 'ribeirinho@gmail.com','ribeirinho123'),
    
    ('Tilapia alegria','43210987654321', '07898765', 'PR', 'valinhos', 'Presidente vargas', 
    'Rua jurandir', '10', '210987654321', 'tilapiaalegria@hotmail.com','tilapinha321');

create table sensor (
	idSensor int primary key auto_increment,
    empresa_pertencente int,
	tanque_localizado varchar(4)
);

insert into sensor(empresa_pertencente, tanque_localizado) values 
	('1', 'A'),
	('1','B'),
    ('2', 'A'),
    ('2', 'B'),
    ('2', 'C');

create table registro (
	idRegistro int primary key auto_increment,
	temperatura float,
	alerta varchar (15) check(alerta= 'critico' or alerta = 'alerta' or alerta = 'estavel' ),
	data_hora_registro datetime,
	sensor_responsavel int
);

insert into registro(temperatura, alerta, data_hora_registro, sensor_responsavel) values 
	(31.5,'critico', '2022-03-12 12:35:22', 1),
    (26.3,'alerta', '2022-03-13 12:40:50', 2),
    (28.3,'estavel', '2022-03-14 12:45:10', 3),
    (27.4,'estavel', '2022-03-15 12:50:40', 4),
    (30.1,'critico', '2022-03-16 12:55:15', 5);
    