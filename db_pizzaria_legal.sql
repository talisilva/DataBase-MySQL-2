create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment not null, 
especialidade varchar(255), 
categoria varchar(25), 
primary key(id)) ;



insert into tb_categoria (especialidade, categoria) values ("Bovino", "Carne Vermelha");
insert into tb_categoria (especialidade, categoria) values ("Aves", "Carne Branca");
insert into tb_categoria (especialidade, categoria) values ("Peixe", "Carne Branca");
insert into tb_categoria (especialidade, categoria) values ("Vegetariana", "Vegetariana");
insert into tb_categoria (especialidade, categoria) values ("Doce", "Doceria");

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment not null, 
sabor varchar(255),
preco decimal(6,2),
bebida varchar(3), 
premium varchar(3), 
id_categoria bigint, 
primary key(id),
foreign key(id_categoria) 
references tb_categoria(id));

insert into tb_Pizza (sabor, preco, bebida, premium,id_categoria) values ("Calabresa", 39.00 ,"sim","não",5 );
insert into tb_Pizza (sabor, preco, bebida, premium,id_categoria) values ("Muzzalera", 39.00 ,"sim","não", 4);
insert into tb_Pizza (sabor, preco, bebida, premium,id_categoria) values ("Brócolis", 21.00 ,"sim","não", 4);
insert into tb_Pizza (sabor, preco, bebida, premium,id_categoria) values ("Romeo e Julieta", 24.00 ,"sim","não", 5);
insert into tb_Pizza (sabor, preco, bebida, premium,id_categoria) values ("Salmao e Queijo", 44.00 ,"sim","não", 1);
insert into tb_Pizza (sabor, preco, bebida, premium,id_categoria) values ("Carne seca", 39.00 ,"sim","não", 2);
insert into tb_Pizza (sabor, preco, bebida, premium,id_categoria) values ("Strogonoff", 62.00 ,"sim","não", 2);
insert into tb_Pizza (sabor, preco, bebida, premium,id_categoria) values ("Frango Catupiry", 39.00 ,"sim","não", 2);

update tb_pizza set  id_categoria = 1 where id = 2;
update tb_pizza set  id_categoria = 5 where id = 1;

select * from tb_Pizza;

select sabor, preco, bebida, premium from tb_pizza where preco > 45;
select sabor, preco, bebida, premium from tb_pizza where preco >= 29 and preco <= 60;
select sabor, preco, bebida, premium from tb_pizza where sabor like 'c%';

select sabor, preco, bebida, premium, especialidade, categoria from tb_pizza inner join tb_categoria on  tb_categoria.id = tb_pizza.id_categoria;

select sabor, preco, bebida, premium, especialidade, categoria from tb_pizza inner join tb_categoria on  tb_categoria.id = tb_pizza.id_categoria where especialidade like '%doce%';
