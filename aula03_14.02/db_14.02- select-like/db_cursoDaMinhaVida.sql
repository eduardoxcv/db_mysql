CREATE SCHEMA IF NOT EXISTS `db_cursoDaMinhaVida` DEFAULT CHARACTER SET utf8 ;
USE `db_cursoDaMinhaVida` ;

-- -----------------------------------------------------
-- Table `db_cursoDaMinhaVida`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cursoDaMinhaVida`.`tb_categoria` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(255) NOT NULL,
  `presencial_online` VARCHAR(255),
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

insert into  tb_categoria (categoria,presencial_online)value ("Pedagogia","presencial");
insert into  tb_categoria (categoria,presencial_online)value ("Informática","online");
insert into  tb_categoria (categoria,presencial_online)value ("Música","presencial");
insert into  tb_categoria (categoria,presencial_online)value ("Infantil","presencial");
insert into  tb_categoria (categoria,presencial_online)value ("Braille e Libras","online");
-- -----------------------------------------------------
-- Table `db_cursoDaMinhaVida`.`tb_curso`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `db_cursoDaMinhaVida`.`tb_curso` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome_curso` VARCHAR(255) NOT NULL,
  `descrição` VARCHAR(255) NOT NULL,
  `valor` DECIMAL(8,2) NOT NULL,
  `tempo_duracao` VARCHAR(20),
  `categoria_id` bigint,
    PRIMARY KEY (`id`),
      FOREIGN KEY (`categoria_id`)  REFERENCES `tb_categoria`(`id`)
);

insert into  tb_curso (nome_curso,descrição,valor,tempo_duracao,categoria_id)
value ("Educação Híbrida","O curso de Educação Híbrida é direcionado à alunos e profissionais da Educação",69.90,"360h",1);
insert into  tb_curso (nome_curso,descrição,valor,tempo_duracao,categoria_id)
value ("Assistente de Creche","O curso de Assistente de Creche é direcionado à alunos e profissionais da Educação",49.90,"120h",1);
insert into  tb_curso (nome_curso,descrição,valor,tempo_duracao,categoria_id)
value ("Informática Básica","O curso de Informática Básica é direcionado à alunos do nivel básico",25.90,"260h",2);
insert into  tb_curso (nome_curso,descrição,valor,tempo_duracao,categoria_id)
value ("Word Avançado","O curso de Informática Básica é direcionado à alunos com interesse em obter niveis avançaos",35.90,"360h",2);
insert into  tb_curso (nome_curso,descrição,valor,tempo_duracao,categoria_id)
value ("Teoria Musical","O curso de Teoria Musical é direcionado à alunos com mais de 15 anos de experiencia",399.90,"500h",3);
insert into  tb_curso (nome_curso,descrição,valor,tempo_duracao,categoria_id)
value ("Musicalização Infantil","O curso de Musicalização Infantil é direcionado a crianças de 0 a 3 anos",19.90,"6h",3);
insert into  tb_curso (nome_curso,descrição,valor,tempo_duracao,categoria_id)
value ("Alfabetização"," curso de Alfabetização e Letramento é direcionado a profissionais da educação",599.90,"360h",4);
insert into  tb_curso (nome_curso,descrição,valor,tempo_duracao,categoria_id)
value ("Libras Básico","O curso de Libras Básico é direcionado à alunos de qualquer idade com nivel basico",19.90,"20h",5);


 select * from tb_curso;
 select * from tb_categoria;

select * from tb_curso where valor > 50;
select * from tb_curso where valor > 3 and valor < 60;
select * from tb_curso inner join tb_categoria on
tb_curso.categoria_id = tb_categoria.id;
select * from tb_curso  where nome_curso like "%j%"; 
select * from tb_curso inner join tb_categoria
on  tb_categoria.id =1 = tb_curso.categoria_id ;

