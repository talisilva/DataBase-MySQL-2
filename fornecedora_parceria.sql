create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(id bigint auto_increment not null, Tipo varchar(255), fornecedora_parceira varchar(3),primary key(id));

insert into tb_categoria(tipo, fornecedora_parceira)values("Parafuso", "SIM");
insert into tb_categoria(tipo, fornecedora_parceira)values("Porta", "SIM");
insert into tb_categoria(tipo, fornecedora_parceira)values("Tinta", "SIM");
insert into tb_categoria(tipo, fornecedora_parceira)values("Ferramenta", "Nao");
insert into tb_categoria(tipo, fornecedora_parceira)values("vidro", "Nao");

create table tb_produtos(id bigint auto_increment not null,  nome varchar(255), preco decimal(6,2), codigo varchar(255), marca varchar(255),id_categoria bigint ,primary key(id),foreign key(id_categoria) references tb_categoria(id)  );



insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("Parafuso 5.8", 10.00, "120004324234234", "Martelo dinamico",1);
insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("PortaSofonada", 112.00, "440004324234234", "Reveira",2);
insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("Furadeira", 70.30, "120004324234234", "Lopes Gomes",4);
insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("Porta de Madeira", 127.00, "90004324234234", "Straw Kitty",2);
insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("Porta de Vidro", 117.00, "30004324234234", "Straw Kitty",2);
insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("Corta Martelo", 12.00, "9000432400000", "Guia",4);
insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("Porta de Aluminio", 99.50, "90004324234234", "Strawberry",2);
insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("Vidraça 1m", 71.50, "104324234234", "LSD",5);
insert into tb_produtos ( nome, preco, codigo, marca, id_categoria) values("Parafuso 1.2", 1.50, "104324234234", "LSD",1);


select nome, CONCAT('R$', FORMAT(preco,2,'pt_br')) as preco , codigo, marca from tb_produtos where preco > 50;
select nome, CONCAT('R$', FORMAT(preco,2,'pt_br')) as preco , codigo, marca from tb_produtos where preco > 3 and preco < 60 ;
select nome, CONCAT('R$', FORMAT(preco,2,'pt_br')) as preco , codigo, marca from tb_produtos where nome like 'C%';

select nome, preco, codigo, marca, tipo, fornecedora_parceira from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id_categoria; 

select nome, preco, codigo, marca, tipo, fornecedora_parceira from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.id_categoria where tipo like 'Ferrament%';

