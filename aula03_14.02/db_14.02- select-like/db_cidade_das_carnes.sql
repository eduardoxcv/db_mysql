CREATE SCHEMA IF NOT EXISTS `db_cidade_das_carnes,` DEFAULT CHARACTER SET utf8 ;
USE `db_cidade_das_carnes,` ;

-- -----------------------------------------------------
-- Table `db_cidade_das_carnes,`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cidade_das_carnes,`.`tb_categoria` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(255) NOT NULL,
  `fresco_congelado` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

insert into  tb_categoria (categoria,fresco_congelado)value ("BOVINO","CONGELADO");
insert into  tb_categoria (categoria,fresco_congelado)value ("AVES","CONGELADO");
insert into  tb_categoria (categoria,fresco_congelado)value ("PESCADOS","CONGELADO");
insert into  tb_categoria (categoria,fresco_congelado)value ("CHURRASCO","FRESCO");
insert into  tb_categoria (categoria,fresco_congelado)value ("VARIADOS","FRESCO");
-- -----------------------------------------------------
-- Table `db_cidade_das_carnes,`.`tb_produto`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `db_cidade_das_carnes,`.`tb_produto` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome_produto` VARCHAR(255) NOT NULL,
  `descrição` VARCHAR(255) NOT NULL,
  `valor` DECIMAL(8,2) NOT NULL,
  `vencimento` DATE,
  `categoria_id` bigint,
    PRIMARY KEY (`id`),
      FOREIGN KEY (`categoria_id`)  REFERENCES `tb_categoria`(`id`)
);

insert into  tb_produto (nome_produto,descrição,valor,vencimento,categoria_id)
value ("BIFE DE CONTRA FILÉ 900G","O Bife de Contra Filé é um corte macio e muito saboroso.",69.90,"2022-08-10",1);
insert into  tb_produto (nome_produto,descrição,valor,vencimento,categoria_id)
value ("LAGARTO 2.2KG","Localizado na parte traseira do boi",33.80,"2022-10-21",1);
insert into  tb_produto (nome_produto,descrição,valor,vencimento,categoria_id)
value ("FILÉ DE PEITO DE FRANGO 1.1KG","Uma carne leve, macia, saborosa e nutritiva",04.99,"2022-10-21",2);
insert into  tb_produto (nome_produto,descrição,valor,vencimento,categoria_id)
value ("COXINHA DA ASA 3KG"," Coxinhas das Asas tem o tamanho ideal para a churrasqueira",90.99,"2023-09-09",2); -- ok
insert into  tb_produto (nome_produto,descrição,valor,vencimento,categoria_id)
value ("FILÉ DE TILÁPIA 800G ","Certificada com o selo ASC de cultura sustentável",12.80,"2024-10-21",3);
insert into  tb_produto (nome_produto,descrição,valor,vencimento,categoria_id)
value ("FILE SAINT PETERS 450G","Bem leve, saboroso e suave",29.90,"2022-04-01",3); -- ok 
insert into  tb_produto (nome_produto,descrição,valor,vencimento,categoria_id)
value ("PICANHA ARGENTINA ANGUS DE 1,1KG ","Picanha Angus Argentina é proveniente de matrizes de raças britâncias",99.90,"2023-06-24",4);
insert into  tb_produto (nome_produto,descrição,valor,vencimento,categoria_id)
value ("MISTURA 4 LEGUMES 300G"," Mistura 4 Legumes (batata, cenoura, ervilha e vagem)",03.01,"2022-10-21",5);


 select * from tb_produto;
 select * from tb_categoria;

select * from tb_produto where valor > 50;
select * from tb_produto where valor > 3 and valor < 60;
select * from tb_produto inner join tb_categoria on
tb_produto.categoria_id = tb_categoria.id;
select * from tb_produto  where nome_produto like "%c%"; 
select * from tb_produto inner join tb_categoria
on  tb_categoria.id =1 = tb_produto.categoria_id ;

