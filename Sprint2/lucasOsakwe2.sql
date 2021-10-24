create database Atleta;
use Atleta;

create table atleta(
idAtleta int auto_increment primary key,
nome_atleta varchar(40),
ModalidadeAtleta varchar(40),
qtdMedalha int
);

insert into atleta (nome_atleta, ModalidadeAtleta, qtdMedalha) values 
("Atleta1", "Futebol", 2),
("Atleta2", "Futebol", 5),
("Atleta3", "Basquete", 3),
("Atleta4", "Vôlei", 1),
("Atleta5", "Natação", 4);

select * from atleta;

select nome_atleta, qtdMedalha from atleta;

select * from atleta where ModalidadeAtleta = "Futebol";

select * from atleta
order by ModalidadeAtleta;

select * from atleta
order by qtdMedalha desc;

select * from atleta where nome_atleta like '%s%';

select * from atleta where nome_atleta like 'a%';

select * from atleta where nome_atleta like '%o';

select * from atleta where nome_atleta like '%r_';

drop table atleta;