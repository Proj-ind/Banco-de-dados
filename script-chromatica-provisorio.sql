create database chromatica;
use chromatica;

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
senha varchar(45),
 fkTribos int,
 foreign key (fkTribos) references tribo(idTribos)
);

create table tribo(
idTribos int primary key auto_increment,
nome varchar(45),
categoria varchar(45)
);

create table questionario(
idQuestionario int auto_increment,
resposta1 varchar(45),
resposta2 varchar(45),
resposta3 varchar(45),
resposta4 varchar(45),
resposta5 varchar(45),
resposta6 varchar(45),
fkTribos int,
foreign key(fktribos) references tribo(idTribos),
fkUsuario int,
foreign key(fkUsuario) references usuario(idUsuario),
 primary key (idQuestionario, fktribos, fkUsuario)
);

select * from usuario;