show database;
/* Listar todos os bancos */
create database NomeDoBanco;
/* cria o banco de dados */
use NomeDoBanco;
/* usando o banco de dados */
drop database NomeDoBanco;
/* deletando o banco de dados */

create table nomedatabela(
    id int auto_increment primary key,
    nome varchar (20),
    issn int,
    id_editora int
);

create table editora (
    id integer auto_increment,
    nome_editora varchar(120) unique,
    pais varchar(5),
    primary key(id)
);

alter table periodicos add constraint fk_editora_periodico foreign key (id_editora) references editora(id);

insert into editora (nome_editora, pais) values ('iee','eua'), ('datasciencemagazine','eua');

select * from editora;




