-- LUCAS OSAKWE S. SANTOS 01212203	

-- EXERCÍCIO 1
create database atleta;
use atleta;

create table atleta (
idAtleta int auto_increment primary key,
nome_atleta varchar(40),
modalidade_atleta varchar(40),
qtdMedalha_atleta int
);

insert into atleta values 
(null, "Joãozinho", "Futebol", 5),
(null, "Igão", "Futebol", 3),
(null, "Pereira", "Basquete", 3),
(null, "Wilson", "Vôlei", 6),
(null, "Santos", "Tênis", 4);

-- Exibir todos os dados da tabela
select * from atleta;

-- Exibir apenas os nomes e quantidade de medalhas dos atletas
select nome_atleta, qtdMedalha_atleta from atleta;

-- Exibir apenas os dados dos atletas de uma determinada modalidade
select * from atleta 
where modalidade_atleta = "Futebol";

-- Exibir os dados da tabela ordenados pela modalidade
select * from atleta
order by modalidade_atleta;

-- Exibir os dados da tabela, ordenados pela quantidade de medalhas, em ordem decrescente
select * from atleta
order by qtdMedalha_atleta desc;

-- Exibir os dados da tabela, dos atletas cujo nome contenha a letra s
select * from atleta where nome_atleta like "%s%";

-- Exibir os dados da tabela, dos atletas cujo nome comece com uma determinada letra
select * from atleta where nome_atleta like "j%";

-- Exibir os dados da tabela, dos atletas cujo nome termine com a letra o
select * from atleta where nome_atleta like "%o";

-- Exibir os dados da tabela, dos atletas cujo nome tenha a penúltima letra r
select * from atleta where nome_atleta like "%r_";

-- Eliminar a tabela
drop table atleta;


-- EXERCÍCIO 2 

create database musica;
use musica;

create table musica (
idMusica int auto_increment primary key, 
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);

insert into musica values
(null, "Muito sagaz", "Mc Hariel", "Funk"),
(null, "XT", "Mc Hariel", "Funk"),
(null, "Vida infinita", "Oriente", "Rap"),
(null, "Jesus chorou", "Racionais", "Rap"),
(null, "Joga bola", "Mc Kevin", "Funk"),
(null, "Why we lose", "Cartoon", "Eletrônica"),
(null, "The nights", "Avicii", "Eletrônica"),
(null, "Something in the way", "Nirvana", "Rock");

-- a)
select * from musica;

-- b)
select titulo, artista from musica;

-- c)
select * from musica where genero = "Funk";

-- d)
select * from musica where artista = "Mc Hariel";

-- e)
select * from musica
order by titulo;

-- f)
select * from musica
order by artista desc;

-- g)
select * from musica where titulo like "v%";

-- h)
select * from musica where artista like "%a";

-- i) 
select * from musica where genero like "_a%";

-- j)
select * from musica where titulo like "%a_";

-- k)
drop table musica;


