create database gameonline;

use gameonline;

create table tb_classe (
id bigint auto_increment not null,
elemento varchar(255) not null,
ser varchar(255) not null,
primary key(id));


insert into tb_classe (elemento, ser) values( "ar", "feticeira");

insert into tb_classe (elemento, ser) values("fogo", "mago" );

insert into tb_classe (elemento, ser) values("terra", "ninja");

insert into tb_classe (elemento, ser) values("água", "avatar");

insert into tb_classe (elemento, ser) values("terra", "reptiliano");


create table tb_personagem(

id bigint auto_increment not null,
nome varchar(255) not null,
ataque int(8) not null,
defesa int(8) not null,
vida int(8) not null,
id_personagem bigint not null,
primary key(id),
foreign key (id_personagem)
references tb_classe(id)
);
insert into tb_personagem (nome, ataque, defesa, vida,id_personagem ) values("yennefer", 2500, 600, 2300,1);

insert into tb_personagem (nome, ataque, defesa, vida,id_personagem) values("mago branco", 3500, 700, 7300,2);

insert into tb_personagem (nome, ataque, defesa, vida,id_personagem) values("gaara", 2500, 1220, 1300,3);

insert into tb_personagem (nome, ataque, defesa, vida,id_personagem) values("godzila", 500, 700, 1300,5);

insert into tb_personagem (nome, ataque, defesa, vida,id_personagem) values("vladmir", 900, 900, 300,2);

insert into tb_personagem (nome, ataque, defesa, vida,id_personagem) values("triss", 500, 700, 1300,1);

insert into tb_personagem (nome, ataque, defesa, vida,id_personagem) values("3 caldas", 700, 750, 2300,3);

insert into tb_personagem (nome, ataque, defesa, vida,id_personagem) values("kora", 100, 150, 600,4);

select nome, ataque, defesa, vida from tb_personagem where ataque >= 2000;
select nome, ataque, defesa, vida from tb_personagem where defesa between 1000 and 2000;
select nome, ataque, defesa, vida from tb_personagem where nome like "%c";

select nome, ataque, defesa, vida, elemento, ser from tb_personagem inner join
tb_classe on tb_classe.id = tb_personagem.id_personagem;

select nome, ataque, defesa, vida, elemento, ser from tb_personagem inner join
tb_classe on tb_classe.id = tb_personagem.id_personagem where ser like '%arqueiro%';