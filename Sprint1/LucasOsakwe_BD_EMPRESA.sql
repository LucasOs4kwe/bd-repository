-- 1
create database SuperFacul;

-- 1
create table Empresa (
idEmpresa int primary key auto_increment,
nomeEmpresa varchar(50),
responsavel varchar(40)
);

-- 2
alter table Empresa
modify column responsavel varchar(50);

-- 3
insert into Empresa (nomeEmpresa,responsavel) values ("Fleury", "Maria");
insert into Empresa (nomeEmpresa,responsavel) values ("C6", "Pedro");
insert into Empresa (nomeEmpresa,responsavel) values ("TIVIT", "Camila");
insert into Empresa (nomeEmpresa,responsavel) values ("Safra", "Natalia");

-- 4
select * from Empresa;

-- 5 
select nomeEmpresa, responsavel from Empresa;

-- 6
select * from Empresa
order by nomeEmpresa;

-- 7 
select * from Empresa
order by responsavel desc;

-- 8 
select * from Empresa where nomeEmpresa like "%r%";

-- 9
select * from Empresa where nomeEmpresa like "c%";

-- 10
select * from Empresa where nomeEmpresa like "%r_";

-- 11
update Empresa
set responsavel = "Paulo"
where idEmpresa = 2;

select * from Empresa;

-- 12 
delete from Empresa where idEmpresa = 3;

select * from Empresa;

-- 13
drop table Empresa;
