create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(id bigint auto_increment not null, Tipo varchar(255), importado varchar(3),primary key(id));

insert into tb_categoria(tipo, importado)values("Legumes", "SIM");
insert into tb_categoria(tipo, importado)values("Fruta", "SIM");
insert into tb_categoria(tipo, importado)values("Hortaliças", "SIM");
insert into tb_categoria(tipo, importado)values("Fruta", "Nao");
insert into tb_categoria(tipo, importado)values("Hortaliças", "Nao");

create table tb_produtos(id bigint auto_increment not null,  nome varchar(255), preco decimal(6,2), codigo varchar(255), marca varchar(255),id_categoria bigint ,primary key(id),foreign key(id_categoria) references tb_categoria(id)  );



insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("Beterraba", 10.00, "120004324234234", "Martelo dinamico",1);
insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("Cenoura", 2.00, "440004324234234", "Reveira",1);
insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("Abacaxi", 10.00, "120004324234234", "Lopes Gomes",4);
insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("Maça Gala", 7.00, "90004324234234", "Straw Kitty",2);
insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("Maça red", 7.00, "30004324234234", "Straw Kitty",2);
insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("Laranja", 2.00, "9000432400000", "Guia",4);
insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("Morango", 2.50, "90004324234234", "Strawberry",2);
insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("Hortelâ", 1.50, "104324234234", "LSD",5);
insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("Figo", 80.50, "104324234234", "LSD",1);


select nome, CONCAT('R$', FORMAT(preco,2,'pt_br')) as preco , codigo, marca from tb_produtos where preco > 50;
select nome, CONCAT('R$', FORMAT(preco,2,'pt_br')) as preco , codigo, marca from tb_produtos where preco > 3 and preco < 60 ;
select nome, CONCAT('R$', FORMAT(preco,2,'pt_br')) as preco , codigo, marca from tb_produtos where nome like 'b%';

select nome, preco, codigo, marca, tipo, importado from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria; 

select nome, preco, codigo, marca, tipo, importado from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.id_categoria where tipo like '%legumes%';
