/*Atividade 1

Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game. PASSO 1 = OK

O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.

siga exatamente esse passo a passo:

Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.

Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).

Popule esta tabela classe com até 5 dados.ok


Popule esta tabela personagem com até 8 dados. OK

Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.

Faça um select utilizando LIKE buscando os personagens com a letra C.

Faça um um select com Inner join entre tabela classe e personagem.

Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros).
salve as querys para cada uma dos requisitos do exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/
drop database db_generation_game_online;
create database db_generation_game_online;
use db_generation_game_online;

select * from tb_classe;
create table tb_classe(
id bigint auto_increment,
categoria varchar (255),
nivel_estrelas bigint,
primary key (id)
);

insert into tb_classe (categoria, nivel_estrelas) 
values ("terrorista","5");
insert into tb_classe (categoria, nivel_estrelas) 
values ("terrorista","3");
insert into tb_classe (categoria, nivel_estrelas) 
values ("terrorista","1");
insert into tb_classe (categoria, nivel_estrelas) 
values ("Anti-terrorista","5");
Insert into tb_classe (categoria, nivel_estrelas) 
values ("Anti-terrorista","3");
insert into tb_classe (categoria, nivel_estrelas) 
values ("Anti-terrorista","1");

select * from tb_personagem;
create table tb_personagem(
id bigint auto_increment,
nome varchar (255),
ataque int,
defesa int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_classe(id)
);

insert tb_personagem (nome, ataque, defesa, categoria_id) 
values ("Soldado Wilc",5000,1500,4);
insert tb_personagem (nome, ataque, defesa, categoria_id) 
values ("Soldado Calton",850,300,4);
insert tb_personagem (nome, ataque, defesa, categoria_id) 
values ("Soldado Skil",900,3000,5);
insert tb_personagem (nome, ataque, defesa, categoria_id) 
values ("Soldado Stive",2100,1800,6);
insert tb_personagem (nome, ataque, defesa, categoria_id) 
values ("Jacks", 3600,1200,1);
insert tb_personagem (nome, ataque, defesa, categoria_id) 
values ("Tonyd", 5000,3000,2);
insert tb_personagem (nome, ataque, defesa, categoria_id) 
values ("Stif", 250,90,1);
insert tb_personagem (nome, ataque, defesa, categoria_id) 
values ("Cloft", 2050,3000,3);

select * from tb_personagem;
select * from tb_classe;
select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa > 1000 and defesa <2000;
select * from tb_personagem where nome like "%C%";
select * from tb_personagem inner join tb_classe on
tb_personagem.categoria_id = tb_classe.id;

