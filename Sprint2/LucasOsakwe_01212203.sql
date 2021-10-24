create database musica;
use musica;

-- TABELA MÚSICA
create table musica (
idMusica int auto_increment,
titulo varchar(40) not null,
primary key(idMusica)
);

select * from musica;

insert into musica values 
(null, "Jesus Chorou"), 
(null, "Deixa Acontecer"),
(null,"RU Mine"),
(null,"Vida infinita");

alter table musica
add column fk_autor int;

alter table musica
add foreign key (fk_autor) references autor(id_autor);

desc musica;

update musica
set fk_autor = 1
where idMusica = 1;

update musica
set fk_autor = 2
where idMusica = 2;

update musica
set fk_autor = 3
where idMusica = 3;

update musica
set fk_autor = 4
where idMusica = 4;

alter table musica
add column fk_banda int;

alter table musica
add foreign key (fk_banda) references banda(id_banda);

update musica
set fk_banda = 1
where idMusica = 1;

update musica
set fk_banda = 2
where idMusica = 2;

update musica
set fk_banda = 3
where idMusica = 3;

update musica
set fk_banda = 4
where idMusica = 4;

-- TABELA AUTOR
create table autor (
id_autor int auto_increment,
nome_autor varchar(40),
idade_autor int not null,
primary key(id_autor)
);

select * from autor;

insert into autor values 
(null,"Mano Brown", 51),
(null, "Xande", 51),
(null, "Alex Turner", 35),
(null, "Chino", 28);


-- TABELA BANDA
create table banda(
id_banda int auto_increment,
nome_banda varchar(40) not null,
Nmr_integrantes int not null,
primary key(id_banda)
);

select * from banda;

insert into banda values 
(null, "Racionais", 3),
(null, "Grupo revelação", 4),
(null, "Arctic Monkeys", 4),
(null, "Oriente", 4); 

alter table banda
add column fk_genero int;

alter table banda
add foreign key (fk_genero) references genero(id_genero);

update banda
set fk_genero = 1
where id_banda in (1,4);

update banda 
set fk_genero = 2
where id_banda = 2;

update banda 
set fk_genero = 3
where id_banda = 3;

alter table banda 
add column fk_pais int;

alter table banda
add foreign key (fk_pais) references pais(id_pais);

update banda
set fk_pais = 1
where id_banda in (1,2,4);

update banda
set fk_pais = 2
where id_banda = 3;

-- TABELA GÊNERO
create table genero(
id_genero int auto_increment,
nome_genero varchar(40),
primary key(id_genero)
);

select * from genero;

insert into genero values
(null, "Rap"),
(null, "Pagode"),
(null, "Indie Rock");

-- TABELA PAÍS
create table pais(
id_pais int auto_increment,
nome_pais varchar(50),
capital_pais varchar(50),
idioma_pais varchar(40),
primary key(id_pais)
);

select * from pais;

insert into pais values
(null, "Brasil", "Brasília", "Português-BR"),
(null, "Ingraterra", "Londres", "Inglês-UK");

-- SELECT COM INNER JOIN
select musica.idMusica,titulo, autor.nome_autor, banda.nome_banda
from ((musica 
inner join autor on musica.fk_autor = autor.id_autor)
inner join banda on musica.fk_banda = banda.id_banda);
