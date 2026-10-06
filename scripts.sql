create table cliente (
	idcliente integer not null,
	nome varchar(50) not null,
	cpf char(11),
	rg varchar(15),
	data_nascimento date,
	genero char(1),
	profissao varchar(30),
	nacionadade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	observacoes text,

	-- primary key
	constraint pk_cln_idcliente primary key (idcliente)
)

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (1, 'Manoel', '88828383821', '32323', '2001-01-30', 'M', 'Estudante', 'Brasileira', 'Rua Joaquim Nabuco', '23', 'casa', 'Cidade nova', 'Porto União', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (2, 'Geraldo', '12343299929', '56565', '1987-01-04', 'M', 'Engenheiro', 'Brasileira', 'Rua das Limas', '200', 'Ap', 'Centro', 'Poro União', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (3, 'Carlos', '87732323227', '55463', '1967-10-01', 'M', 'Pedreiro', 'Brasileira', 'Rua das Laranjeiras', '300', 'Apart.', 'Cto.', 'Canoinhas', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (4, 'Adriana', '12321222122', '98777', '1989-09-10', 'F', 'Jornalista', 'Brasileira', 'Rua das Limas', '240', 'Casa', 'São Pedro', 'Porto Vitória', 'PR');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (5, 'Amanda', '99982838828', '28382', '1991-03-04', 'F', 'Jorn.', 'Italiana', 'Av. Central', '100', 'null', 'São Pedro', 'General Carneiro', 'PR');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (6, 'Ângelo', '99982828181', '12323', '2000-01-01', 'M', 'Professor', 'Brasileiro', 'Av. Beira Mar', '300', 'null', 'Ctr.', 'São Paulo', 'SP');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (7, 'Anderson', 'null', 'null', null, 'M', 'Prof.', 'Italiano', 'Av. Brasil', '100', 'Apartamento', 'Santa Rosa', 'Rio de Janeiro', 'SP');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (8, 'Camila', '9998282828', null, '2001-10-10', 'F', 'Professora', 'Norte Americana', 'Rua Central', '4333', null, 'Centro', 'Uberlância', 'MG'); 

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (9, 'Cristiano', null, null, null, 'M', 'Estudante', 'Alemã', 'Rua do Centro', '877', 'casa', 'Centro', 'Porto Alegre', 'RS'); 

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (10, 'Fabrício', '8828282828', '32323', null, 'M', 'Estudante', 'Brasileiro', null, null, null, null, 'PU', 'SC'); 

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (11, 'Fernanda', null, null, null, 'F', null, 'Brasileira', null, null, null, null, 'Porto União', 'SC'); 

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (12, 'Gilmar', '88881818181', '888', '2000-02-10', 'M', 'Estud.', null, 'Rua das Laranjeiras', '200', null, 'C. Nova', 'Canoinhas', 'SC'); 

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (13, 'Diego', '1010191919', '111939', null, 'M', 'Professor', 'Alemão', 'Rua Central', '455', 'casa', 'Cidade N.', 'São Paulo', 'SP'); 

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (14, 'Jeferson', null, null, '1983-07-01', 'M', null, 'Brasileiro', null, null, null, null, 'União da Vitória', 'PR'); 

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (15, 'Jessica', null, null, null, 'F', 'Estudante', null, null, null, null, null, 'União da Vitória', 'PR');


select * from cliente;

select nome, data_nascimento from cliente;

select nome, data_nascimento as "Data de nascimento" from cliente;

select 'CPF: ' || cpf || ' RG: ' || rg as "CPF e RG" from cliente;

select * from cliente limit 3;  

select nome, data_nascimento from cliente where data_nascimento > '2000-01-01';

select nome from cliente where nome like 'C%';

select nome from cliente where nome like '%c%';

select nome, data_nascimento from cliente where data_nascimento between '1990-01-01' and '1998-01-01';

select nome, rg from cliente where rg is null;

select nome from cliente order by nome;

select nome from cliente order by nome desc;

select nome, genero, profissao from cliente order by nome desc; -- resposta 1

select nome from cliente where nome like '%r%'; -- resposta 2

select nome from cliente where nome like 'C%'; -- resposta 3

select nome from cliente where nome like '%a'; -- resposta 4

select nome, bairro from cliente where bairro = 'Centro' or bairro = 'Cto.' or bairro = 'Ctr.'; -- resposta 5

select nome, complemento from cliente where complemento like 'A%'; -- resposta 6

select nome, genero from cliente where genero = 'F'; -- resposta 7

select nome, cpf from cliente where cpf is null; -- resposta 8

select nome, profissao from cliente order by profissao; -- resposta 9

select nome, nacionadade from cliente where nacionadade like 'Brasil%'; -- resposta 10

select nome, numero from cliente where numero is not null; -- resposta 11

select nome, uf from cliente where uf like 'SC'; -- resposta 12

select nome, data_nascimento from cliente where data_nascimento between '2000-01-01' and '2002-01-01'; -- resposta 13

select nome || ' - ' || logradouro || ' - ' || numero || ' - ' || complemento || ' - ' || bairro || ' - ' || municipio || ' - ' || uf from cliente; -- resposta 14

select * from cliente;

update cliente set cpf = null where idcliente = 7;

update cliente set rg = null where idcliente = 7;

update cliente set complemento = null where idcliente = 5;

update cliente set complemento = null where idcliente = 6;

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (16, 'Maicon', '12349596421', '1234', '1965-10-10', 'F', 'Empresário', null, null, null, null, null, 'Florianópolis', 'PR'); -- resposta 1 ex 2

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (17, 'Getúlio', null, '4631', null, 'F', 'Estudante', 'Brasileira', 'Rua Central', '343', 'Apartamento', 'Centro', 'Curitiba', 'SC'); -- resposta 1 ex 2

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (18, 'Sandra', null, null, null, 'M', 'Professor', 'Italiana', null, '12', 'Bloco A', null, null, null); -- resposta 1 ex 02

update cliente set cpf = '45390569432', genero = 'M', nacionadade = 'Brasileira', uf = 'SC' where idcliente = 16; -- resposta 2 ex 02

update cliente set data_nascimento = '1978-04-01', genero = 'M' where idcliente = 17; -- resposta 3 ex 02

update cliente set genero = 'F', profissao = 'Professora', numero = '123' where idcliente = 18; -- resposta 4 ex 02

delete from cliente where idcliente = 17;

delete from cliente where idcliente = 18; -- resposta 6

delete from cliente where idcliente = 16; -- resposta 5



create table profissao (
	idprofissao integer not null,
	nome varchar(30) not null,

	constraint pk_prf_idprofissao primary key (idprofissao),
	constraint un_prf_nome unique (nome)
);

select profissao from cliente

insert into profissao (idprofissao, nome) values (1, 'Estudante');
insert into profissao (idprofissao, nome) values (2, 'Engenheiro');
insert into profissao (idprofissao, nome) values (3, 'Pedreiro');
insert into profissao (idprofissao, nome) values (4, 'Jornalista');
insert into profissao (idprofissao, nome) values (5, 'Professor');

select * from profissao

create table nacionalidade (
	idnacionalidade integer not null,
	nome varchar(30) not null,

	constraint pk_ncn_idnacionalidade primary key (idnacionalidade),
	constraint un_ncn_nome unique (nome)	
);

select nacionadade from cliente

insert into nacionalidade (idnacionalidade, nome) values (1, 'Brasileira');
insert into nacionalidade (idnacionalidade, nome) values (2, 'Italiana');
insert into nacionalidade (idnacionalidade, nome) values (3, 'Norte-americana');
insert into nacionalidade (idnacionalidade, nome) values (4, 'Alemã');

select * from nacionalidade;

create table complemento (
	idcomplemento integer not null,
	nome varchar(30) not null,

	constraint pk_cpl_idcomplemento primary key (idcomplemento),
	constraint un_cpl_nome unique (nome)
);

select complemento from cliente 

insert into complemento (idcomplemento, nome) values (1, 'Casa');
insert into complemento (idcomplemento, nome) values (2, 'Apartamento');

select * from complemento;

create table bairro (
	idbairro integer not null,
	nome varchar(30) not null,

	constraint pk_brr_idbairro primary key (idbairro),
	constraint un_brr_nome unique (nome)
);

insert into bairro (idbairro, nome) values (1, 'Cidade Nova');
insert into bairro (idbairro, nome) values (2, 'Centro');
insert into bairro (idbairro, nome) values (3, 'São Pedro');
insert into bairro (idbairro, nome) values (4, 'Santa Rosa');

select bairro from cliente;

select * from bairro;

select * from cliente;

alter table cliente rename column profissao to idprofissao;

alter table cliente drop idprofissao;

alter table cliente rename column nacionadade to nacionalidade; 

alter table cliente add idprofissao integer;

alter table cliente add constraint fk_cln_idprofissao foreign key (idprofissao) references profissao (idprofissao);

update cliente set idprofissao = 1 where idcliente in (1, 9, 10, 12, 15, 17);
update cliente set idprofissao = 2 where idcliente = 2;
update cliente set idprofissao = 3 where idcliente = 3;
update cliente set idprofissao = 4 where idcliente in (4, 5);
update cliente set idprofissao = 5 where idcliente in (6, 7, 8, 13);

select nome, idnacionalidade from cliente;

alter table cliente drop nacionalidade;

alter table cliente add idnacionalidade integer;

alter table cliente add constraint fk_cln_idnacionalidade foreign key (idnacionalidade) references nacionalidade (idnacionalidade);
select * from nacionalidade;
update cliente set idnacionalidade = 1 where idcliente in (1, 2, 3, 4, 6, 10, 11, 14);
update cliente set idnacionalidade = 2 where idcliente in (5, 7);
update cliente set idnacionalidade = 3 where idcliente = 8;
update cliente set idnacionalidade = 4 where idcliente in (9, 13); 

alter table cliente drop complemento;

alter table cliente add idcomplemento integer;

alter table cliente add constraint fk_cln_idcomplemento foreign key (idcomplemento) references complemento (idcomplemento);
update cliente set idcomplemento = 1 where idcliente in (1, 4, 9 ,13);
update cliente set idcomplemento = 2 where idcliente in (2, 3, 7);


alter table cliente drop bairro;

alter table cliente add idbairro integer;
alter table cliente add constraint fk_cln_idbairro foreign key (idbairro) references bairro (idbairro);
update cliente set idbairro = 1 where idcliente in (1, 12, 13);
update cliente set idbairro = 2 where idcliente in (2, 3, 6, 8, 9);
update cliente set idbairro = 3 where idcliente in (4, 5);
update cliente set idbairro = 4 where idcliente = 7;

create table uf (
	iduf integer not null,
	nome varchar(30) not null,
	sigla char(2) not null,

	constraint pk_ufd_iduf primary key (iduf),
	constraint un_ufd_nome unique (nome),
	constraint un_ufd_sigla unique (sigla)
);

insert into uf (iduf, nome, sigla) values (1,'Santa Catarina', 'SC'); 
insert into uf (iduf, nome, sigla) values (2, 'Paraná', 'PR'); 
insert into uf (iduf, nome, sigla) values (3, 'São Paulo', 'SP');
insert into uf (iduf, nome, sigla) values (4, 'Minas Gerais', 'MG');
insert into uf (iduf, nome, sigla) values (5, 'Rio Grande do Sul', 'RS');
insert into uf (iduf, nome, sigla) values (6, 'Rio de Janeiro', 'RJ');
select * from uf;

create table municipio (
	idmunicipio integer not null,
	nome varchar(30) not null,
	iduf integer not null,

	constraint pk_mnc_idmunicipio primary key (idmunicipio),
	constraint un_mnc_nome unique (nome),
	constraint fk_mnc_iduf foreign key (iduf) references uf (iduf)
);

insert into municipio (idmunicipio, nome, iduf) values (1, 'Porto União', 1);
insert into municipio (idmunicipio, nome, iduf) values (2, 'Canoinhas', 1);
insert into municipio (idmunicipio, nome, iduf) values (3, 'Porto Vitória', 2);
insert into municipio (idmunicipio, nome, iduf) values (4, 'General Carneiro', 2);
insert into municipio (idmunicipio, nome, iduf) values (5, 'São Paulo', 3);
insert into municipio (idmunicipio, nome, iduf) values (6, 'Rio de Janeiro', 6);
insert into municipio (idmunicipio, nome, iduf) values (7, 'Uberlândia', 4);
insert into municipio (idmunicipio, nome, iduf) values (8, 'Porto Alegre', 5);
insert into municipio (idmunicipio, nome, iduf) values (9, 'União da Vitória', 2);

select * from municipio;

select * from cliente
alter table cliente drop municipio; 
alter table cliente drop uf;
alter table cliente add idmunicipio integer;
alter table cliente add iduf integer;
alter table cliente add constraint fk_cliente_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio);

update cliente set idmunicipio = 1 where idcliente in (1, 2, 10, 11); 
update cliente set idmunicipio = 2 where idcliente in (3, 12); 
update cliente set idmunicipio = 3 where idcliente = 4; 
update cliente set idmunicipio = 4 where idcliente = 5;
update cliente set idmunicipio = 5 where idcliente in (6, 13);
update cliente set idmunicipio = 6 where idcliente = 7;
update cliente set idmunicipio = 7 where idcliente in (8);
update cliente set idmunicipio = 8 where idcliente in (9);
update cliente set idmunicipio = 9 where idcliente in (14, 15); 

select * from cliente


-- criação da tabela fornecedor e adicionando itens.
create table fornecedor (
	idfornecedor integer not null,
	nome varchar(50) not null,

	constraint pk_frn_idfornecedor primary key (idfornecedor),
	constraint un_frn_nome unique (nome)
);
select * from fornecedor

insert into fornecedor (idfornecedor, nome) values (1, 'Cap. Computadores');
insert into fornecedor (idfornecedor, nome) values (2, 'AA. Computadores');
insert into fornecedor (idfornecedor, nome) values (3, 'BB. Máquinas');
-- Aqui termina tudo da tabela fornecedor.

-- criação da tabela vendedor e adicionando itens.
create table vendedor (
	idvendedor integer not null,
	nome varchar(50) not null,

	constraint pk_vnd_idvendedor primary key (idvendedor),
	constraint un_vnd_nome unique (nome)
);

insert into vendedor (idvendedor, nome) values (1, 'André');
insert into vendedor (idvendedor, nome) values (2, 'Alisson');
insert into vendedor (idvendedor, nome) values (3, 'José');
insert into vendedor (idvendedor, nome) values (4, 'Ailton');
insert into vendedor (idvendedor, nome) values (5, 'Maria');
insert into vendedor (idvendedor, nome) values (6, 'Suelem');
insert into vendedor (idvendedor, nome) values (7, 'Aline');
insert into vendedor (idvendedor, nome) values (8, 'Silvana');
select * from vendedor
-- Aqui termina tudo da tabela vendedor.

-- criação da tabela transportadora e adicionando itens.
create table transportadora (
	idtransportadora integer not null,
	idmunicipio integer,
	nome varchar(50) not null,
	logradouro varchar(50),
	mumero varchar(10),

	constraint pk_trn_idtransportadora primary key (idtransportadora),
	constraint fk_trn_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio),
	constraint un_trn_nome unique (nome)
);

insert into transportadora (idtransportadora, idmunicipio, nome, logradouro, mumero) values (1, 9, 'BS. Transportes', 'Ruas das Limas', '01');
insert into transportadora (idtransportadora, idmunicipio, nome, logradouro, mumero) values (2, 5, 'União Transportes', null, null);
select * from transportadora
-- Aqui termina tudo da tabela transportador.

-- criação da tabela produto e adicionando itens.
create table produto (
	idproduto integer not null,
	idfornecedor integer not null,
	nome varchar(50) not null,
	valor float not null,

	constraint pk_prd_idproduto primary key (idproduto),
	constraint fk_prd_idfornecedor foreign key (idfornecedor) references fornecedor (idfornecedor)
);

insert into produto (idproduto, idfornecedor, nome, valor) values (1, 1, 'Microcomputador', 800);
insert into produto (idproduto, idfornecedor, nome, valor) values (2, 1, 'Monitor', 500);
insert into produto (idproduto, idfornecedor, nome, valor) values (3, 2, 'Placa mãe', 200);
insert into produto (idproduto, idfornecedor, nome, valor) values (4, 2, 'HD', 150);
insert into produto (idproduto, idfornecedor, nome, valor) values (5, 2, 'Placa de vídeo', 200);
insert into produto (idproduto, idfornecedor, nome, valor) values (6, 3, 'Memória RAM', 100);
insert into produto (idproduto, idfornecedor, nome, valor) values (7, 1, 'Gabinete', 35);
select * from produto
-- Aqui termina tudo da tabela produto.

-- Criação da tabela pedido e adicionando itens.
create table pedido (
	idpedido integer not null,
	idcliente integer not null,
	idtransportadora integer,
	idvendedor integer not null,
	data_pedido date not null,
	valor float not null,

	constraint pk_pdd_idpedido primary key (idpedido),
	constraint fk_pdd_idcliente foreign key (idcliente) references cliente (idcliente),
	constraint fk_pdd_idtransportadora foreign key (idtransportadora) references transportadora (idtransportadora),
	constraint fk_pdd_idvendedor foreign key (idvendedor) references vendedor (idvendedor)
);
select idcliente, nome from cliente;
select idtransportadora, nome from transportadora
select idvendedor, nome from vendedor;
insert into pedido (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (1, 1, 1, 1, '2008-04-01', 1300);
insert into pedido (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (2, 1, 1, 1, '2008-04-01', 500);
insert into pedido (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (3, 11, 2, 5, '2008-04-02', 300);
insert into pedido (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (4, 8, 1, 7, '2008-04-05', 1000);
insert into pedido (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (5, 9, 2, 6, '2008-04-06', 200);
insert into pedido (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (6, 10, 1, 6, '2008-04-06', 1985);
insert into pedido (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (7, 3, 1, 7, '2008-04-06', 800);
insert into pedido (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (8, 3, null, 7, '2008-04-07', 174);
insert into pedido (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (9, 12, null, 8, '2008-04-07', 1300);
insert into pedido (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (10, 6, 1, 8, '2008-04-10', 200);
insert into pedido (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (11, 15, 2, 1, '2008-04-15', 300);
insert into pedido (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (12, 15, 2, 5, '2008-04-20', 500);
insert into pedido (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (13, 9, 1, 7, '2008-04-20', 350);
insert into pedido (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (14, 2, 1, 5, '2008-04-23', 300);
insert into pedido (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor) values (15, 11, null, 5, '2008-04-25', 200);
-- Aqui termina tudo da tabela pedido
select * from pedido;
-- criação da tabela pedido_produto e adicionando itens
create table pedido_produto (
	idpedido integer not null,
	idproduto integer not null,
	quantidade integer not null,
	valor_unitario float not null,

	constraint pk_pdp_idpedidoproduto primary key (idpedido, idproduto),
	constraint fk_pdp_idpedido foreign key (idpedido) references pedido (idpedido),
	constraint fk_pdp_idproduto foreign key (idproduto) references produto (idproduto)
);

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (1, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (1, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (2, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (3, 4, 2, 150);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (4, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (4, 3, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (5, 3, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (6, 1, 2, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (6, 7, 1, 35);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (6, 5, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (6, 4, 1, 150);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (7, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (8, 7, 5, 35);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (9, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (9, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (10, 5, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (11, 5, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (11, 6, 1, 100);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (12, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (13, 3, 1, 200);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (13, 4, 1, 150);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (14, 6, 3, 100);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (15, 3, 1, 200);


select * from pedido_produto;

-- Exercício

-- 1 - Somente o nome de todos os vendedores em ordem alfabética.
select nome from vendedor order by nome;

-- 2 - Os produtos que o preço seja maior que R$200,00 em ordem crescente pelo preço.
select nome, valor from produto where valor > 200 order by valor;

-- 3 - O nome do produto, o preço e o preço reajustado em 10%, ordenado pelo nome do produto.
select nome, valor || ' - ' || valor + (valor * 10/ 100) from produto order by nome;
-- resposta do professor
select nome, valor, valor + (valor * 10) / 100 as Reajuste from produto order by nome;

-- 4 - Os municípios do Rio Grande do sul.
select nome from municipio where iduf = 5;
-- resposta do professor
select * from municipio where iduf = 5;

-- 5 - Os pedidos feitos entre 10/04/2008 e 25/04/2008 ordenado pelo valor.
select data_pedido, valor from pedido where data_pedido between '2008-04-10' and '2008-04-25' order by valor;
-- resposta do professor
select * from pedido where data_pedido between '2008-04-10' and '2008-04-25' order by valor;

-- 6 - Os pedidos que o valor esteja entre R$1.000,00 e R$1.500,00.
select data_pedido, valor from pedido where valor between '1000' and '1500';
-- resposta do professor
select * from pedido where valor between 1000 and 1500;

-- 7 - Os pedidos que o valor não esteja entre R$100,00 e R$500,00.
select valor from pedido where valor not between '100' and '500';
-- resposta do professor
select * from pedido where valor not between 100 and 500;

-- 8 - Os pedidos do vendedor André ordenado pelo valor em ordem decrescente.
select valor from pedido where idvendedor = '1' order by valor desc;
-- resposta do professor
select * from pedido where idvendedor = 1 order by valor desc;

-- 9 - Os pedidos do cliente Manoel ordenado pelo valor em ordem crescente.
select valor from pedido where idcliente = 1 order by valor;
-- resposta do professor
select * from pedido where idcliente = 1 order by valor;

-- 10 - Os pedidos da cliente Jéssica que foram feitos pelo vendedor André.
select valor from pedido where idcliente = 15 and idvendedor = 1;
-- resposta do professor
select * from pedido where idcliente = 15 and idvendedor = 1;

-- 11 - Os pedidos que foram transportados pela transportadora União Transportes.
select valor from pedido where idtransportadora = 2;
-- resposta do professor
select * from pedido where idtransportadora = 2;

-- 12 - Os pedidos feitos pela vendedora Maria ou pela vendedora Aline.
select valor from pedido where idvendedor = 5 or idvendedor = 7;
-- resposta do professor
select * from pedido where idvendedor = 5 or idvendedor = 7;

-- 13 - Os clientes que moram em União da Vitória ou Porto União.
select nome from cliente where idmunicipio = 9 or idmunicipio = 1; 
-- resposta do professor
select * from cliente where idmunicipio = 9 or idmunicipio = 1

-- 14 -	Os clientes que não moram em União da Vitória e nem em Porto União.
select nome from cliente where idmunicipio != 9 and idmunicipio != 1;
-- resposta do professor
select * from cliente where idmunicipio <> 9 and idmunicipio <> 1;

-- 15 -	Os clientes que não informaram o logradouro.
select nome from cliente where logradouro is null;
-- resposta do professor
select * from cliente where logradouro is null;

-- 16 - Os clientes que moram em avenidas.
select nome from cliente where logradouro like 'Av%';
-- resposta do professor
select * from cliente where logradouro like 'Av%';

-- 17 - Os vendedores que o nome começa com a letra S.
select nome from vendedor where nome like 'S%'; 
-- resposta do professor
select * from vendedor where nome like 'S%'; 

-- 18 -	Os vendedores que o nome termina com a letra A.
select nome from vendedor where nome like '%a';
-- resposta do professor
select * from vendedor where nome like '%a';

-- 19 - Os vendedores que o nome não começa com a letra A.
select nome from vendedor where nome  not like  'A%';
-- resposta do professor
select * from vendedor where nome  not like  'A%';

-- 20 - Os municípios que começam com a letra P e são de Santa Catarina.
select nome from municipio where nome like 'P%' and iduf = 1;
-- resposta do professor
select * from municipio where nome like 'P%' and iduf = 1;

-- 21 - As transportadoras que informaram o endereço.
select nome from transportadora where logradouro is not null;
-- resposta do professor
select * from transportadora where logradouro is not null;

-- 22 - Os itens do pedido 01.
-- resposta do professor
select * from pedido_produto where idpedido = 1; 

-- 23 - Os itens do pedido 06 ou do pedido 10.
-- resposta do professor
select * from pedido_produto where idpedido = 6 or idpedido = 10;


-- Funções agregadas

-- média (avg)
select avg(valor) from pedido -- média do valor 

-- contagem de elementos (count)
select count(idmunicipio) from municipio -- contagem do elemento / esses contadores é bom ser usado em elementos not null. a não ser que seja um pedido de busca para esse determinado valor.
select count(*) from municipio -- vai retornar o mesmo valor / tipo: conte quantos logradouros da tabela trasnpostadora. daí só vai retornar o logradouro que não for null. 

-- contando os municipios da tabela municipio que sejam do iduf = 2; 
select count(idmunicipio) from municipio where iduf = 2;


-- valor (max) e (min)
select max(valor) from pedido -- selecionando o maior valor da tabela pedido, o pedido com o valor mais caro!
select min(valor) from pedido -- selecionando o menor valor da tabela pedido, o pedido com o valor mais barato!
select min(valor), max(valor) from pedido -- juntando os dois.

-- somando
select sum(valor) from pedido -- somando os valores de valor.


-- fazendo agrupamento
select idcliente, (sum)valor from pedido group by idcliente -- aqui diz mostre o idcliente e o valor somado pelo idcliente, ou seja, se o cliente tiver feito mais de uma compra vai aparecer um valor total das duas.
select idcliente, (sum)valor from pedido group by idcliente having sum(valor) > 500 -- aqui agora filtrou para mostrar a soma dos pedidos maior que 500.



-- exercício:

-- 1 - A média dos valores de vendas dos vendedores que venderam mais que R$200,00.
select idvendedor, avg(valor) from pedido group by idvendedor having avg(valor) > 200;

-- 2 - Os vendedores que venderam mais que R$ 1500,00.
select idvendedor, sum(valor) from pedido group by idvendedor having sum(valor) > 1500;

-- 3 - O somatório das vendas de cada vendedor.
select idvendedor, sum(valor) from pedido group by idvendedor;

-- 4 - A quantidade de municípios.
select count(idmunicipio) from municipio;

-- 5 - A quantidade de municípios que são do Paraná ou de Santa Catarina.
select count(idmunicipio) from municipio where iduf = 1 or iduf = 2;

-- 6 - A quantidade de municípios por estado.
select iduf, count(idmunicipio) from municipio group by iduf;

-- 7 - A quantidade de clientes que informaram o logradouro.
select count(logradouro) from cliente
-- resposta do professor
select count(idcliente) from cliente where logradouro is not null;

-- 8 - A quantidade de clientes por município.
select idmunicipio, count(idcliente) from cliente group by idmunicipio;

-- 9 - A quantidade de fornecedores.
select count(idfornecedor) from fornecedor;

-- 10 - A quantidade de produtos por fornecedor.
select count(idproduto) from produto group by idfornecedor

-- 11 - A média de preços dos produtos do fornecedor Cap. Computadores.
select avg(valor) from produto where idfornecedor = 1;

-- 12 - O somatório dos preços de todos os produtos.
select sum(valor) from produto;

-- 13 - O nome do produto e o preço somente do produto mais caro.
select nome, max(valor) from produto
-- resposta do professor
select nome, valor from produto order by valor desc limit 1

-- 14 - O nome do produto e o preço somente do produto mais barato.
select min(valor) from produto
-- resposta do professor
select nome, valor from produto order by valor asc limit 1;  

-- 15 - A média de preço de todos os produtos.
select avg(valor) from produto

-- 16 - A quantidade de transportadoras.
select count(idtransportadora) from transportadora

-- 17 - A média do valor de todos os pedidos.
select avg(valor) from pedido

-- 18 - O somatório do valor do pedido agrupado por cliente.
select idcliente, sum(valor) from pedido group by idcliente;

-- 19 - O somatório do valor do pedido agrupado por vendedor.
select idvendedor, sum(valor) from pedido group by idvendedor;

-- 20 - O somatório do valor do pedido agrupado por transportadora.
select idtransportadora, sum(valor) from pedido group by idtransportadora; 

-- 21 - O somatório do valor do pedido agrupado pela data.
select data_pedido, sum(valor)from pedido group by data_pedido;

-- 22 - O somatório do valor do pedido agrupado por cliente, vendedor e transportadora.
select idcliente, idvendedor, idtransportadora, sum(valor) as total from pedido group by idcliente, idvendedor, idtransportadora

-- 23 - O somatório do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que R$ 200,00.
select sum(valor) from pedido where data_pedido between '2008-04-01' and '2009-12-10' having sum(valor) > 200;
-- resposta do professor
select sum(valor) from pedido where data_pedido between '2008-04-01' and '2009-12-10' and valor > 200;

-- 24 - A média do valor do pedido do vendedor André.
select avg(valor) from pedido where idvendedor = 1;

-- 25 - A média do valor do pedido da cliente Jéssica.
select avg(valor) from pedido where idcliente = 15;

-- 26 - A quantidade de pedidos transportados pela transportadora BS. Transportes.
select count(idpedido) from pedido where idtransportadora = 1;

-- 27 - A quantidade de pedidos agrupados por vendedor.
select count(idpedido) from pedido group by idvendedor;
-- resposta do professor
select idvendedor, count(idpedido) from pedido group by idvendedor

-- 28 - A quantidade de pedidos agrupados por cliente.
select idcliente, count(idpedido) from pedido group by idcliente;

-- 29 - A quantidade de pedidos entre 15/04/2008 e 25/04/2008.
select count(idpedido) from pedido where data_pedido between '2008-04-15' and '2008-04-25';

-- 30 - A quantidade de pedidos que o valor seja maior que R$ 1.000,00.
select count(idpedido) from pedido where valor > 1000;

-- 31 - A quantidade de microcomputadores vendida.
select sum(quantidade) from pedido_produto where idproduto = 1;

-- 32 - A quantidade de produtos vendida agrupado por produto.
select idproduto, sum(quantidade) from pedido_produto group by idproduto 

-- 33 - O somatório do valor dos produtos dos pedidos, agrupado por pedido.
select idpedido, sum(valor_unitario) from pedido_produto group by idpedido;

-- 34 - A quantidade de produtos agrupados por pedido.
select count(idpedido) from pedido_produto group by idpedido;
-- resposta do professor
select idpedido, sum(quantidade) from pedido_produto group by idpedido;

-- 35 - O somatório dos valores unitários de todos os produtos.
select sum(valor_unitario) from pedido_produto;

-- 36 - A média dos produtos do pedido 6.
select avg(valor_unitario) from pedido_produto where idpedido = 6;

-- 37 - O valor do maior produto do pedido.
select max(valor_unitario) from pedido_produto group by idpedido; 

-- 38 - O valor do menor produto do pedido.
select min(valor_unitario) from pedido_produto group by idpedido;

-- 39 - O somatório da quantidade de produtos por pedido.
select sum(quantidade) from pedido_produto group by idpedido;
-- resposta do professor
select idpedido, sum(quantidade) from pedido_produto group by idpedido;

-- 40 - O somatório da quantidade de todos os produtos do pedido.
select sum(quantidade) from pedido_produto where idpedido;count(idproduto) from produto group by idfornecedor;
-- resposta do professor
select sum(valor_unitario) from pedido produto;


-- relacionamentos com joins

select
	cln.nome as cliente,
	prf.nome as profissao
from
	cliente as cln
left outer join
	profissao as prf on cln.idprofissao = prf.idprofissao

-- aqui nesse exemplo vai mostrar todos os cliente por nome e as respectivas profissões por nome e não por id

-- nesse exemplo de baixo vai retornar a mesma coisa mas sem os campos null, por que o inner join obriga que exista o relacionamento entre os campos.

select
	cln.nome as cliente, -- cln => apelido da tabela cliente, .nome => nome campo referência a tabela cliente, as cliente. o nome apresentado da coluna vai ser cliente.
	prf.nome as profissao -- mesma coisa de cima. só muda a tabela que aqui é a tabela profissão.
from
	cliente as cln
inner join
	profissao as prf on cln.idprofissao = prf.idprofissao


-- exercício

-- 1 - O nome do cliente, a profissão, a nacionalidade, o logradouro, o número, o complemento, o bairro, o município e a unidade de federação.

-- 2 - O nome do produto, o valor e o nome do fornecedor.
select
	produto.nome as produto,
	produto.valor as valor,
	fornecedor.nome as fornecedor
from
	produto
left outer join
	fornecedor on produto.idfornecedor = fornecedor.idfornecedor
	

-- 3 - O nome da transportadora e o município.
select
	transportadora.nome as transportadora,
	municipio.nome as municipio
from
	transportadora
left outer join
	municipio on transportadora.idmunicipio = municipio.idmunicipio

-- 4 - A data do pedido, o valor, o nome do cliente, o nome da transportadora e o nome do vendedor.

-- 5 - O nome do produto, a quantidade e o valor unitário dos produtos do pedido.
select
	produto.nome as produto,
	pedido_produto.quantidade as quantidade,
	pedido_produto.valor_unitario as valor
from 
	pedido_produto
left outer join
	produto on pedido_produto.idproduto = produto.idproduto 

-- 6 - O nome dos clientes e a data do pedido dos clientes que fizeram algum pedido (ordenado pelo nome do cliente).
select
	cliente.nome as cliente,
	pedido.data_pedido as data_do_pedido
from 
	pedido
inner join
	cliente on pedido.idcliente = cliente.idcliente	
order by cliente.nome	

-- 7 - O nome dos clientes e a data do pedido de todos os clientes, independente se tenham feito pedido (ordenado pelo nome do cliente).
select
	cliente.nome as cliente,
	pedido.data_pedido as data_do_pedido
from 
	cliente
left outer join
	pedido on cliente.idcliente = pedido.idcliente	
order by cliente.nome

-- 8 - O nome da cidade e a quantidade de clientes que moram naquela cidade.
select * from cliente
select
	municipio.nome as municipio,
	count(idcliente) 
from 
	municipio
left outer join
	cliente on municipio.idmunicipio = cliente.idmunicipio 
group by 
	municipio.nome

-- 9 - O nome do fornecedor e a quantidade de produtos de cada fornecedor.
select
	fornecedor.nome as fornecedor,
	count(idproduto) as quantidade
from 
	fornecedor
left outer join
	produto on fornecedor.idfornecedor = produto.idfornecedor
group by 
	fornecedor.idfornecedor

-- 10 - O nome do cliente e o somatório do valor do pedido (agrupado por cliente).
select
	cliente.nome as cliente,
	sum(valor) as  total
from
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
group by
	cliente.idcliente
-- 11 - O nome do vendedor e o somatório do valor do pedido (agrupado por vendedor).
select
	vendedor.nome as vendedor,
	sum(valor) as total
from 
	pedido
left outer join
	vendedor on pedido.idvendedor = vendedor.idvendedor
group by
	vendedor.idvendedor

-- 12 - O nome da transportadora e o somatório do valor do pedido (agrupado por transportadora).
select
	transportadora.nome as transportadora,
	sum(valor)
from 
	pedido
left outer join
	transportadora on pedido.idtransportadora = transportadora.idtransportadora
group by
	transportadora.idtransportadora

-- 13 - O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente).
select
	cliente.nome as cliente,
	count(idpedido) as pedidos
from 
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
group by
	cliente.idcliente

-- 14 - O nome do produto e a quantidade vendida (agrupado por produto).
select
	produto.nome as produto,
	sum(pedido_produto.idproduto) as quantidade_vendida
from 
	pedido_produto
left outer join
	produto on pedido_produto.idproduto = produto.idproduto
group by
	produto.idproduto

-- 15 - A data do pedido e o somatório do valor dos produtos do pedido (agrupado pela data do pedido).
select
	pedido.data_pedido as data_do_pedido,
	sum(pedido.valor) as total
from
	pedido
group by
	pedido.data_pedido

-- 16 -A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido).
select
	pedido.data_pedido as data_do_pedido,
	count(pedido_produto.idproduto) as total
from
	pedido
left outer join
	pedido_produto on pedido.idproduto = pedido_produto.idproduto
group by
	pedido.data_pedido













