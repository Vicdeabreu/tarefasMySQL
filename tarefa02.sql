create database tarefa2MySQL;
create table marcas(
	id int primary key not null auto_increment unique,
	nome varchar(1000) not null,
    origem_marca varchar(1000) default 'Brasil'
);

create table carros(
	id int primary key not null auto_increment unique,
    nome varchar(1000) not null,
	marca_fk int
);

create table carros_marcas(
	id int primary key not null auto_increment, 
    marcas_id int,
    carros_id int,
    foreign key(marcas_id) references marcas(id),
    foreign key(carros_id) references carros(id)
);

insert into marcas values(null, "Volkswagen", default);
insert into carros values(null, "Sentra", 1);

select * from marcas;
select * from carros;

update carros set nome = "Gol" where id = 1;

alter table marcas add column tipo_carro varchar(100) after nome;