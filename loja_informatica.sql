create table estado (
	idestado serial not null,
	nome varchar(50) not null,
	sigla char(2) not null,

	constraint pk_est_idestado primary key (idestado),
	constraint un_est_nome unique (nome),
	constraint un_est_sigla unique (sigla)
);
insert into estado (nome, sigla) values ('Paraíba', 'PB');
insert into estado (nome, sigla) values ('Pernambuco', 'PE');
insert into estado (nome, sigla) values ('Ceará', 'CE');
insert into estado (nome, sigla) values ('Rio Grande do Norte', 'RN');
select * from estado;

create table cidade (
	idcidade serial not null,
	nome varchar(60) not null,
	idestado integer not null,

	constraint pk_cid_idcidade primary key (idcidade),
	constraint fk_cid_idestado foreign key (idestado) references estado (idestado)
);
insert into cidade (nome, idestado) values ('Sumé', '1');
insert into cidade (nome, idestado) values ('Campina Grande', '1');
insert into cidade (nome, idestado) values ('Recife', '2');
insert into cidade (nome, idestado) values ('Fortaleza', '3');
insert into cidade (nome, idestado) values ('Natal', '4');
select * from cidade

create table endereco (
	idendereco serial not null,
	logradouro varchar(100) not null,
	numero varchar(10) not null,
	complemento varchar(50),
	bairro varchar(50) not null,
	idcidade integer not null,

	constraint pk_end_idendereco primary key (idendereco),
	constraint fk_end_idcidade foreign key (idcidade)  references cidade (idcidade)
	
);
insert into endereco (logradouro, numero, complemento, bairro, idcidade) 
values ('Rua São José', '120', 'Casa', 'Centro', '1');
insert into endereco (logradouro, numero, complemento, bairro, idcidade) 
values ('Avenida Brasil', '450', 'Apto 201', 'Liberdade', '2');
insert into endereco (logradouro, numero, complemento, bairro, idcidade) 
values ('Rua das Flores', '75', null, 'Boa Vista', '3');
insert into endereco (logradouro, numero, complemento, bairro, idcidade) 
values ('Avenida Beira Mar', '900', 'Apto 302', 'Meireles', '4');
insert into endereco (logradouro, numero, complemento, bairro, idcidade) 
values ('Rua João Pessoa', '210', 'Casa', 'Tirol', '5');
insert into endereco (logradouro, numero, complemento, bairro, idcidade) 
values ('Rua da Matriz', '38', null, 'Centro', 1);
select * from endereco;

create table cliente (
	idcliente serial not null,
	nome varchar(100) not null,
	cpf varchar(14) not null,
	email varchar(100) not null,
	idendereco integer not null,

	constraint pk_cln_idcliente primary key (idcliente),
	constraint un_cln_cpf unique (cpf),
	constraint un_cln_email unique (email),
	constraint fk_cln_idendereco foreign key (idendereco) references endereco (idendereco)
	
);
insert into cliente (nome, cpf, email, idendereco)
values ('João Silva', '11111111111', 'joao@email.com', '1');
insert into cliente (nome, cpf, email, idendereco)
values ('Maria Souza', '22222222222', 'maria@email.com', '2');
insert into cliente (nome, cpf, email, idendereco)
values ('Pedro Santos', '33333333333', 'pedro@email.com', '3');
insert into cliente (nome, cpf, email, idendereco)
values ('Ana Oliveira', '44444444444', 'ana@email.com', '4');
insert into cliente (nome, cpf, email, idendereco)
values ('Carlos Lima', '55555555555', 'carlos@email.com', '5');
insert into cliente (nome, cpf, email, idendereco)
values ('Fernanda Alves', '66666666666', 'fernanda@email.com', '6');
select * from cliente;

create table categoria (
	idcategoria serial not null,
	nome varchar(50) not null,

	constraint pk_ctg_idcategoria primary key (idcategoria),
	constraint un_ctg_nome unique (nome)
);
insert into categoria (nome) values ('Processadores');
insert into categoria (nome) values ('Placas de Vídeo');
insert into categoria (nome) values ('Memórias');
insert into categoria (nome) values ('Armazenamento');
insert into categoria (nome) values ('Periféricos');
select * from categoria;

create table produto (
	idproduto serial not null,
	nome varchar(100) not null,
	preco decimal(10,2) not null,
	estoque integer not null,
	idcategoria integer not null,
	
	constraint pk_prd_idproduto primary key (idproduto),
	constraint un_prd_nome unique (nome),
	constraint fk_prd_idcategoria foreign key (idcategoria) references categoria (idcategoria)
);
insert into produto (nome, preco, estoque, idcategoria) 
values ('Ryzen 5 5600', '799.90', '15', '1');
insert into produto (nome, preco, estoque, idcategoria) 
values ('Core i5 12400', '1099.90', '20', '1');
insert into produto (nome, preco, estoque, idcategoria) 
values ('RTX 4060', '1899.90', '8', '2');
insert into produto (nome, preco, estoque, idcategoria) 
values ('RX 7600', '1699.90', '6', '2');
insert into produto (nome, preco, estoque, idcategoria) 
values ('Memória 8GB DDR4', '149.90', '30', '3');
insert into produto (nome, preco, estoque, idcategoria) 
values ('Memória 16B DDR4', '279.90', '20', '3');
insert into produto (nome, preco, estoque, idcategoria) 
values ('SSD NVMe 500GB', '299.90', '25', '4');
insert into produto (nome, preco, estoque, idcategoria) 
values ('SSD NVMe 1TB', '549.90', '18', '4');
insert into produto (nome, preco, estoque, idcategoria) 
values ('Teclado Mecânico', '229.90', '12', '5');
insert into produto (nome, preco, estoque, idcategoria) 
values ('Mouse Gamer', '159.90', '20', '5');
select * from produto;

create table pedido (
	idpedido serial not null,
	data_pedido date not null,
	status varchar(20) not null,
	valor_total decimal(10,2) not null,
	idcliente integer not null,

	constraint pk_pdd_idpedido primary key (idpedido),
	constraint fk_pdd_idcliente foreign key (idcliente) references cliente (idcliente)
);
insert into pedido (data_pedido, status, valor_total, idcliente)
values ('2026-09-01', 'Finalizado', '1099.90', '1');
insert into pedido (data_pedido, status, valor_total, idcliente)
values ('2026-09-02', 'Finalizado', '949.80', '2');
insert into pedido (data_pedido, status, valor_total, idcliente)
values ('2026-09-03', 'Pendente', '1899.90', '3');
insert into pedido (data_pedido, status, valor_total, idcliente)
values ('2026-09-04', 'Enviado', '599.80', '4');
insert into pedido (data_pedido, status, valor_total, idcliente)
values ('2026-09-05', 'Finalizado', '1349.80', '5');
insert into pedido (data_pedido, status, valor_total, idcliente)
values ('2026-09-06', 'Pendente', '229.90', '1');
insert into pedido (data_pedido, status, valor_total, idcliente)
values ('2026-09-07', 'Enviado', '709.80', '6');
insert into pedido (data_pedido, status, valor_total, idcliente)
values ('2026-09-08', 'Finalizado', '2699.80', '2');
select * from pedido;

create table pedido_produto (
	idpedido integer not null,
	idproduto integer not null,
	quantidade integer not null,
	valor_unitario decimal(10,2) not null,

	constraint pk_pdp_idpedidoproduto primary key (idpedido, idproduto),
	constraint fk_pdp_idpedido foreign key (idpedido) references pedido (idpedido),
	constraint fk_pdp_idproduto foreign key (idproduto) references produto (idproduto)
);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values ('1', '1', '1', '799.90');
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values ('1', '6', '1', '279.90');
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values ('2', '5', '2', '149.90');
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values ('2', '7', '1', '299.90');
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values ('3', '3', '1', '1899.90');
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values ('4', '8', '1', '549.90');
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values ('4', '10', '1', '159.90');
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values ('5', '2', '1', '1099.90');
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values ('5', '5', '1', '149.90');
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario)
values ('5', '10', '1', '159.90');
select * from pedido_produto;

-- mostrar o soma de todos os pedidos de cada pedido
select idpedido, sum(valor_unitario) as total from pedido_produto group by idpedido order by idpedido;

-- Mostre o nome da categoria e a quantidade de produtos pertecentes a cada categoria
select
	categoria.nome as categoria,
	count(produto.idproduto)
from 
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
group by
	categoria.nome
order by
	categoria.nome

select * from produto


-- Mostre o nome da cidade e a quantidade de clientes cadastrados em cada cidade
SELECT
    cidade.nome AS cidade,
    COUNT(cliente.idcliente) AS quantidade
FROM cliente
LEFT JOIN endereco
    ON cliente.idendereco = endereco.idendereco
LEFT JOIN cidade
    ON endereco.idcidade = cidade.idcidade
GROUP BY cidade.nome
ORDER BY quantidade DESC;

-- Mostre o nome do produto, o nome da categoria e o preço do produto.
-- Exiba somente os produtos cujo preço seja maior que R$ 500,00.
-- Ordene do maior preço para o menor.
select
	produto.nome as produto,
	categoria.nome as categoria,
	produto.preco as preco
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
having
	produto.preco > 500
order by 
	produto.preco desc	

-- Mostre o nome de cada cliente e o valor total dos seus pedidos.
-- Considere apenas clientes que possuem pedidos.
-- Ordene do maior valor total para o menor.

select
	cliente.nome as cliente,
	sum(valor_total) as total
from
	pedido
inner join
	cliente on pedido.idcliente = cliente.idcliente
group by
	cliente.nome
order by
	total desc

-- Mostre o nome da categoria e o preço médio dos produtos dessa categoria.
-- Mostre somente as categorias cujo preço médio seja maior que R$ 500,00.
-- Ordene do maior preço médio para o menor.

select
	categoria.nome as categoria,
	avg(produto.preco) as preco
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
group by
	categoria.nome
having avg(produto.preco) > 500	
order by
	preco desc;



-- Mostre o nome dos clientes que possuem mais de um pedido e a quantidade de pedidos de cada um.
-- Ordene da maior quantidade de pedidos para a menor.

select
	cliente.nome as cliente,
	count(idpedido) as quantidade_pedidos
from
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
group by
	cliente.nome
having count(idpedido) > 1	
order by quantidade_pedidos desc;

-- Mostre o nome de cada produto e a quantidade total vendida.
-- Considere a soma das quantidades registradas em pedido_produto.
-- Mostre somente os produtos que tiveram mais de 1 unidade vendida.
-- Ordene da maior quantidade vendida para a menor.

select 
	produto.nome as produto,
	sum(quantidade) as quantidade
from 
	pedido_produto
left outer join
	produto on pedido_produto.idproduto = produto.idproduto
group by
	produto.nome
having sum(quantidade) > 1	
order by quantidade desc;


-- nome do cliente;
-- quantidade de pedidos realizados;
-- valor médio dos pedidos desse cliente.
-- Mostre somente clientes que possuem pelo menos 2 pedidos.
-- Ordene pelo valor médio, do maior para o menor.

select
	cliente.nome as cliente,
	count(idpedido) as quantidade_pedidos,
	avg(valor_total) as media_valor
from
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
group by cliente.nome	
having count(idpedido) > 1
order by media_valor desc;

-- nome da categoria;
-- nome do produto;
-- preço do produto.
-- Ordene primeiro pelo nome da categoria e, dentro de cada categoria, pelo preço do produto do maior para o menor.

select 
	categoria.nome as categoria,
	produto.nome as produto,
	preco as valor 
from 
	produto	
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
order by categoria.nome, preco desc


-- nome do cliente;
-- data do pedido;
-- valor total do pedido.
-- Considere somente pedidos com status Finalizado.
--Ordene pela data do pedido, da mais recente para a mais antiga.
select
	cliente.nome as cliente,
	data_pedido,
	valor_total
from 
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
where
	status = 'Finalizado'
order by data_pedido desc	





-- nome do produto;
-- preço;
-- nome da categoria.
-- Considere somente produtos com preço maior que R$ 500.
-- Ordene pelo preço, do maior para o menor.
select
	produto.nome as produto,
	produto.preco as preco,
	categoria.nome as categoria
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
where preco > 500
order by preco desc;


-- status do pedido;
-- quantidade de pedidos em cada status.
-- Ordene pela quantidade de pedidos, da maior para a menor.
select 
	pedido.status as status,
	count(status) as quantidade
from
	pedido
group by 
	pedido.status
order by 
	quantidade desc;

-- nome do cliente;
-- cidade onde ele mora.
-- Considere somente clientes que moram na cidade de Sumé.
-- Ordene pelo nome do cliente em ordem alfabética.
select
	cliente.nome as cliente,
	cidade.nome as cidade
from 
	cliente
left outer join
	endereco on cliente.idendereco = endereco.idendereco
left outer join
	cidade on endereco.idcidade = cidade.idcidade
where 
	cidade.idcidade = 1
order by
	cliente.nome asc;


-- nome da categoria;
-- quantidade de produtos dessa categoria;
-- quantidade total de itens em estoque nessa categoria.
-- Considere somente categorias cuja quantidade total em estoque seja maior que 30 unidades.
-- Ordene pela quantidade total em estoque, da maior para a menor.
select
	categoria.nome as categoria,
	count(idproduto) as quantidade_produtos,
	sum(produto.estoque) as total_itens
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
group by 
	categoria.nome	
having sum(produto.estoque) > 30	
order by
	sum(produto.estoque) desc;


-- nome do cliente;
-- quantidade de pedidos realizados.
-- Inclua também os clientes que ainda não possuem nenhum pedido.
-- Ordene pela quantidade de pedidos, da maior para a menor.
select
	cliente.nome as cliente,
	count(idpedido) as pedidos
from 
	cliente
left outer join
	pedido on cliente.idcliente = pedido.idcliente
group by 
	cliente.nome
order by
	count(idpedido) desc;


-- nome do produto;
-- preço;
-- nome da categoria.
-- Considere somente os produtos cujo preço seja maior que a média de preço de todos os produtos cadastrados.
-- Ordene pelo preço, do maior para o menor.
select 
	produto.nome as produto,
	produto.preco as preco,
	categoria.nome as categoria
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria		
where produto.preco > (select avg(preco) from produto)
order by produto.preco desc;

select * from produto
	


-- nome do produto;
-- quantidade em estoque;
-- nome da categoria.
-- Considere somente produtos com estoque maior que 15 unidades.
-- Ordene pela quantidade em estoque, do maior para o menor.
select
	produto.nome as produto,
	produto.estoque as estoque,
	categoria.nome as categoria
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
where 
	produto.estoque > 15
order by
	produto.estoque desc;


-- nome da cidade;
-- quantidade de clientes que moram nela.
-- Inclua também cidades que ainda não possuem nenhum cliente.
-- Ordene pela quantidade de clientes, da maior para a menor.
select
	cidade.nome as cidade,
	count(cliente.idcliente)
from
	cidade
left outer join
	endereco on cidade.idcidade = endereco.idcidade
left outer join
	cliente on endereco.idendereco = cliente.idendereco
group by
	cidade.nome
order by
	count(cliente.idcliente) desc;

select * from cliente

-- nome do produto;
-- preço.
-- Considere somente os produtos cujo preço seja maior que o preço do produto mais barato de todos os produtos cadastrados.
-- Ordene pelo preço, do maior para o menor.
select
	produto.nome as produto,
	produto.preco as preco
from
	produto
where 
	preco > (select min(preco) from produto)
order by
	produto.preco desc;


-- nome do produto;
-- preço;
-- nome da categoria.
-- Considere somente os produtos cujo preço seja maior que o preço médio dos produtos da sua própria categoria.
-- Ordene pelo nome da categoria e, dentro de cada categoria, pelo preço do maior para o menor.
select
	produto.nome as produto,
	produto.preco as preco,
	categoria.nome as categoria
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
where produto.preco > (select avg(produto.preco) from produto group by idcategoria)
order by categoria.nome, produto.idcategoria, produto.preco desc; 



-- nome do produto
-- estoque
-- categoria
-- Mostre somente produtos com estoque maior que 15.
-- Ordene pelo estoque do maior para o menor.
select
	produto.nome as produto,
	produto.estoque as estoque,
	categoria.nome as categoria
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
where
	produto.estoque > 15
order by
	produto.estoque desc;


-- nome do cliente
-- quantidade de pedidos
-- Mostre somente clientes que fizeram pelo menos 1 pedido.
-- Ordene pela quantidade de pedidos, do maior para o menor.
select
	cliente.nome as cliente,
	count(idpedido) as pedidos
from
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
group by
	cliente.nome
having 
	count(idpedido) > 0
order by
	count(idpedido) desc;


-- nome do produto
-- preço
-- Mostre todos os produtos cujo preço seja maior que o preço do produto mais barato da loja.
-- Ordene pelo preço do maior para o menor.
select 
	produto.nome as produto,
	produto.preco as preco
from
	produto
where
	produto.preco > (select min(produto.preco) from produto)
order by
	produto.preco desc;


-- idpedido
-- data_pedido
-- valor_total
-- nome do cliente
-- Mostre somente os pedidos cujo valor_total seja maior que a média do valor de todos os pedidos.
-- Ordene pelo valor_total do maior para o menor.
select
	pedido.idpedido as idpedido,
	pedido.data_pedido as data_do_pedido,
	pedido.valor_total as valor_total,
	cliente.nome as cliente
from 
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
where
	pedido.valor_total > (select avg(pedido.valor_total) from pedido)	
order by
	pedido.valor_total desc;




-- nome da categoria
-- quantidade de produtos
-- preço médio dos produtos
-- Mostre somente as categorias que possuem mais de 1 produto.
-- Ordene pela quantidade de produtos, do maior para o menor.
select 
	categoria.nome as categoria,
	count(produto.idcategoria) as quantidade_produtos,
	avg(produto.preco) as media_preco
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
group by 
	categoria.nome
having
	count(produto.idcategoria) > 1
order by
	count(produto.idcategoria) desc;





-- nome do cliente
-- cidade
-- estado
-- Mostre somente os clientes que moram em Sumé.
-- Ordene pelo nome do cliente em ordem alfabética.
select
	cliente.nome as cliente,
	cidade.nome as cidade,
	estado.nome as estado
from
	cliente
left outer join
	endereco on cliente.idendereco = endereco.idendereco
left outer join
	cidade on endereco.idcidade = cidade.idcidade
left outer join
	estado on cidade.idestado = estado.idestado
where 
	cidade.nome = 'Sumé'
order by 
	cliente.nome asc;



-- nome do produto
-- preço
-- categoria
-- Mostre somente os produtos cujo preço seja maior que o preço médio de todos os produtos da loja.
-- Ordene pelo preço do maior para o menor.
select
	produto.nome as produto,
	produto.preco as preco,
	categoria.nome as categoria
from 
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
where
	produto.preco > (select avg(produto.preco) from produto)
order by
	produto.preco desc;



-- idpedido
-- nome do cliente
-- valor_total
-- Mostre somente os pedidos cujo valor_total seja igual ao maior valor de pedido registrado na loja.
-- Ordene pelo idpedido em ordem crescente.
select
	pedido.idpedido as idpedido,
	cliente.nome as cliente,
	pedido.valor_total as total
from
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
where
	pedido.valor_total = (select max(valor_total) from pedido)
order by
	pedido.idpedido asc;


-- nome da categoria
-- quantidade de produtos
-- total de itens em estoque
-- Mostre somente as categorias cujo total de itens em estoque seja maior que 30.
-- Ordene pelo total de estoque, do maior para o menor.
select
	categoria.nome as categoria,
	count(produto.idproduto) as quantidade_categoria,
	sum(produto.estoque) as total_estoque
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
having
	(select sum(produto.estoque) from produto group by idproduto) > 30
group by
	categoria.nome
order by
	sum(produto.estoque) desc;
	
select * from produto


-- nome do cliente
-- quantidade de pedidos
-- valor total dos pedidos
-- Inclua todos os clientes, inclusive aqueles que não possuem pedidos.
-- Para clientes sem pedidos, a quantidade deve aparecer como 0 e o valor total como 0.
-- Ordene pelo valor total dos pedidos, do maior para o menor.
select
	cliente.nome as cliente,
	count(pedido.idpedido),	
	sum(pedido.valor_total) as valor
from
	cliente
left outer join
	pedido on cliente.idcliente = pedido.idcliente
group by 
	cliente.nome
order by
	sum(pedido.valor_total) desc;



-- nome do produto
-- preço
-- categoria
-- Mostre somente os produtos cujo preço seja menor que a média de todos os produtos da loja.
-- Ordene pelo preço do menor para o maior.	
select
	produto.nome as produto,
	produto.preco as preco,
	categoria.nome as categoria
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
where 
	produto.preco < (select avg(produto.preco) from produto)
order by
	produto.preco asc;



-- nome do cliente
-- quantidade de pedidos
-- Mostre somente os clientes que possuem mais pedidos do que a média de pedidos por cliente.
-- Considere também os clientes que não possuem pedidos ao calcular essa média.
-- Ordene pela quantidade de pedidos, do maior para o menor.
select
	cliente.nome as cliente,
	count(pedido.idpedido) as quantidade_por_cliente
from
	cliente
left outer join
	pedido on cliente.idcliente = pedido.idcliente	
group by 
	cliente.nome
having
	count(pedido.idpedido) > (select avg(pedido.idpedido) from pedido)
order by
	count(pedido.idpedido) desc;




-- nome da categoria
-- quantidade de produtos
-- total de itens em estoque
-- Mostre somente as categorias cujo total de itens em estoque seja maior que 30.
-- Ordene pelo total de estoque, do maior para o menor.
select
	categoria.nome as categoria,
	count(produto.idproduto) as quantidade_categoria,
	sum(produto.estoque) as total_estoque
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
group by
	categoria.nome	
having
	sum(produto.estoque) > 30
order by
	sum(produto.estoque) desc;
	

-- Liste o nome dos clientes que nunca fizeram nenhum pedido.
-- Ordene pelo nome em ordem alfabética.
select
	cliente.nome as cliente
from
	cliente
left outer join
	cliente on pedido.idcliente = cliente.idcliente
group by
	cliente.nome	
having
	(select count(pedido.idpedido)) = 0
order by
	cliente.nome asc;

-- Essa segunda não tem como saber se deu certo por que todos os clientes cadastrados fizeram pedidos

-- nome do produto
-- preço
-- categoria
-- Mostre somente os produtos cujo preço seja maior que a média de preços de todos os produtos da loja.
-- Ordene pelo preço do maior para o menor.
select
	produto.nome as produto,
	produto.preco as preco,
	categoria.nome as categoria
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
where 
	produto.preco > (select avg(produto.preco) from produto)
order by
	produto.preco desc;


-- nome do cliente
-- idpedido
-- valor_total
-- Mostre os pedidos cujo valor_total seja maior que a média dos pedidos daquele próprio cliente.
-- Por exemplo, se um cliente possui pedidos de R$ 500, R$ 800 e R$ 1.000, a média dele é R$ 766,67; portanto, somente os pedidos de R$ 800 e R$ 1.000 devem aparecer.
-- Ordene pelo nome do cliente e, dentro de cada cliente, pelo valor_total do maior para o menor.
select 
	cliente.nome as cliente,
	pedido.idpedido as idpedido,
	pedido.valor_total as valor_total
from
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
having
	pedido.valor_total > (select avg(pedido.valor_total) from pedido group by idcliente)
order by
	cliente.nome asc, pedido.valor_total desc;


-- SUBCONSULTAS CORRELACIONADAS


-- Mostre o nome, o preço e a categoria dos produtos cujo preço seja maior que a média dos produtos da própria categoria.

select
	prd.nome as produto,
	prd.preco as preco,
	categoria.nome as categoria
from 
	produto prd
left outer join
	categoria on prd.idcategoria = categoria.idcategoria
where
	prd.preco > (select avg(prd2.preco) from produto prd2 where prd2.idcategoria = prd.idcategoria);
	



-- Mostre o nome, preço e categoria dos produtos cujo preço seja menor que a média dos produtos da própria categoria.

select 
	prd.nome as produto,
	prd.preco as preco,
	categoria.nome as categoria
from
	produto prd
left outer join
	categoria on prd.idcategoria = categoria.idcategoria
where
	prd.preco < (select avg(prd2.preco) from produto prd2 where prd2.idcategoria = prd.idcategoria)




-- Mostre o nome do cliente, o id do pedido 
-- e o valor total do pedido apenas para os pedidos cujo valor seja maior que a média dos pedidos daquele próprio cliente.
-- Ordene pelo nome do cliente e, dentro de cada cliente, pelo valor do pedido em ordem decrescente.
select 
	cliente.nome as cliente,
	pdd.idpedido as idpedido,
	pdd.valor_total as valor_total
from
	pedido pdd
left outer join
	cliente on pdd.idcliente = cliente.idcliente
where 
	pdd.valor_total > (select avg(pdd2.valor_total) from pedido pdd2 where pdd2.idcliente = pdd.idcliente)
order by
	cliente.nome, valor_total desc;



-- Mostre o nome, preço e categoria dos produtos 
-- cujo preço seja maior que a média dos produtos da própria categoria, mas somente para categorias cuja média de preço seja maior que R$ 500,00.
select
	prd.nome as produto,
	prd.preco as preco,
	categoria.nome as categoria
from
	produto prd
left outer join
	categoria on prd.idcategoria = categoria.idcategoria
where 
	prd.preco > (select avg(prd2.preco) from produto prd2 where prd2.idcategoria = prd.idcategoria)
and
	(select avg(prd3.preco) from produto prd3 where prd3.idcategoria = prd.idcategoria) > 500
order by
	prd.preco desc;
	
--
-- Mostre o nome da categoria, a quantidade de produtos e o maior preço de cada categoria.
-- Considere apenas categorias que tenham pelo menos 2 produtos.
-- Ordene pelo maior preço, do maior para o menor.
select 
	categoria.nome as categoria,
	count(produto.idproduto) as quant_produtos,
	max(produto.preco) as maior_valor
from 
	produto 
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
group by 
	categoria.nome
having 
	count(idproduto) >= 2
order by
	max(produto.preco) desc;

	
	
-- Mostre o nome, o preço e a categoria dos produtos cujo preço seja maior que a média geral de todos os produtos.
-- Ordene pelo preço do maior para o menor.
select 
	produto.nome as produto,
	produto.preco as preco,
	categoria.nome as categoria
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
where
	produto.preco > (select avg(produto.preco) from produto)
order by
	produto.preco desc;


-- Mostre o nome do cliente, o id do pedido e o valor total dos pedidos cujo valor seja maior que a média dos pedidos daquele próprio cliente.
-- Ordene pelo nome do cliente em ordem alfabética e, dentro de cada cliente, pelo valor do pedido em ordem decrescente.
select
	cliente.nome as cliente,
	pdd.idpedido as idpedido,
	pdd.valor_total as valor_total
from
	pedido pdd
left outer join
	cliente on pdd.idcliente = cliente.idcliente
where
	pdd.valor_total > (select avg(pdd2.valor_total) from pedido pdd2 where pdd2.idcliente = pdd.idcliente)
order by
	cliente.nome asc, pdd.valor_total desc;


-- Mostre o nome do produto, o preço e a categoria dos produtos cujo preço seja menor que o maior preço de todos os produtos da loja.
-- Ordene pelo preço em ordem crescente.
-- Aqui temos novamente um único valor de referência para toda a loja.
select
	produto.nome as produto,
	produto.preco as preco,
	categoria.nome as categoria
from 
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
where 
	produto.preco < (select max(produto.preco) from produto)
order by
	produto.preco asc;
-- 

-- Mostre o nome da categoria, a quantidade de produtos e o total de unidades em estoque de cada categoria.
-- Considere apenas as categorias que tenham mais de 30 unidades em estoque.
-- Ordene pelo total de estoque, do maior para o menor.
select
	categoria.nome as categoria,
	count(produto.idproduto) as produtos,
	sum(produto.estoque) as estoque
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
group by
	categoria.nome
having
	sum(produto.estoque) > 30
order by
	sum(produto.estoque) desc;



-- Mostre o nome do produto, o preço e a categoria dos produtos que tenham preço menor que a média geral dos produtos.
-- Ordene pelo preço do menor para o maior.
select
	produto.nome as produto,
	produto.preco as preco,
	categoria.nome as categoria
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
where
	produto.preco < (select avg(produto.preco) from produto)
order by
	produto.preco asc;


-- Mostre o nome do cliente, o id do pedido e o valor total dos pedidos que tenham valor menor que a média dos pedidos daquele próprio cliente.
-- Ordene pelo nome do cliente em ordem alfabética e pelo valor do pedido do maior para o menor.
select
	cliente.nome as cliente,
	pdd.idpedido as idpedido,
	pdd.valor_total as valor_total
from
	pedido pdd
left outer join
	cliente on pdd.idcliente = cliente.idcliente
where
	pdd.valor_total < (select avg(pdd2.valor_total) from pedido pdd2 where pdd2.idcliente = pdd.idcliente)
order by
	cliente.nome asc, pdd.valor_total desc;


-- Mostre o nome do produto, o preço e a categoria dos produtos que tenham preço maior que o menor preço encontrado na categoria “Processadores”.
-- Ordene pelo preço do maior para o menor.
select
	produto.nome as produto,
	produto.preco as preco,
	categoria.nome as categoria
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
where
	produto.preco > (select min(produto.preco) from produto where idcategoria = 1)
order by
	produto.preco desc;

-- 

-- Mostre o nome do cliente, o nome da cidade e a sigla do estado onde ele mora.
-- Considere apenas os clientes que moram na Paraíba.
-- Ordene pelo nome do cliente em ordem alfabética.
select
	cliente.nome as cliente,
	cidade.nome as cidade,
	estado.sigla as uf
from
	cliente
left outer join
	endereco on cliente.idendereco = endereco.idendereco
left outer join
	cidade on endereco.idcidade = cidade.idcidade
left outer join	
	estado on cidade.idestado = estado.idestado
where
	estado.idestado = 1
order by
	cliente.nome asc;

	
-- Mostre o nome da categoria, a quantidade de produtos e o preço médio dos produtos de cada categoria.
-- Considere apenas as categorias cujo preço médio seja maior que R$ 500,00.
-- Ordene pelo preço médio do maior para o menor.
select
	categoria.nome as categoria,
	count(idproduto) as quant_produtos,
	avg(produto.preco) as preco
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
group by
	categoria.nome
having
	avg(produto.preco) > 500
order by
	avg(produto.preco) desc;


-- Mostre o nome do produto, o preço e o estoque dos produtos cujo estoque seja maior que a média de estoque de todos os produtos.
-- Ordene pelo estoque do maior para o menor.
select 
	produto.nome as produto,
	produto.preco as preco,
	produto.estoque as estoque
from 
	produto
where
	produto.estoque > (select avg(produto.estoque) from produto)
order by
	produto.estoque desc;


-- Mostre o nome do produto, o preço e a categoria dos produtos cujo preço seja maior que o menor preço encontrado dentro da própria categoria.
-- Ordene pelo preço do maior para o menor.
select
	prd.nome as produto,
	prd.preco as preco,
	categoria.nome as categoria
from
	produto prd
left outer join
	categoria on prd.idcategoria = categoria.idcategoria
where
	prd.preco > (select min(prd2.preco) from produto prd2 where prd2.idcategoria = prd.idcategoria)
order by
	prd.preco desc;


--
-- Mostre o nome do produto, o preço e o nome da categoria dos produtos que custam mais de R$ 500,00.
-- Ordene pelo preço do maior para o menor.
select 
	produto.nome as produto,
	produto.preco as preco,
	categoria.nome as categoria
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
where
	produto.preco > 500
order by
	produto.preco desc;


-- Mostre o nome da categoria, a quantidade de produtos e o maior preço de cada categoria.
-- Considere apenas as categorias cujo maior preço seja superior a R$ 1.000,00.
-- Ordene pelo maior preço em ordem decrescente.
select
	categoria.nome as categoria,
	count(produto.idproduto) as quant_produtos,
	max(produto.preco) as preco_maior
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
group by
	categoria.nome
having
	max(produto.preco) > 1000
order by
	max(produto.preco) desc;	


-- Mostre o nome do produto, o preço e o estoque dos produtos cujo preço seja menor que o maior preço de toda a loja.
-- Ordene pelo preço em ordem crescente.
select
	produto.nome as produto,
	produto.preco as preco,
	produto.estoque as estoque
from
	produto
where 
	produto.preco < (select max(produto.preco) from produto)
order by
	produto.preco asc;


-- Mostre o nome do produto, o preço, o estoque e a categoria dos produtos 
-- cujo estoque seja menor que a média de estoque dos produtos da própria categoria.
-- Ordene primeiro pelo nome da categoria em ordem alfabética e depois pelo estoque do menor para o maior.
select 
	prd.nome as produto,
	prd.preco as preco,
	prd.estoque as estoque,
	categoria.nome as categoria
from
	produto prd
left outer join
	categoria on prd.idcategoria = categoria.idcategoria
where
	prd.estoque < (select avg(prd2.estoque) from produto prd2 where prd2.idcategoria = prd.idcategoria)
order by
	categoria.nome asc, prd.estoque asc;


--
-- Mostre o nome do produto, o preço e uma nova coluna chamada faixa_preco.
-- Classifique os produtos assim:
-- abaixo de R$ 300 → Barato
-- de R$ 300 até R$ 1.000 → Medio
-- acima de R$ 1.000 → Caro
-- Ordene pelo preço do menor para o maior.
select
	produto.nome as produto,
	produto.preco as preco,
	case
		when produto.preco < 300 then 'Barato'
		when produto.preco between 300 and 1000 then 'Medio'
		else 'Caro'
	end as faixa_preco	
from
	produto
order by
	produto.preco asc;


-- Mostre o nome do produto, o estoque e uma coluna situacao_estoque.
-- Classifique:
-- estoque menor que 10 → Critico
-- de 10 até 20 → Normal
-- maior que 20 → Alto
-- Ordene pelo estoque do menor para o maior.
select 
	produto.nome as produto,
	produto.estoque as estoque,
	case
		when produto.estoque < 10 then 'Critico'
		when produto.estoque between 10 and 20 then 'Normal'
		else 'Alto'
	end as situacao_estoque
from
	produto
order by
	produto.estoque asc;



-- Agora quero uma pequena mistura com o que você já sabe:
-- Mostre o nome da categoria, a quantidade de produtos e uma coluna chamada classificacao.
-- Classifique a categoria conforme a quantidade de produtos:
-- 1 produto → Poucos
-- 2 produtos → Normal
-- 3 ou mais → Muitos
-- Ordene pela quantidade de produtos do maior para o menor.
-- Aqui já quero ver se você consegue juntar o conhecimento novo com GROUP BY e agregação.
select
	categoria.nome as categoria,
	count(produto.idproduto) as quant_produtos,
	case
		when count(produto.idproduto) = 1 then 'Poucos'
		when count(produto.idproduto) = 2 then 'Normal'
		else 'Muitos'
	end as classificacao	
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
group by
	categoria.nome
order by
	count(produto.idproduto) desc;


-- Mostre o nome do produto, o preço e uma coluna categoria_preco.
-- Classifique:
-- preço abaixo da média geral dos produtos → Abaixo da media
-- preço igual ou maior que a média geral → Acima da media
-- Ordene pelo preço do menor para o maior.
select
	produto.nome as produto,
	produto.preco as preco,
	case
		when produto.preco < (select avg(produto.preco) from produto) then 'Abaixo da media'
		else 'Acima da media'
	end as categoria_preco
from
	produto
order by
	produto.preco asc


-- Mostre o nome da categoria, a quantidade de produtos e uma coluna situacao.
-- Classifique:
-- total de estoque da categoria menor que 30 → Estoque baixo
-- entre 30 e 50 → Estoque normal
-- acima de 50 → Estoque alto
-- Ordene pelo total de estoque do maior para o menor.
select
	categoria.nome as categoria,
	sum(produto.estoque) as total_estoque,
	case
		when sum(produto.estoque) < 30 then 'Estoque baixo'
		when sum(produto.estoque) between 30 and 50 then 'Estoque normal'
		else 'Estoque alto'
	end as situacao	
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
group by
	categoria.nome
order by
	sum(produto.estoque) desc;


--
-- Mostre o nome do produto, o preço, o estoque e uma coluna chamada situacao.
-- Classifique:
-- estoque abaixo de 10 → Critico
-- estoque de 10 até 20 → Normal
-- estoque acima de 20 → Alto
-- Ordene pelo nome do produto.
select
	produto.nome as produto,
	produto.preco as preco,
	produto.estoque as estoque,
	case
		when produto.estoque < 10 then 'Critico'
		when produto.estoque between 10 and 20 then 'Normal'
		else 'Alto'
	end as situacao
from
	produto
order by
	produto.nome asc;


-- Mostre o nome da categoria, a quantidade de produtos, o preço médio e uma coluna chamada faixa_preco.
-- Classifique:
-- preço médio abaixo de R$ 300 → Baixa
-- de R$ 300 até R$ 1.000 → Media
-- acima de R$ 1.000 → Alta
-- Ordene pelo preço médio do maior para o menor.
select
	categoria.nome as categoria,
	count(produto.idproduto) as produto_categoria,
	avg(produto.preco) as media_preco,
	case
		when avg(produto.preco) < 300 then 'Baixa'
		when avg(produto.preco) between 300 and 1000 then 'Media'
		else 'Alta'
	end as faixa_preco	
from 
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
group by
	categoria.idcategoria
order by
	avg(produto.preco) desc;


-- Mostre o nome do cliente, a quantidade de pedidos e uma coluna chamada frequencia.
-- Classifique:
-- 1 pedido → Baixa
-- 2 pedidos → Media
-- 3 ou mais → Alta
-- Considere somente clientes que tenham pelo menos 1 pedido.
-- Ordene pela quantidade de pedidos do maior para o menor.
select
	cliente.nome as cliente,
	count(pedido.idpedido) as quantidade_pedido,
	case
		when count(pedido.idpedido) = 1 then 'Baixa'
		when count(pedido.idpedido) = 2 then 'Media'
		when count(pedido.idpedido) >= 3 then 'Alta'
	end as frequencia	
from
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
group by
	cliente.nome
order by
	count(pedido.idpedido) desc;




-- Mostre o nome do produto, o preço, a categoria e uma coluna chamada comparacao_categoria.
-- Classifique:
-- preço abaixo da média da própria categoria → Abaixo da media
-- preço igual à média da própria categoria → Na media
-- preço acima da média da própria categoria → Acima da media
-- Ordene pelo preço do maior para o menor.
-- Esse último é de propósito o mais interessante: quero ver você juntando subconsulta correlacionada + CASE sem eu indicar nada.
select
	prd.nome as produto,
	prd.preco as preco,
	categoria.nome as categoria,
	case
		when prd.preco < (select avg(prd2.preco) from produto prd2 where prd2.idcategoria = prd.idcategoria) then 'Abaixo da media'
		when prd.preco = (select avg(prd2.preco) from produto prd2 where prd2.idcategoria = prd.idcategoria) then 'Na media'
		when prd.preco > (select avg(prd2.preco) from produto prd2 where prd2.idcategoria = prd.idcategoria) then 'Acima da media'
	end as comparacao_categoria	
from 
	produto prd
left outer join
	categoria on prd.idcategoria = categoria.idcategoria
order by
	prd.preco desc;


-- 
-- Mostre o nome da categoria, a quantidade de produtos, o total de estoque e uma coluna situacao_estoque.
-- Classifique cada categoria:
-- total de estoque abaixo de 30 → Baixo
-- de 30 até 50 → Normal
-- acima de 50 → Alto
-- Ordene pelo total de estoque do maior para o menor.
select
	categoria.nome as categoria,
	count(produto.idproduto) as produto_categoria,
	sum(produto.estoque) as estoque,
	case
		when sum(produto.estoque) < 30 then 'Baixo'
		when sum(produto.estoque) between 30 and 50 then 'Normal'
		else 'Alto'
	end as situacao_estoque	
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
group by
	categoria.nome
order by
	sum(produto.estoque) desc;


-- Mostre o nome do produto, o preço, a categoria e uma coluna comparacao_media.
-- Classifique os produtos conforme o preço em relação à média geral de todos os produtos:
-- abaixo da média → Abaixo
-- igual à média → Na media
-- acima da média → Acima
-- Ordene pelo preço do maior para o menor.
select
	produto.nome as produto,
	produto.preco as preco,
	categoria.nome as categoria,
	case
		when produto.preco < (select avg(produto.preco) from produto) then 'Abaixo'
		when produto.preco = (select avg(produto.preco) from produto) then 'Na media'
		else 'Acima'
	end as comparacao_media	
from
	produto
left outer join
	categoria on produto.idcategoria = categoria.idcategoria
order by
	produto.preco desc;



-- Mostre o nome do cliente, a quantidade de pedidos e o valor total dos pedidos.
-- Considere somente clientes que tenham pelo menos 1 pedido.
-- Ordene pelo valor total do maior para o menor.
select
	cliente.nome as cliente,
	count(pedido.idpedido) as pedidos,
	sum(pedido.valor_total) as valor_total
from
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
group by
	cliente.nome
order by
	sum(pedido.valor_total) desc;

-- Aqui fiz a mesma coisa da resposta de ontem, 
-- como a questão pede que mostre clientes que tem pelo menos 1 pedido então usei a tabela pedido como base.



-- Mostre o nome do produto, o preço e a categoria dos produtos cujo preço seja maior que o preço médio da própria categoria.
-- Ordene pelo preço do maior para o menor.
select
	prd.nome as produto,
	prd.preco as preco,
	categoria.nome as categoria
from 
	produto prd
left outer join
	categoria on prd.idcategoria = categoria.idcategoria
where
	prd.preco > (select avg(prd2.preco) from produto prd2 where prd2.idcategoria = prd.idcategoria)
order by
	prd.preco desc;



-- Mostre o nome do produto, o preço, o estoque e uma coluna situacao.
-- A classificação deve considerar simultaneamente preço e estoque:
-- preço acima de R$ 1.000 e estoque abaixo de 10 → Atencao
-- preço acima de R$ 1.000 e estoque de 10 ou mais → Caro
-- qualquer outro caso → Normal
-- Ordene pelo preço do maior para o menor.
select 
	produto.nome as produto,
	produto.preco as preco,
	produto.estoque as estoque,
	case
		when produto.preco > 1000 and produto.estoque < 10 then 'Atencao'
		when produto.preco > 1000 and produto.estoque >= 10 then 'Caro'
		else 'Normal'
	end as situacao	
from
	produto
order by
	produto.preco desc;

-- A) Quando você vê no enunciado algo como “da própria categoria”, o que isso faz você pensar?
-- Quando vejo o enunciado com isso, eu tento agrupar ou no caso fazer uma subconsulta correlacionada 
-- onde tento extrair o que a pergunta pede sobre a própria categoria, 
-- digamos, pede para me mostrar só produtos onde o estoque seja maior que a média dos estoques por categoria, daí uso o group by,
-- onde agrupo tudo pela categoria e faço a condição(case) onde produto.estoque seja maior que a média do estoque. e se for sobre preco já uso a subconsulta correlacionada.

-- B) Quando a questão pede para classificar cada registro em categorias como Baixo, Medio, Alto, o que você pensa em usar?
-- quando pede isso já penso que vou usar a condição(case), onde digo: se acontecer isso imprima isso. 

-- C) Explique com suas próprias palavras a diferença entre:

-- “produtos acima da média geral”

-- e

-- “produtos acima da média da própria categoria”.

-- Produtos acima da média geral -> são produtos da tabela que são maiores do que toda a tabela e para me chegar a resposta uso uma subconsulta simples
-- onde faço uma condição onde por exemplo: produto.preco > (select avg(produto.preco) from produto)

-- produto acima da média da própria categoria -> Aqui já sei que vou usar uma subconsulta correlacionada
-- daí vou usar um, aqui bem simplificado, exemplo: produto.preco > (select avg(produto2.preco) from produto produto2 where produto2.idcategoria = produto.idcategoria)
-- e nisso consigo fazer a consulta comparando com a categoria de cada produto. 