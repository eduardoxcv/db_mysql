-- visualizar toda tabela
select * from tb_produtos;

-- seleção usando % ______________________________________________________
-- o que fiz? pesquisei na tabela PRODUTOS na coluna NOMES tudo que começa com A --
select * from tb_produtos where nome like "A%";

-- o que fiz? pesquisei na tabela PRODUTOS na coluna NOMES tudo que tem A na palavra 
select * from tb_produtos where nome like "%A%";

-- o que fiz? pesquisei na tabela PRODUTOS na coluna NOMES tudo que termina com a letra A 
select * from tb_produtos where nome like "%A";

-- o que fiz? pesquisei na tabela PRODUTOS na coluna NOMES e QUANTIDADES tudo que termina com a letra A (tirei o *)
select nome, quantidade from tb_produtos where nome like "%A";

-- o que fiz? pesquisei na tabela PRODUTOS na coluna NOMES e QUANTIDADES tudo que começa A e termina com M (funciona OR tb)
select nome, quantidade from tb_produtos where nome like "A%" and nome like "%M";

-- contar registros ______________________________________________________
select count(id) from tb_produtos;

-- O sum serve para fazer a soma (somou tudo que tem na coluna PRECO
select sum(id) from tb_produtos;

-- renomeou o resltado, o nome da coluna se forna valor total
select sum(preco) as valorTotal from tb_produtos;

-- renomeou o nome da coluna, de nome foi para produtos
select nome as produto from tb_produtos;

-- retorno de media dos valores
select avg (preco) from tb_produtos;

-- valor minimo de uma coluna
select min (preco) from tb_produtos; 

-- valor maximo de uma coluna
select max(preco) from tb_produtos;

-- RELACIONAMENTOS ENTRE TABELAS_____________________________

-- nesse caso a prioridade é o produto então quem manda é o produto
select * from 
tb_produtos left join tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;

-- nesse caso a prioridade é o produto então quem manda é a categoria
select * from 
tb_produtos l right join  tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;

-- nesse caso ele só tras os produtos que estão relacionados com as categorias e vice versa
select * from 
tb_produtos l inner join  tb_categorias
on tb_produtos.categoria_id = tb_categorias.id;
