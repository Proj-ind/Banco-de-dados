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
	senha VARCHAR(100),
    fkTriboUser int,
    foreign key(fkTriboUser) references tribo(idTribo)
);

create table resposta(
idresposta int auto_increment,
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

insert into usuario values
(null, 'Enzo', 'Medej', 'enzomedej@gmail.com', 'silvio123', 1), 
(null, 'Alice', 'Guimaraes', 'alicegui@gmail.com', '11viviane', 2), 
(null, 'silvio', 'tavares', 'silviotav@gmail.com', 'julysy11', 2);

 update usuario set fkTriboUser = 3 where idUsuario = 3; 

select t.nome, count(u.idusuario) as qtd from tribo t
join usuario u on fkTriboUser = idtribo group by t.nome;