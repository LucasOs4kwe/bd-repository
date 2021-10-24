create database petshop;
use petshop;

-- PET
create table pet(
idPet int not null auto_increment,
tipo_pet varchar(45) not null,
nome_pet varchar(45) not null,
raca_pet varchar(40) not null,
dataNascimento_pet date not null,
preco_pet decimal (10,2),
fk_cliente int,
primary key(idPet),
foreign key (fk_cliente) references cliente(idCliente)
)auto_increment = 101;


insert into pet (tipo_pet, nome_pet, raca_pet, dataNascimento_pet, fk_cliente) values
("Cachorro", "neguinho", "doberman","2015-05-12",3),
("Cachorro", "lola", "chowchow","2019-03-10",3),
("Gato", "max","siamês","2018-02-09",4),
("Cobra", "souza", "corn-snake","2019-10-02",1),
("Cachorro", "tois", "golden retriever","2020-04-12",2);

-- 1 Exibir todos os dados de cada tabela criada, separadamente
select * from pet;

update pet
set preco_pet = '5000.00'
where idPet = 101;

update pet
set preco_pet = '2959.00'
where idPet = 102;

update pet
set preco_pet = '5000.00'
where idPet = 103;

update pet
set preco_pet = '15000.00'
where idPet = 104;

update pet
set preco_pet = '3495.99'
where idPet = 105;

-- 3 Exibir os dados de todos os pets que são de um determinado tipo
select * from pet
where tipo_pet = "Cachorro";

-- 4 Exibir apenas os nomes e as datas de nascimento dos pets
select nome_pet, dataNascimento_pet from pet;

-- 5 Exibir os dados dos pets ordenados em ordem crescente pelo nome
select * from pet
order by nome_pet asc;

-- 7 Exibir os dados dos pets cujo nome comece com uma determinada letra
select * from pet where nome_pet like "s%";

-- CLIENTE
create table cliente (
idCliente int not null auto_increment,
nome_cliente varchar(60) not null,
telefoneFixo_cliente varchar(20),
telefoneCelular_cliente varchar(22) not null,
rua_cliente varchar(30) not null,
numeroCasa_cliente varchar(10) not null,
bairro_cliente varchar(40) not null,
cidade_cliente varchar(50) not null,
estado_cliente varchar(30) not null,
primary key (idCliente)
)auto_increment = 1;

insert into cliente(nome_cliente, telefoneFixo_cliente, telefoneCelular_cliente, rua_cliente, numeroCasa_cliente, bairro_cliente, cidade_cliente, estado_cliente) values
("yudi tamashiro", "40028922", "11943256342", "Rua playstation", "429", "Vila Ps2", "São Paulo", "SP"),
("Neymar Jr", "41256940", "331492852947", "24 Rue du Commandant Guilbaud", "75016", "croissant","Paris", "P"),
("José santos","94251263", "021942585342", "Rua do josé", "654", "copacabama", "Rio de Janeiro", "RJ"),
("Marcos Jr", "82952435", "13943526463", "Rua do marcos","756","aparecida","Santos", "SP");

-- 1 Exibir todos os dados de cada tabela criada, separadamente
select * from cliente;

-- 2 Altere o tamanho da coluna nome do cliente
alter table cliente
modify column nome_cliente varchar(65) not null;

-- 6
select * from cliente 
where endereco_cliente like "%vila maria%";

-- 8 Exibir os dados dos clientes que têm o mesmo sobrenome
select * from cliente where nome_cliente;

-- 9 Alterar o telefone de um determinado cliente
update cliente
set telefoneFixo_cliente = "40038925"
where idCliente = 1;

-- 10 Exibir os dados dos clientes para verificar se alterou
select * from cliente;

-- 11 Exibir os dados dos pets e dos seus respectivos donos
select * from pet 
inner join cliente on pet.fk_cliente = cliente.idCliente;

-- 12 Exibir os dados dos pets e dos seus respectivos donos, mas somente de um determinado cliente
select preco_pet, cliente.nome_cliente as cl, cliente.idCliente as id from pet 
inner join cliente on pet.fk_cliente = cliente.idCliente
where idCliente = 3;

select sum(preco_pet) from pet where tipo_pet = "Cachorro";
select round(preco_pet) from pet;
select min(preco_pet) from pet;
select max(preco_pet), tipo_pet, raca_pet from pet;
select truncate(preco_pet,2) from pet;
select avg(round(preco_pet,2)) as media_arredondada from pet;

-- 13 Excluir algum pet
delete from pet where idPet = 101;

-- 14 Exibir os dados dos pets para verificar se excluiu
select * from pet;

-- 15 Excluir as tabelas;
drop table pet;
drop table cliente;

create table agendamento(
idAgendamento int not null auto_increment,
dataAgendamento date not null,
horarioAgendamento time not null,
fk_cliente int,
primary key(idAgendamento),
foreign key (fk_cliente) references cliente(idCliente)
);
select * from agendamento;
desc agendamento;
insert into agendamento (dataAgendamento, horarioAgendamento, fk_cliente) values
("2021-10-19", "16:45:00", 2),
("2021-10-21", "18:30:00", 1),
("2021-10-12", "16:00:00", 3);

select agendamento.*, cliente.nome_cliente, pet.idPet from cliente inner join agendamento
on agendamento.fk_cliente = cliente.idCliente
inner join pet on pet.fk_cliente = cliente.idCliente;
