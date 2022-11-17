create database chromatica;
use chromatica;

create table tribo(
idTribo int primary key auto_increment,
nome varchar(45)
);
 
create table questionario(
idQuestionario int primary key auto_increment,
pergunta_1 varchar(45),
pergunta_2 varchar(45),
pergunta_3 varchar(45),
pergunta_4 varchar(45),
pergunta_5 varchar(45),
pergunta_6 varchar(45)
);

CREATE TABLE usuario (
	idUsuario INT primary key auto_increment,
	nome VARCHAR(45),
	sobrenome VARCHAR(45),
	email VARCHAR(45),
	senha VARCHAR(45),
    fktribos int,
    foreign key(fkTribos) references tribo(idTribo),
    fkQuestionario int,
    foreign key(fkQuestionario) references questionario(idQuestionario)
); 

create table resposta(
fkTribos int,
foreign key(fkTribos) references tribo(idTribo),
fkResposta int,
foreign key(fkResposta) references questionario(idQuestionario)
);



select * from usuario;
select * from tribo;
select * from questionario;
select * from resposta;