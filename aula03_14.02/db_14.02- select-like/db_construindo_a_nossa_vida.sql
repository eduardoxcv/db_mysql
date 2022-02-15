CREATE SCHEMA IF NOT EXISTS `db_construindo_a_nossa_vida` DEFAULT CHARACTER SET utf8 ;
USE `db_construindo_a_nossa_vida` ;

-- -----------------------------------------------------
-- Table `db_construindo_a_nossa_vida`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_construindo_a_nossa_vida`.`tb_categoria` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(255) NOT NULL,
  `interno_externo` VARCHAR(255),
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

insert into  tb_categoria (categoria,interno_externo)value ("BANHEIRO","INTERNO");
insert into  tb_categoria (categoria,interno_externo)value ("COZINHA","INTERNO");
insert into  tb_categoria (categoria,interno_externo)value ("CONTRUÇÃO","INT E EXT");
insert into  tb_categoria (categoria,interno_externo)value ("JARDIM","EXTERNO");
insert into  tb_categoria (categoria,interno_externo)value ("CONTRUÇÃO","INT E EXT");
-- -----------------------------------------------------
-- Table `db_construindo_a_nossa_vida`.`tb_produto`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `db_construindo_a_nossa_vida`.`tb_produto` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome_produto` VARCHAR(255) NOT NULL,
  `descrição` VARCHAR(255) NOT NULL,
  `valor` DECIMAL(8,2) NOT NULL,
  `peso` VARCHAR(10),
  `categoria_id` bigint,
    PRIMARY KEY (`id`),
      FOREIGN KEY (`categoria_id`)  REFERENCES `tb_categoria`(`id`)
);

insert into  tb_produto (nome_produto,descrição,valor,peso,categoria_id)
value ("Chuveiro Eletrônico","220V 6800W Branco Fit Hydra",69.90,"-",1);
insert into  tb_produto (nome_produto,descrição,valor,peso,categoria_id)
value ("Torneira para Pia","Bica Alta Rose Gold Prima Fani",33.80,"-",1);
insert into  tb_produto (nome_produto,descrição,valor,peso,categoria_id)
value ("Cuba Simples","Polida+torneira Paris Gourmet",44.99,"-",2);
insert into  tb_produto (nome_produto,descrição,valor,peso,categoria_id)
value ("Sifão Sanfonado","Cromado - Fere",09.99,"-",2); -- ok
insert into  tb_produto (nome_produto,descrição,valor,peso,categoria_id)
value ("Cimento CP II F 32 ","Todas as Obras Votoran",22.80,"50kg",3);
insert into  tb_produto (nome_produto,descrição,valor,peso,categoria_id)
value ("Argamassa Porcelanato","Cinza Fortaleza",15.90,"20kg",3); -- ok 
insert into  tb_produto (nome_produto,descrição,valor,peso,categoria_id)
value ("Terra Vegetal","A terra vegetal é uma mistura de terra comum com restos de plantas",9.90," 10Kg",4);
insert into  tb_produto (nome_produto,descrição,valor,peso,categoria_id)
value ("Tinta Acrílica"," Piso Cinza 18L Suvinil",254.90,"18KG",5);


 select * from tb_produto;
 select * from tb_categoria;

select * from tb_produto where valor > 50;
select * from tb_produto where valor > 3 and valor < 60;
select * from tb_produto inner join tb_categoria on
tb_produto.categoria_id = tb_categoria.id;
select * from tb_produto  where nome_produto like "%c%"; 
select * from tb_produto inner join tb_categoria
on  tb_categoria.id =1 = tb_produto.categoria_id ;

