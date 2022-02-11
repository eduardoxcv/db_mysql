/*Atividade 3
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_escola;

use db_escola;

create table tb_notas (
id bigint auto_increment,
nome varchar (255),
idade int,
materia varchar (255),
nota decimal (2,2),
primary key (id)
);

insert into tb_notas (nome, idade, materia, nota)
value ("Maria Henrique", 11, "Matematica", 9);
insert into tb_notas (nome, idade, materia, nota)
value ("Victor Takeshi", 11, "Matematica", 7.5);
insert into tb_notas (nome, idade, materia, nota)
value ("Matheus Takeda", 11, "Matematica", 4.9);
insert into tb_notas (nome, idade, materia, nota)
value ("Michele Linares", 11, "Matematica", 7.1);
insert into tb_notas (nome, idade, materia, nota)
value ("Janduir Furtado", 11, "Matematica", 0.6);
insert into tb_notas (nome, idade, materia, nota)
value ("Eduardo Henrique", 11, "Matematica", 9.8);


select * from tb_notas;
select * from tb_notas where nota > 7;
select * from tb_notas where nota < 7;

-- ___________________alterações na estrutura_______________________
alter table tb_notas modify nota decimal(2,1);

delete from tb_notas where id = 4; 
-- comando para deletar uma linha 