create database chromatica;
use chromatica;

create table tribo(
idTribo int primary key auto_increment,
nome varchar(45)
);

CREATE TABLE usuario (
	idUsuario INT primary key auto_increment,
	nome VARCHAR(45),
	sobrenome VARCHAR(45),
	email VARCHAR(45),
	senha VARCHAR(45)
);

create table resposta(
idresposta int,
fkusuario int,
foreign key(fkusuario) references usuario(idUsuario),
fkTribo int,
foreign key(fkTribo) references tribo(idTribo),
primary key (idresposta, fkusuario, fktribo)
);


select * from usuario;
select * from tribo;
select * from resposta;


insert into tribo values
(null, 'kidness punks'),
(null, 'eco warriors'),
(null, 'junkyard scavengers'),
(null, 'cyber kids'),
(null, 'freedom fighters'),
(null, 'government officials');

