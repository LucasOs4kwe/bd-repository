create database musica;
use musica;

create table Musica(
idMusica int auto_increment,
titulo varchar(40) not null,
primary key(idMusica),
fk_autor int,
foreign key (fk_autor) references autor(idAutor)
);

insert into musica (titulo, fk_autor) values 
("Jesus chorou", 1),
("Amianto", 2),
("Piloto automático", 2),
("Deixa acontecer", 3),
("Tá escrito", 3);

select * from musica;

update musica
set fk_banda = 1
where idMusica = 1;

update musica
set fk_banda = 2
where idMusica in (2,3);

update musica
set fk_banda = 3
where idMusica in (4,5);

create table banda (
idBanda int auto_increment primary key,
nomeBanda varchar(40),
nIntegrantes int not null
);

insert into banda (nomeBanda,nIntegrantes) values ("Racionais Mcs", 4),
("Supercombo", 5),
("Grupo revelação", 4);

alter table banda
add column fk_genero int;

alter table banda 
add foreign key (fk_genero) references genero(idGenero);

alter table musica
add column fk_banda int;

alter table musica
add foreign key (fk_banda) references banda(idBanda);

create table autor (
idAutor int auto_increment,
nomeAutor varchar(40) not null,
idadeAutor int not null,
primary key(idAutor)
);

select * from autor;
insert into autor (nomeAutor, idadeAutor) values 
("Mano Brown", 51),
("Pedro Ramos", 34),
("Xande", 51);

select musica.*, autor.idAutor
from musica
inner join autor on autor.idAutor = musica.fk_autor
where musica.titulo like 'D%';

create table genero (
idGenero int auto_increment primary key,
nomeGenero varchar(40)
);
select * from genero;
insert into genero (nomeGenero) values ("Rap"),("Rock Alternativo"), ("Pagode");

select * from banda;

update banda 
set fk_genero = 1
where idBanda = 1;

update banda 
set fk_genero = 2
where idBanda = 2;

update banda 
set fk_genero = 3
where idBanda = 3;

create table pais(
idPais int auto_increment,
nomePais varchar(30) not null,
capitalPais varchar(30) not null,
primary key(idPais)
);

insert into pais (nomePais, capitalPais) values ("Brasil", "Brasília");

select * from pais;

alter table banda
add column fk_pais int;

alter table banda
add foreign key (fk_pais) references pais(idPais);

select * from banda;

update banda 
set fk_pais = 1
where idBanda in (1,2,3);

select musica.*, autor.*
from musica
inner join autor on autor.idAutor = musica.fk_autor; 