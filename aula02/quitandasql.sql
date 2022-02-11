create database db_quitanda;

-- acessar o banco de dados (sem isso não roda)
use db_quitanda;

-- criando a tabela com os seus tamanhos
create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
quantidade int,
preco decimal,
primary key (id)
);

insert into tb_produtos (nome, quantidade, preco)
values ("Maçã", 10, 1.99);
insert into tb_produtos (nome, quantidade, preco)
values ("Banana", 13, 4.99);
insert into tb_produtos (nome, quantidade, preco)
values ("Manga", 20, 5.49);
insert into tb_produtos (nome, quantidade, preco)
values ("Melancia", 3, 10.00);
insert into tb_produtos (nome, quantidade, preco)
values ("Cebola", 100, 1.50);

-- _________________Operadores de seleção_______________________________________________

select * from tb_produtos; 
-- sempre usar para visualizar a tabela (*) sifnifica selecionar tudo

select nome from tb_produtos; 
-- colocar o nome da colna no lucar do * aparece somente a coluna desejada 
-- se quiser um ou mais é só separar com a virgula 

select * from tb_produtos where preco > 1.99;
-- nesse caso o sistema vai apresentar tudo cujo o preco for maior que 1.99 

-- _________________________________________________________________________
update tb_produtos set preco = 1.99 where id = 2;
-- comando para alterar um valor

delete from tb_produtos where id = 2; 
-- comando para deletar uma linha 



-- _______________________Alteraçãoes na estrutura da tabela_________________
alter table tb_produtos modify preco decimal(8,2);
-- comando para alterar a ESTRUTURA, nesse caso delaramos que precisamos
-- de 8 casas antes da , e 2 depois EX: 999.999.99,00

alter table tb_produtos add descricao varchar (255);
-- comando para adicionar uma nova colna na minha tabela

alter table tb_produtos drop descricao;
-- no alter table de cima eu coloquei uma coluna descrição e com esse comando "drop"
-- eu estou tirando a coluna descricao
-- __________________________________________________________________________________