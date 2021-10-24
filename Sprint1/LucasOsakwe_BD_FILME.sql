-- 1 
create database Filme;

-- 2
use Filme;

-- 3
create table Filme (
idFilme int primary key not null auto_increment,
titulo varchar(60),
genero varchar(25),
diretor varchar(50)
);

-- 4
select * from filme;

-- 5 e 6
insert into filme (titulo, genero, diretor) values ("Deadpool", "Ação/Aventura","Tim Miller");

-- 7 
insert into filme (titulo) values ("Gente grande");

-- 8 
insert into filme (titulo) values ("Batman Begins");

-- 9 
insert into filme (titulo) values ("Mortal Kombat");
insert into filme (titulo) values ("Logan");
insert into filme (titulo) values ("Viúva Negra");
insert into filme (titulo) values ("Velozes e Furiosos 9");
insert into filme (titulo) values ("Rogai por Nós");
insert into filme (titulo) values ("Invocação do mal");
insert into filme (titulo) values ("A Entidade");
insert into filme (titulo) values ("Space Jam: Um Novo Legado");
insert into filme (titulo) values ("Maze runner");

-- 10
update filme 
set diretor = "James Mangold"
where idFilme = 5;

-- 11
update filme 
set diretor = "Cate Shortland"
where idFilme = 6;

update filme 
set diretor = "Malcolm D. Lee"
where idFilme = 11;

-- 12
update filme 
set diretor = "Simon McQuoid", genero = "Ação/Fantasia"
where idFilme = 4;

update filme 
set diretor = "Michael Chaves", genero = "Terror/Suspense"
where idFilme = 9;

-- 13
update filme
set genero = "Ação/Ficção científica"
where idFilme = 5;

update filme
set genero = "Ação/Aventura"
where idFilme = 6;

-- 14 
select * from filme;

-- 15
update filme
set genero = "Comédia"
where idFilme = 2;

update filme 
set genero = "Infantil"
where idFilme = 11;

-- 16
update filme 
set diretor = "Dennis Dugan"
where idFilme = 2;

-- 17 
update filme 
set diretor = "Christopher Nolan", genero = "Ação/Fantasia"
where idFilme = 3;

-- 18 
update filme 
set diretor = "Justin Lin", genero = "Ação/Aventura"
where idFilme = 7;

-- 19 
update filme 
set genero = "Terror/Sobrenatural", diretor = "Evan Spiliotopoulos"
where idFilme = 8;

-- 20
update filme 
set genero = "Terror/Thriller"
where idFilme = 10;

-- 21
select * from filme;

-- 22
delete from filme where idFilme = 6;

-- 23 
delete from filme where idFilme = 11;

delete from filme where idFilme = 5;

-- 24 
alter table filme
add ano int;

-- 25 
select * from filme;

-- 26
alter table filme
modify column titulo varchar(50);

-- 27
desc filme;

-- 28
alter table filme 
drop column ano;

-- 29
select * from filme
order by titulo;

-- 30
select * from filme
order by diretor;

-- 31
select * from filme 
order by diretor desc, titulo desc;