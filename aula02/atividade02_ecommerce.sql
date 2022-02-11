/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 5000.
Faça um select que retorne os produtos com o valor menor do que 5000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_commerce;

use db_commerce;

create table veiculos ( 
id bigint auto_increment,
modelo varchar (255),
marca varchar (255),
placa varchar (10),
valor decimal (8,2),
primary key (id)
);

insert into veiculos (modelo, marca, placa, valor)
values ("UNO MILE", "FIAT", "EBG-1073", 3990);
insert into veiculos (modelo, marca, placa, valor)
values ("GOL", "VW", "FQK-4248", 4990);
insert into veiculos (modelo, marca, placa, valor)
values ("VOYAGE", "VW", "EJS-4248", 29900);
insert into veiculos (modelo, marca, placa, valor)
values ("320I", "BMW", "ASB-3620", 59990);
insert into veiculos (modelo, marca, placa, valor)
values ("CELTA", "PRETO", "BOY-7740", 11499);
insert into veiculos (modelo, marca, placa, valor)
values ("KIA", "SOUL", "BJY-2780", 34990);
insert into veiculos (modelo, marca, placa, valor)
values ("SAVEIRO CROSS", "VW", "ITS-9494", 29900);
insert into veiculos (modelo, marca, placa, valor)
values ("147", "FIAT", "MMV-1530", 1500);

select * from veiculos where valor > 5000;
select * from veiculos where valor < 5000;
select * from veiculos; 

update veiculos set placa = "EBF-1073" where id = 1;

-- o exemplo abaixo não deu certo:
-- alter table veiculos convert to character set "EBG-1073" collate "EBF-1073";