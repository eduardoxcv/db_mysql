/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.*/
--
--
--
create database db_rh;

use db_rh;

create table tb_funcionarios (
id bigint auto_increment,
nome varchar (255),
departamento varchar (255),
cargo varchar (255),
matricula int,
salario decimal (8,2),
primary key (id)
);

insert into tb_funcionarios (nome, departamento, cargo, matricula, salario)
values("Maria Alves", "Compras","Compradora",1520,1800.00);
insert into tb_funcionarios (nome, departamento, cargo, matricula, salario)
values("Alessandro Neves", "RH","Analista",1530,2050.00);
insert into tb_funcionarios (nome, departamento, cargo, matricula, salario)
values("Julia Alves", "TI","Gerente",1030,15000.00);
insert into tb_funcionarios (nome, departamento, cargo, matricula, salario)
values("Eduardo Henrique", "TI","Desenvolvedor",1533,9000.00);
insert into tb_funcionarios (nome, departamento, cargo, matricula, salario)
values("Monalisa Nunes", "DP","Estagiaria",1000,1000.00);

select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;
select * from tb_funcionarios; 

alter table tb_funcionarios modify cargo varchar(200);