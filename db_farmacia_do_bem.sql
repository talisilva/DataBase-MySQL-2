create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment not null, 
tarja varchar(255),
cosmetico varchar(3), 
primary key(id)
);

insert into tb_categoria (tarja, cosmetico) values("amarela","sim" );
insert into tb_categoria (tarja, cosmetico) values("vermelha (sem retenção da receita)","sim" );
insert into tb_categoria (tarja, cosmetico) values("vermelha (com retenção da receita)","não" );
insert into tb_categoria (tarja, cosmetico) values("amarela","não" );
insert into tb_categoria (tarja, cosmetico) values("preta","não" );

create table tb_produto(
id bigint auto_increment not null,
nome varchar(255),
preco decimal(6,2), 
Descon_Fabrica decimal(6,2), 
codigo varchar(255),
categoria_id bigint
);

insert into tb_produto(nome, preco, Descon_Fabrica,codigo, categoria_id) values("Dorflex", 10.00, 2.00, "32132130011", 1);
insert into tb_produto(nome, preco, Descon_Fabrica,codigo, categoria_id) values("Dexlant", 110.00, 22.00, "01232130011", 5);
insert into tb_produto(nome, preco, Descon_Fabrica,codigo, categoria_id) values("Bepantenol", 50.00, 7.00, "4442130011", 2);
insert into tb_produto(nome, preco, Descon_Fabrica,codigo, categoria_id) values("Amoxicilina comprimido", 30.00, 4.00, "9992130011", 3);
insert into tb_produto(nome, preco, Descon_Fabrica,codigo, categoria_id) values("Amoxicilina líquida", 60.00, 12.00, "22232130011", 3);
insert into tb_produto(nome, preco, Descon_Fabrica,codigo, categoria_id) values("Neusadina", 12.00, 2.00, "32132130011", 4);
insert into tb_produto(nome, preco, Descon_Fabrica,codigo, categoria_id) values("Deprelax", 160.00, 12.00, "12321300541", 5);
insert into tb_produto(nome, preco, Descon_Fabrica,codigo, categoria_id) values("Estomazil", 5.00, 2.00, "100000130011", 1);

select nome, preco, descon_fabrica, codigo from tb_produto where preco > 50;
select nome, preco, descon_fabrica, codigo from tb_produto where preco >= 3 and preco <= 60;
select nome, preco, descon_fabrica, codigo from tb_produto where nome like 'b%';
select nome, preco, descon_fabrica, codigo, tarja,cosmetico from tb_produto inner join tb_categoria on  tb_categoria.id = tb_produto.categoria_id;
select nome, preco, descon_fabrica, codigo, tarja, cosmetico from tb_produto inner join tb_categoria on  tb_categoria.id = tb_produto.categoria_id where cosmetico like '%sim%';
