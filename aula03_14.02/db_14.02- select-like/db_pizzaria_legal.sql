/*Atividade 2

Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.

Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados. ok 

Popule esta tabela pizza com até 8 dados.ok

Faça um select que retorne os Produtos com o valor maior do que 45 reais. ok

Faça um select trazendo os Produtos com valor entre 29 e 60 reais. ok 

Faça um select utilizando LIKE buscando os Produtos com a letra C. ok

Faça um um select com Inner join entre tabela categoria e pizza. ok

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).*/


drop database db_pizzaria_legal; -- apagar banco
create database db_pizzaria_legal; -- criar banco 
use db_pizzaria_legal; -- usar banco 

select * from tb_categoria;
create table tb_categoria(
id bigint auto_increment,
tipo varchar (255),
borda_rechada varchar (255),
primary key (id)
);

insert into  tb_categoria (tipo,borda_rechada)
value ("salgada","sim");
insert into  tb_categoria (tipo,borda_rechada)
value ("Vegana","não");
insert into  tb_categoria (tipo,borda_rechada)
value ("Doce","não");
insert into  tb_categoria (tipo,borda_rechada)
value ("Integral","sim");
insert into  tb_categoria (tipo,borda_rechada)
value ("Sem Lactose","sim");

select * from tb_pizza;
create table  tb_pizza(
id bigint auto_increment,
nome varchar (255),
ingredientes varchar (255),
valor decimal (8,2),
tx_entrega decimal (8,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into  tb_pizza (nome,ingredientes,valor,tx_entrega,categoria_id)
value ("Calabresa","Calabresa e Cebola", 31.90,1.99,1);
insert into  tb_pizza (nome,ingredientes,valor,tx_entrega,categoria_id)
value (" Margherita","molho de tomate, mussarela de búfala e manjericão,", 61.90,1.99,1);
insert into  tb_pizza (nome,ingredientes,valor,tx_entrega,categoria_id)
value ("Couve-flor","couve-flor,cogumelos, alho-poró e cebola roxa", 45.90,2.99,2);
insert into  tb_pizza (nome,ingredientes,valor,tx_entrega,categoria_id)
value ("Beringela","Beringela queijo vegetal, pimenta e Cebola", 31.90,1.99,2);
insert into  tb_pizza (nome,ingredientes,valor,tx_entrega,categoria_id)
value ("Romeu e Julieta","Queijo e goiabada", 59.90,1.99,3);
insert into  tb_pizza (nome,ingredientes,valor,tx_entrega,categoria_id)
value ("Brigadeiro","Chocolate e granulado", 59.90,1.99,3);
insert into  tb_pizza (nome,ingredientes,valor,tx_entrega,categoria_id)
value ("Rúcula","Rúcula,folhas frescas,tomates secos, azeitonas pretas e orégano ", 59.90,1.99,5);
insert into  tb_pizza (nome,ingredientes,valor,tx_entrega,categoria_id)
value ("brócolis e peito de peru","requeijão, mussarela, peito de peru, cebola, tomate e brócolis.", 39.90,1.99,4);

select * from tb_pizza;
select * from tb_pizza where valor > 45;
select * from tb_pizza where valor > 29 and valor < 60;
select * from tb_pizza  where nome like "%C%";
select * from tb_pizza inner join tb_categoria on
tb_pizza.categoria_id = tb_categoria.id;
select * from tb_pizza where categoria_id = 3;
