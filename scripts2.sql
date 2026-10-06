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
values (1, 'Manoel', '88828383821', '32323', '2001-01-30', 'M', 'Estudante', 'Brasileira', 'Rua Joaquim Nabuco', '23', 'casa', 'Cidade nova', 'Porto UniÃ£o', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (2, 'Geraldo', '12343299929', '56565', '1987-01-04', 'M', 'Engenheiro', 'Brasileira', 'Rua das Limas', '200', 'Ap', 'Centro', 'Poro UniÃ£o', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (3, 'Carlos', '87732323227', '55463', '1967-10-01', 'M', 'Pedreiro', 'Brasileira', 'Rua das Laranjeiras', '300', 'Apart.', 'Cto.', 'Canoinhas', 'SC');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (4, 'Adriana', '12321222122', '98777', '1989-09-10', 'F', 'Jornalista', 'Brasileira', 'Rua das Limas', '240', 'Casa', 'SÃ£o Pedro', 'Porto VitÃ³ria', 'PR');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (5, 'Amanda', '99982838828', '28382', '1991-03-04', 'F', 'Jorn.', 'Italiana', 'Av. Central', '100', 'null', 'SÃ£o Pedro', 'General Carneiro', 'PR');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (6, 'Ã‚ngelo', '99982828181', '12323', '2000-01-01', 'M', 'Professor', 'Brasileiro', 'Av. Beira Mar', '300', 'null', 'Ctr.', 'SÃ£o Paulo', 'SP');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (7, 'Anderson', 'null', 'null', null, 'M', 'Prof.', 'Italiano', 'Av. Brasil', '100', 'Apartamento', 'Santa Rosa', 'Rio de Janeiro', 'SP');

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (8, 'Camila', '9998282828', null, '2001-10-10', 'F', 'Professora', 'Norte Americana', 'Rua Central', '4333', null, 'Centro', 'UberlÃ¢ncia', 'MG'); 

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (9, 'Cristiano', null, null, null, 'M', 'Estudante', 'AlemÃ£', 'Rua do Centro', '877', 'casa', 'Centro', 'Porto Alegre', 'RS'); 

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (10, 'FabrÃ­cio', '8828282828', '32323', null, 'M', 'Estudante', 'Brasileiro', null, null, null, null, 'PU', 'SC'); 

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (11, 'Fernanda', null, null, null, 'F', null, 'Brasileira', null, null, null, null, 'Porto UniÃ£o', 'SC'); 

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (12, 'Gilmar', '88881818181', '888', '2000-02-10', 'M', 'Estud.', null, 'Rua das Laranjeiras', '200', null, 'C. Nova', 'Canoinhas', 'SC'); 

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (13, 'Diego', '1010191919', '111939', null, 'M', 'Professor', 'AlemÃ£o', 'Rua Central', '455', 'casa', 'Cidade N.', 'SÃ£o Paulo', 'SP'); 

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (14, 'Jeferson', null, null, '1983-07-01', 'M', null, 'Brasileiro', null, null, null, null, 'UniÃ£o da VitÃ³ria', 'PR'); 

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (15, 'Jessica', null, null, null, 'F', 'Estudante', null, null, null, null, null, 'UniÃ£o da VitÃ³ria', 'PR');


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
values (16, 'Maicon', '12349596421', '1234', '1965-10-10', 'F', 'EmpresÃ¡rio', null, null, null, null, null, 'FlorianÃ³polis', 'PR'); -- resposta 1 ex 2

insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionadade, logradouro, numero, complemento, bairro, municipio, uf)
values (17, 'GetÃºlio', null, '4631', null, 'F', 'Estudante', 'Brasileira', 'Rua Central', '343', 'Apartamento', 'Centro', 'Curitiba', 'SC'); -- resposta 1 ex 2

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
insert into nacionalidade (idnacionalidade, nome) values (4, 'AlemÃ£');

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
insert into bairro (idbairro, nome) values (3, 'SÃ£o Pedro');
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
insert into uf (iduf, nome, sigla) values (2, 'ParanÃ¡', 'PR'); 
insert into uf (iduf, nome, sigla) values (3, 'SÃ£o Paulo', 'SP');
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

insert into municipio (idmunicipio, nome, iduf) values (1, 'Porto UniÃ£o', 1);
insert into municipio (idmunicipio, nome, iduf) values (2, 'Canoinhas', 1);
insert into municipio (idmunicipio, nome, iduf) values (3, 'Porto VitÃ³ria', 2);
insert into municipio (idmunicipio, nome, iduf) values (4, 'General Carneiro', 2);
insert into municipio (idmunicipio, nome, iduf) values (5, 'SÃ£o Paulo', 3);
insert into municipio (idmunicipio, nome, iduf) values (6, 'Rio de Janeiro', 6);
insert into municipio (idmunicipio, nome, iduf) values (7, 'UberlÃ¢ndia', 4);
insert into municipio (idmunicipio, nome, iduf) values (8, 'Porto Alegre', 5);
insert into municipio (idmunicipio, nome, iduf) values (9, 'UniÃ£o da VitÃ³ria', 2);

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


-- criaÃ§Ã£o da tabela fornecedor e adicionando itens.
create table fornecedor (
	idfornecedor integer not null,
	nome varchar(50) not null,

	constraint pk_frn_idfornecedor primary key (idfornecedor),
	constraint un_frn_nome unique (nome)
);
select * from fornecedor

insert into fornecedor (idfornecedor, nome) values (1, 'Cap. Computadores');
insert into fornecedor (idfornecedor, nome) values (2, 'AA. Computadores');
insert into fornecedor (idfornecedor, nome) values (3, 'BB. MÃ¡quinas');
-- Aqui termina tudo da tabela fornecedor.

-- criaÃ§Ã£o da tabela vendedor e adicionando itens.
create table vendedor (
	idvendedor integer not null,
	nome varchar(50) not null,

	constraint pk_vnd_idvendedor primary key (idvendedor),
	constraint un_vnd_nome unique (nome)
);

insert into vendedor (idvendedor, nome) values (1, 'AndrÃ©');
insert into vendedor (idvendedor, nome) values (2, 'Alisson');
insert into vendedor (idvendedor, nome) values (3, 'JosÃ©');
insert into vendedor (idvendedor, nome) values (4, 'Ailton');
insert into vendedor (idvendedor, nome) values (5, 'Maria');
insert into vendedor (idvendedor, nome) values (6, 'Suelem');
insert into vendedor (idvendedor, nome) values (7, 'Aline');
insert into vendedor (idvendedor, nome) values (8, 'Silvana');
select * from vendedor
-- Aqui termina tudo da tabela vendedor.

-- criaÃ§Ã£o da tabela transportadora e adicionando itens.
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
insert into transportadora (idtransportadora, idmunicipio, nome, logradouro, mumero) values (2, 5, 'UniÃ£o Transportes', null, null);
select * from transportadora
-- Aqui termina tudo da tabela transportador.

-- criaÃ§Ã£o da tabela produto e adicionando itens.
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
insert into produto (idproduto, idfornecedor, nome, valor) values (3, 2, 'Placa mÃ£e', 200);
insert into produto (idproduto, idfornecedor, nome, valor) values (4, 2, 'HD', 150);
insert into produto (idproduto, idfornecedor, nome, valor) values (5, 2, 'Placa de vÃ­deo', 200);
insert into produto (idproduto, idfornecedor, nome, valor) values (6, 3, 'MemÃ³ria RAM', 100);
insert into produto (idproduto, idfornecedor, nome, valor) values (7, 1, 'Gabinete', 35);
select * from produto
-- Aqui termina tudo da tabela produto.

-- CriaÃ§Ã£o da tabela pedido e adicionando itens.
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
-- criaÃ§Ã£o da tabela pedido_produto e adicionando itens
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

-- ExercÃ­cio

-- 1 - Somente o nome de todos os vendedores em ordem alfabÃ©tica.
select nome from vendedor order by nome;

-- 2 - Os produtos que o preÃ§o seja maior que R$200,00 em ordem crescente pelo preÃ§o.
select nome, valor from produto where valor > 200 order by valor;

-- 3 - O nome do produto, o preÃ§o e o preÃ§o reajustado em 10%, ordenado pelo nome do produto.
select nome, valor || ' - ' || valor + (valor * 10/ 100) from produto order by nome;
-- resposta do professor
select nome, valor, valor + (valor * 10) / 100 as Reajuste from produto order by nome;

-- 4 - Os municÃ­pios do Rio Grande do sul.
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

-- 7 - Os pedidos que o valor nÃ£o esteja entre R$100,00 e R$500,00.
select valor from pedido where valor not between '100' and '500';
-- resposta do professor
select * from pedido where valor not between 100 and 500;

-- 8 - Os pedidos do vendedor AndrÃ© ordenado pelo valor em ordem decrescente.
select valor from pedido where idvendedor = '1' order by valor desc;
-- resposta do professor
select * from pedido where idvendedor = 1 order by valor desc;

-- 9 - Os pedidos do cliente Manoel ordenado pelo valor em ordem crescente.
select valor from pedido where idcliente = 1 order by valor;
-- resposta do professor
select * from pedido where idcliente = 1 order by valor;

-- 10 - Os pedidos da cliente JÃ©ssica que foram feitos pelo vendedor AndrÃ©.
select valor from pedido where idcliente = 15 and idvendedor = 1;
-- resposta do professor
select * from pedido where idcliente = 15 and idvendedor = 1;

-- 11 - Os pedidos que foram transportados pela transportadora UniÃ£o Transportes.
select valor from pedido where idtransportadora = 2;
-- resposta do professor
select * from pedido where idtransportadora = 2;

-- 12 - Os pedidos feitos pela vendedora Maria ou pela vendedora Aline.
select valor from pedido where idvendedor = 5 or idvendedor = 7;
-- resposta do professor
select * from pedido where idvendedor = 5 or idvendedor = 7;

-- 13 - Os clientes que moram em UniÃ£o da VitÃ³ria ou Porto UniÃ£o.
select nome from cliente where idmunicipio = 9 or idmunicipio = 1; 
-- resposta do professor
select * from cliente where idmunicipio = 9 or idmunicipio = 1

-- 14 -	Os clientes que naÌƒo moram em UniaÌƒo da VitoÌria e nem em Porto UniaÌƒo.
select nome from cliente where idmunicipio != 9 and idmunicipio != 1;
-- resposta do professor
select * from cliente where idmunicipio <> 9 and idmunicipio <> 1;

-- 15 -	Os clientes que naÌƒo informaram o logradouro.
select nome from cliente where logradouro is null;
-- resposta do professor
select * from cliente where logradouro is null;

-- 16 - Os clientes que moram em avenidas.
select nome from cliente where logradouro like 'Av%';
-- resposta do professor
select * from cliente where logradouro like 'Av%';

-- 17 - Os vendedores que o nome comecÌ§a com a letra S.
select nome from vendedor where nome like 'S%'; 
-- resposta do professor
select * from vendedor where nome like 'S%'; 

-- 18 -	Os vendedores que o nome termina com a letra A.
select nome from vendedor where nome like '%a';
-- resposta do professor
select * from vendedor where nome like '%a';

-- 19 - Os vendedores que o nome naÌƒo comecÌ§a com a letra A.
select nome from vendedor where nome  not like  'A%';
-- resposta do professor
select * from vendedor where nome  not like  'A%';

-- 20 - Os municiÌpios que comecÌ§am com a letra P e saÌƒo de Santa Catarina.
select nome from municipio where nome like 'P%' and iduf = 1;
-- resposta do professor
select * from municipio where nome like 'P%' and iduf = 1;

-- 21 - As transportadoras que informaram o enderecÌ§o.
select nome from transportadora where logradouro is not null;
-- resposta do professor
select * from transportadora where logradouro is not null;

-- 22 - Os itens do pedido 01.
-- resposta do professor
select * from pedido_produto where idpedido = 1; 

-- 23 - Os itens do pedido 06 ou do pedido 10.
-- resposta do professor
select * from pedido_produto where idpedido = 6 or idpedido = 10;


-- FunÃ§Ãµes agregadas

-- mÃ©dia (avg)
select avg(valor) from pedido -- mÃ©dia do valor 

-- contagem de elementos (count)
select count(idmunicipio) from municipio -- contagem do elemento / esses contadores Ã© bom ser usado em elementos not null. a nÃ£o ser que seja um pedido de busca para esse determinado valor.
select count(*) from municipio -- vai retornar o mesmo valor / tipo: conte quantos logradouros da tabela trasnpostadora. daÃ­ sÃ³ vai retornar o logradouro que nÃ£o for null. 

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

-- 1 - A mÃ©dia dos valores de vendas dos vendedores que venderam mais que R$200,00.
select idvendedor, avg(valor) from pedido group by idvendedor having avg(valor) > 200;

-- 2 - Os vendedores que venderam mais que R$ 1500,00.
select idvendedor, sum(valor) from pedido group by idvendedor having sum(valor) > 1500;

-- 3 - O somatÃ³rio das vendas de cada vendedor.
select idvendedor, sum(valor) from pedido group by idvendedor;

-- 4 - A quantidade de municÃ­pios.
select count(idmunicipio) from municipio;

-- 5 - A quantidade de municÃ­pios que sÃ£o do ParanÃ¡ ou de Santa Catarina.
select count(idmunicipio) from municipio where iduf = 1 or iduf = 2;

-- 6 - A quantidade de municÃ­pios por estado.
select iduf, count(idmunicipio) from municipio group by iduf;

-- 7 - A quantidade de clientes que informaram o logradouro.
select count(logradouro) from cliente
-- resposta do professor
select count(idcliente) from cliente where logradouro is not null;

-- 8 - A quantidade de clientes por municÃ­pio.
select idmunicipio, count(idcliente) from cliente group by idmunicipio;

-- 9 - A quantidade de fornecedores.
select count(idfornecedor) from fornecedor;

-- 10 - A quantidade de produtos por fornecedor.
select count(idproduto) from produto group by idfornecedor

-- 11 - A mÃ©dia de preÃ§os dos produtos do fornecedor Cap. Computadores.
select avg(valor) from produto where idfornecedor = 1;

-- 12 - O somatÃ³rio dos preÃ§os de todos os produtos.
select sum(valor) from produto;

-- 13 - O nome do produto e o preÃ§o somente do produto mais caro.
select nome, max(valor) from produto
-- resposta do professor
select nome, valor from produto order by valor desc limit 1

-- 14 - O nome do produto e o preÃ§o somente do produto mais barato.
select min(valor) from produto
-- resposta do professor
select nome, valor from produto order by valor asc limit 1;  

-- 15 - A mÃ©dia de preÃ§o de todos os produtos.
select avg(valor) from produto

-- 16 - A quantidade de transportadoras.
select count(idtransportadora) from transportadora

-- 17 - A mÃ©dia do valor de todos os pedidos.
select avg(valor) from pedido

-- 18 - O somatÃ³rio do valor do pedido agrupado por cliente.
select idcliente, sum(valor) from pedido group by idcliente;

-- 19 - O somatÃ³rio do valor do pedido agrupado por vendedor.
select idvendedor, sum(valor) from pedido group by idvendedor;

-- 20 - O somatÃ³rio do valor do pedido agrupado por transportadora.
select idtransportadora, sum(valor) from pedido group by idtransportadora; 

-- 21 - O somatÃ³rio do valor do pedido agrupado pela data.
select data_pedido, sum(valor)from pedido group by data_pedido;

-- 22 - O somatÃ³rio do valor do pedido agrupado por cliente, vendedor e transportadora.
select idcliente, idvendedor, idtransportadora, sum(valor) as total from pedido group by idcliente, idvendedor, idtransportadora

-- 23 - O somatÃ³rio do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que R$ 200,00.
select sum(valor) from pedido where data_pedido between '2008-04-01' and '2009-12-10' having sum(valor) > 200;
-- resposta do professor
select sum(valor) from pedido where data_pedido between '2008-04-01' and '2009-12-10' and valor > 200;

-- 24 - A mÃ©dia do valor do pedido do vendedor AndrÃ©.
select avg(valor) from pedido where idvendedor = 1;

-- 25 - A mÃ©dia do valor do pedido da cliente JÃ©ssica.
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

-- 35 - O somatÃ³rio dos valores unitÃ¡rios de todos os produtos.
select sum(valor_unitario) from pedido_produto;

-- 36 - A mÃ©dia dos produtos do pedido 6.
select avg(valor_unitario) from pedido_produto where idpedido = 6;

-- 37 - O valor do maior produto do pedido.
select max(valor_unitario) from pedido_produto group by idpedido; 

-- 38 - O valor do menor produto do pedido.
select min(valor_unitario) from pedido_produto group by idpedido;

-- 39 - O somatÃ³rio da quantidade de produtos por pedido.
select sum(quantidade) from pedido_produto group by idpedido;
-- resposta do professor
select idpedido, sum(quantidade) from pedido_produto group by idpedido;

-- 40 - O somatÃ³rio da quantidade de todos os produtos do pedido.
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

-- aqui nesse exemplo vai mostrar todos os cliente por nome e as respectivas profissÃµes por nome e nÃ£o por id

-- nesse exemplo de baixo vai retornar a mesma coisa mas sem os campos null, por que o inner join obriga que exista o relacionamento entre os campos.

select
	cln.nome as cliente, -- cln => apelido da tabela cliente, .nome => nome campo referÃªncia a tabela cliente, as cliente. o nome apresentado da coluna vai ser cliente.
	prf.nome as profissao -- mesma coisa de cima. sÃ³ muda a tabela que aqui Ã© a tabela profissÃ£o.
from
	cliente as cln
inner join
	profissao as prf on cln.idprofissao = prf.idprofissao


-- exercício

-- 1 - O nome do cliente, a profissão, a nacionalidade, o logradouro, o número, o complemento, o bairro, o município e a unidade de federação.
select
	cliente.nome as cliente,
	profissao.nome as profissao,
	nacionalidade.nome as nacionalidade,
	cliente.logradouro,
	cliente.numero,
	complemento.nome as complemento,
	bairro.nome as bairro,
	municipio.nome as municipio,
	uf.nome as estado,
	uf.sigla
from
	cliente
left outer join
	profissao on cliente.idprofissao = profissao.idprofissao
left outer join
	nacionalidade on cliente.idnacionalidade = nacionalidade.idnacionalidade
left outer join
	complemento on cliente.idcomplemento = complemento.idcomplemento
left outer join
	bairro on cliente.idbairro = bairro.idbairro
left outer join
	municipio on cliente.idmunicipio = municipio.idmunicipio
left outer join
	uf on municipio.iduf = uf.iduf
	
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
select 
	pedido.data_pedido as data_do_pedido,
	pedido.valor as valor,
	cliente.nome as cliente,
	transportadora.nome as transportadora,
	vendedor.nome as vendedor
from 
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
left outer join
	transportadora on pedido.idtransportadora = transportadora.idtransportadora
left outer join	
	vendedor on pedido.idvendedor = vendedor.idvendedor
	
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

-- 10 - O nome do cliente e o somatÃ³rio do valor do pedido (agrupado por cliente).
select
	cliente.nome as cliente,
	sum(valor) as  total
from
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
group by
	cliente.nome
	
-- 11 - O nome do vendedor e o somatÃ³rio do valor do pedido (agrupado por vendedor).
select
	vendedor.nome as vendedor,
	sum(valor) as total
from 
	pedido
left outer join
	vendedor on pedido.idvendedor = vendedor.idvendedor
group by
	vendedor.nome

-- 12 - O nome da transportadora e o somatório do valor do pedido (agrupado por transportadora).
select
	transportadora.nome as transportadora,
	sum(valor)
from 
	pedido
left outer join
	transportadora on pedido.idtransportadora = transportadora.idtransportadora
group by
	transportadora.nome

-- 13 - O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente).
select
	cliente.nome as cliente,
	count(idpedido) as pedidos
from 
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
group by
	cliente.nome

-- 14 - O nome do produto e a quantidade vendida (agrupado por produto).
select
	produto.nome as produto,
	sum(pedido_produto.quantidade) as quantidade_vendida
from 
	pedido_produto
left outer join
	produto on pedido_produto.idproduto = produto.idproduto
group by
	produto.nome

-- 15 - A data do pedido e o somatório do valor dos produtos do pedido (agrupado pela data do pedido).
select
	pedido.data_pedido as data_do_pedido,
	sum(pedido.valor) as total
from
	pedido
left outer join
	pedido_produto on pedido.idpedido = pedido_produto.idpedido
group by
	pedido.data_pedido

-- 16 -A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido).
select
	pedido.data_pedido as data_do_pedido,
	count(pedido_produto.idproduto) as total
from
	pedido
left outer join
	pedido_produto on pedido.idpedido = pedido_produto.idpedido
group by
	pedido.data_pedido


-- comandos adicionais

select data_pedido, extract(day from data_pedido) from pedido -- aqui vai mostrar a data do pedido e vai mostrar o dia do medido. vai ser => 2008-04-01, 1

-- um exemplo de desmembrar a data por dia, mês e ano..
select
	data_pedido,
	extract(day from data_pedido) as dia,
	extract(month from data_pedido) as mês,
	extract(year from data_pedido) as ano
from 
	pedido

select nome, substring(nome from 1 for 5) from cliente -- o substring é para mostrar determinada letra de um nome como usado aqui no exemplo, aqui vai aparecer da 1º letra do nome até a 5º letra de uma nome.(Geraldo, Geral)
select nome, substring(nome, 2) from cliente -- aqui vai aparecer o nome e em seguida o nome depois do segundo caracter.(Carlos, arlos)...
select nome, upper(nome) from cliente -- deixa todos os caracteres maiusculos, upper. (Guilherme, GUILHERME)...
select nome, lower(nome) from cliente -- deixa todos os caracteres minusculos, lower. (Guilherme, guilherme)...
select nome, cpf, coalesce(cpf, 'Não informado') from cliente -- Aqui estamos fazendo uma mensagem personalizada, onde o cpf for null vai mostrar a mensagem 'Não informada'... 

select 
	case sigla
		when 'PR' then 'Paraná'
		when 'SC' then 'Santa Catarina'
		else 'Outros'
		end as uf
from
	uf

-- exercício

-- 1 - O nome do cliente e somente o mês de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
select
	cliente.nome,
	case extract(month from data_nascimento)
		when '01' then '01'
		when '02' then '02'
		when '03' then '03'
		when '04' then '04'
		when '05' then '05'
		when '06' then '06'
		when '07' then '07'
		when '08' then '08'
		when '09' then '09'
		when '10' then '10'
		when '11' then '11'
		when '12' then '12'
	else
		'Não informado'
	end data_nascimento
from
	cliente
			
-- 2 - O nome do cliente e somente o nome do mês de nascimento (Janeiro, Fevereiro etc). Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
select
	cliente.nome,
	case extract(month from data_nascimento)
		when '01' then 'Janeiro'
		when '02' then 'Fevereiro'
		when '03' then 'Março'
		when '04' then 'Abril'
		when '05' then 'Maio'
		when '06' then 'Junho'
		when '07' then 'Julho'
		when '08' then 'Agosto'
		when '09' then 'Setembro'
		when '10' then 'Outubro'
		when '11' then 'Novembro'
		when '12' then 'Dezembro'
	else
		'Não informado'
	end data_nascimento
from
	cliente

-- 3 - O nome do cliente e somente o ano de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
select 
	cliente.nome as nome,
	coalesce(extract(year from data_nascimento), 0)
from
	cliente

-- 4 - O caractere 5 até o caractere 10 de todos os municípios.
select
	substring(nome from 5 for 6)
from
	municipio
	
-- 5 - O nome de todos os municípios em letras maiúsculas.
select
	upper(nome) as municipio
from 
	municipio

-- 6 - O nome do cliente e o gênero. Caso seja M mostrar “Masculino”, senão mostrar “Feminino”.
select 
	cliente.nome as cliente,
	case genero
		when 'M' then 'Masculino'
		else 'Feminino'
	end genero
from
	cliente

-- 7 - O nome do produto e o valor. Caso o valor seja maior do que R$ 500,00 mostrar a mensagem “Acima de 500”, caso contrário, mostrar a mensagem “Abaixo de 500”.
select 
	produto.nome as produto,
	case
		when valor > 500 then 'Acima de 500'
		else 'Abaixo de 500'
	end valor
from 
	produto

-- subconsultas

-- selecionar a data do pedido e o valor onde o valor seja maior que a média dos
-- valores de todos os pedidos
select 
	data_pedido,
	valor
from
	pedido
where
	valor > (select avg(valor) from pedido)

-- Exemplo com count
select
	pedido.data_pedido,
	pedido.valor,
	(select sum(quantidade) from pedido_produto where pedido_produto.idpedido = pedido.idpedido) as total
from 
	pedido

-- Exemplo de update
select avg(valor) from pedido

update pedido set valor = valor + ((valor * 5) / 100) --> Aqui aumenta o valor do pedido em 5%
where valor > (select avg(valor) from pedido)  --> Aqui aplica o filtro para esse aumento ser para produtos mais valiosos do que a média deles..  

-- exercício

-- 1 - O nome dos clientes que moram na mesma cidade do Manoel. Não deve ser mostrado o Manoel.
select
	nome
from 
	cliente
where
	idmunicipio = (select idmunicipio from cliente where nome = 'Manoel')
and 
	idcliente <> 1 -- o id de Manoel é 1
	
-- 2 - A data e o valor dos pedidos que o valor do pedido seja menor que a média de todos os pedidos.
select
	data_pedido,
	valor
from
	pedido
where
	valor < (select avg(valor) from pedido)

-- 3 - A data, o valor, o cliente e o vendedor dos pedidos que possuem 2 ou mais produtos.
	
-- 4 - O nome dos clientes que moram na mesma cidade da transportadora BSTransportes.

-- 5 - O nome do cliente e o município dos clientes que estão localizados no mesmo município de qualquer uma das transportadoras.
select
	nome
from
	cliente
where
	idmunicipio in (select idmunicipio from transportadora) 
	
select * from transportadora
-- 6 - Atualizar o valor do pedido em 5% para os pedidos que o somatório do valor total dos produtos daquele pedido seja maior que a média do valor total
--      de todos os produtos de todos os pedidos.
update 
	pedido 
set 
	valor = valor + ((valor * 5) / 100)
where 
	(select sum(pedido_produto.valor_unitario) from pedido_produto where pedido_produto.idpedido = idpedido) > (select avg(valor_unitario) from pedido_produto) 
-- 7 - O nome do cliente e a quantidade de pedidos feitos pelo cliente.

-- 8 - Para revisar, refaça o exercício anterior (número 07) utilizando group by e mostrando somente os clientes que fizeram pelo menos um pedido.
select
	cliente.nome,
	count(pedido.idcliente)
from
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
group by
	cliente.nome

-- OBSERVAÇÂO: Depois dar uma revisada nesse assunto;


-- views
drop view cliente_profissao; -- apaga a view, nesse caso apagou a view cliente_profissao

create view cliente_profissao as -- criando uma view para mostrar o nome do cliente e sua profissao, serve até para facilitar a busca. addendo: isso não é uma tabela 
select
	cliente.nome as nome,
	profissao.nome as profissao
from 
	cliente
left outer join
	profissao on cliente.idprofissao = profissao.idprofissao 

select * from cliente_profissao where profissao = 'Estudante' -- pesquisa por filtro na view


-- Exercício

-- 1 - O nome, a profissão, a nacionalidade, o complemento, o município, a unidade de federação, o bairro, o CPF,o RG, a data de nascimento, o gênero (mostrar “Masculino” ou “Feminino”), o logradouro, o número e as observações dos clientes.
create view informacoes as 
select
	cliente.nome as cliente,
	profissao.nome as profissao,
	nacionalidade.nome as nacionalidade,
	complemento.nome as complemento,
	municipio.nome as municipio,
	uf.sigla as uf,
	bairro.nome as bairro,
	cliente.cpf,
	cliente.rg,
	cliente.data_nascimento,
	case genero
		when 'M' then 'Masculino'
		when 'F' then 'Feminino'
	end genero,
	cliente.logradouro,
	cliente.numero,
	cliente.observacoes
from
	cliente
left outer join
	profissao on cliente.idprofissao = profissao.idprofissao
left outer join
	nacionalidade on cliente.idnacionalidade = nacionalidade.idnacionalidade
left outer join
	complemento on cliente.idcomplemento = complemento.idcomplemento
left outer join
	municipio on cliente.idmunicipio = municipio.idmunicipio
left outer join
	uf on cliente.iduf = uf.iduf
left outer join
	bairro on cliente.idbairro = bairro.idbairro
	
-- 2 - O nome do município e o nome e a sigla da unidade da federação.
create view municipio_estado_ufsigla as
select
	municipio.nome as municipio,
	uf.nome as estado,
	uf.sigla as sigla	
from
	municipio
left outer join
	uf on municipio.iduf = uf.iduf
	
-- 3 - O nome do produto, o valor e o nome do fornecedor dos produtos.

create view produto_valor_fornecedor as 
select
	produto.nome as produto,
	produto.valor as valor,
	fornecedor.nome as fornecedor
from 
	produto
left outer join
	fornecedor on produto.idfornecedor = fornecedor.idfornecedor
	
-- 4 - O nome da transportadora, o logradouro, o número, o nome da unidade de federação e a sigla da unidade de federação das transportadoras.
create view informacoes_transportadora as
select
	transportadora.nome as transportadora,
	transportadora.logradouro,
	transportadora.mumero,
	uf.nome as estado,
	uf.sigla as sigla
from
	transportadora
left outer join
	municipio on transportadora.idmunicipio = municipio.idmunicipio
left outer join
	uf on municipio.iduf = uf.iduf
	
-- 5 - A data do pedido, o valor, o nome da transportadora, o nome do cliente e o nome do vendedor dos pedidos.
create view informacoes_pedido as
select
	pedido.data_pedido,
	pedido.valor as valor,
	transportadora.nome as transportadora,
	cliente.nome as cliente,
	vendedor.nome as vendedor
from 
	pedido
left outer join
	transportadora on pedido.idtransportadora = transportadora.idtransportadora
left outer join
	cliente on pedido.idcliente = cliente.idcliente
left outer join
	vendedor on pedido.idvendedor = vendedor.idvendedor

-- 6 - O nome do produto, a quantidade, o valor unitário e o valor total dos produtos do pedido.
select 
	produto.nome as produto,
	sum(pedido_produto.quantidade),
	pedido_produto.valor_unitario,
from
	pedido_produto
left outer join
	produto on pedido_produto.idproduto = produto.idproduto
group by
	produto.nome
-- resposta do professor
select 
	produto.nome as produto,
	pedido_produto.quantidade,
	pedido_produto.valor_unitario
from 
	pedido_produto
left outer join
	produto on pedido_produto.idproduto = produto.idproduto
	
-- Campos autoincremento	
create table exemplo (
	idexemplo serial not null, -- Aqui serve para o próprio banco de dados definir o número do id. (1, 2, 3...)serial
	nome varchar(50) not null,

	constraint pk_exemplo_idexemplo primary key (idexemplo)
);	
-- tabela criada só para exemplo desse conteúdo autoincremento.
-- dai quando formos inserir dados, como no exemplo dessa tabela, não colocamos mais um valor para o idexemplo.
-- a inserção seria assim;
insert into exemplo (nome) values('exemplo 1');
insert into exemplo (nome) values('exemplo 2');
insert into exemplo (nome) values('exemplo 3');
insert into exemplo (nome) values('exemplo 4');
insert into exemplo (nome) values('exemplo 5');

-- fazendo atualização para as tabelas já criadas. (adicionando o serial).
-- vamos usar o exemplo com a tabela bairro

select max(idbairro) + 1 from bairro; -- aqui vamos saber o número máxim do id da tabela bairro e vamos adicionar + 1, que tinha 4 resgistros + 1 ficou 5
create sequence bairro_id_seq minvalue 5; -- aqui criamos um id 5 na tabela.
alter table bairro alter idbairro set default nextval('bairro_id_seq');
alter sequence bairro_id_seq owned by bairro.idbairro
insert into bairro (nome) values ('Teste 1');
insert into bairro (nome) values ('Teste 2'); -- aqui adicionamos os dois sem precisar adicionar o id onde vai ser incrementado automaticamente. 

-- Exercício

-- 1. Criar sequências para todas as outras tabelas da base de dados
-- a. Cliente
select max(idcliente) + 1 from cliente;
create sequence cliente_id_seq minvalue 18;
alter table cliente alter idcliente set default nextval('cliente_id_seq');
alter sequence cliente_id_seq owned by cliente.idcliente;

-- b. Complemento
select max(idcomplemento) + 1 from complemento;
create sequence complemento_id_seq minvalue 3;
alter table complemento alter idcomplemento set default nextval('complemento_id_seq');
alter sequence complemento_id_seq owned by complemento.idcomplemento;

-- c. Fornecedor
select max(idfornecedor) + 1 from fornecedor;
create sequence fornecedor_id_seq minvalue 4;
alter table fornecedor alter idfornecedor set default nextval('fornecedor_id_seq'); 
alter sequence fornecedor_id_seq owned by fornecedor.idfornecedor;

-- d. Município
select max(idmunicipio) + 1 from municipio;
create sequence municipio_id_seq minvalue 10;
alter table municipio alter idmunicipio set default nextval('municipio_id_seq');
alter sequence municipio_id_seq owned by municipio.idmunicipio;

-- e. Nacionalidade
select max(idnacionalidade) + 1 from nacionalidade;
create sequence nacionalidade_id_seq minvalue 5;
alter table nacionalidade alter idnacionalidade set default nextval('nacionalidade_id_seq');
alter sequence nacionalidade_id_seq owned by nacionalidade.idnacionalidade;

-- f. Pedido
select max(idpedido) + 1 from pedido;
create sequence pedido_id_seq minvalue 16;
alter table pedido alter idpedido set default nextval('pedido_id_seq');
alter sequence pedido_id_seq owned by pedido.idpedido;

-- g. Pedido produto (verificar se é necessário)
-- Resposta/ Não necessário.

-- h. Profissão
select max(idprofissao) + 1 from profissao;
create sequence profissao_id_seq minvalue 6;
alter table profissao alter idprofissao set default nextval('profissao_id_seq');
alter sequence profissao_id_seq owned by profissao.idprofissao;

-- i. Transportadora
select max(idtransportadora) + 1 from transportadora;
create sequence transportadora_id_seq minvalue 3;
alter table transportadora alter idtransportadora set default nextval('transportadora_id_seq');
alter sequence transportadora_id_seq owned by transportadora.idtransportadora;

-- j. UF
select max(iduf) + 1 from uf;
create sequence uf_id_seq minvalue 7;
alter table uf alter iduf set default nextval('uf_id_seq');
alter sequence uf_id_seq owned by uf.iduf;

-- k. Vendedor
select max(idvendedor) + 1 from vendedor;
create sequence vendedor_id_seq minvalue 9;
alter table vendedor alter idvendedor set default nextval('vendedor_id_seq');
alter sequence vendedor_id_seq owned by vendedor.idvendedor;

-- l. Produto
select max(idproduto) + 1 from produto;
create sequence produto_id_seq minvalue 8;
alter table produto alter idproduto set default nextval('produto_id_seq');
alter sequence produto_id_seq owned by produto.idproduto;



-- campos default
alter table pedido alter column data_pedido set default current_date; -- aqui a coluna data_pedido insere a data atual caso ela não seja preenchida.
alter table pedido alter column valor set default 0; -- aqui a coluna valor insere o valor 0 caso não seja preenchido.
-- adendo: para as colunas de valores é recomendado que seja utilizado o valor 0.

-- Exercício

-- 1 - Adicione valores default na tabela de produtos do pedido
-- a. Quantidade com o valor 1
-- b. Valor unitário com o valor 0
alter table pedido_produto alter column quantidade set default 1;
alter table pedido_produto alter column valor_unitario set default 0;

-- 2 - Adicione valor default na tabela de produtos
-- a. Valor com o valor 0
alter table produto alter column valor set default 0;


-- Índices
create index idx_cln_nome on cliente(nome);

-- exercício
-- a. Pedido – data do pedido
create index idx_pdd_data_pedido on pedido(data_pedido);

-- b. Produto – nome
create index idx_prd_nome on produto(nome);


-- Tópicos especiais

-- Funções
select valor, concat('R$ ', valor) from pedido; 
-- aqui vai mostrar a coluna com o valor e outra coluna com o valor com o cifrão; 320 | R$ 320
select valor, concat('R$ ', round(cast(valor as numeric), 2)) from pedido; -- esse 'cast' é para transformar o valor em númerico.
-- aqui vai aparecer a mesma coisa de cima, mas com o round vai mostrar 2 casas décimais. 320 | R$ 320,00

-- criando uma função.
create function formata_moeda(valor float) returns varchar(20) language plpgsql as
$$
begin return concat('R$ ', round(cast(valor as numeric), 2));
end;
$$;

-- usando essa função formata_moeda em diversas tabelas;
select valor, formata_moeda(valor) from pedido
select valor, formata_moeda(valor) from produto

-- vamos criar outra função para chamar o id e o nome do cliente, para fazer isso sem precisar do join (junção);
create function get_nome_by_id(idc integer) returns varchar(50) language plpgsql as
$$
declare r varchar(50);
begin
	select nome into r from cliente where idcliente = idc;
	return r;
end;
$$;

-- chamando essa função na tabela pedido
select data_pedido, valor, idcliente, get_nome_by_id(idcliente) from pedido;
-- aqui vai retornar todos esses campos e por último chamando a função para adicionar o nome do cliente;
-- vai mostrar assim:
-- 2008-04-01 | 1365 | 1 | Manoel

-- 1 - Crie uma função que receba como parâmetro o ID do pedido e retorne o valor total deste pedido

create function get_valor_pedido(idpdd integer) returns varchar(20) language plpgsql as
$$
begin
	return (select pedido.valor from pedido where pedido.idpedido = idpdd);
end;
$$;

select get_valor_pedido(idpedido) from pedido


-- 2 - Crie uma função chamada “maior”, que quando executada retorne o pedido com o maior valor

create or replace function get_maior_pedido() returns integer language plpgsql as
$$
begin
	return (select idpedido from pedido where valor = (select max(valor) from pedido));
end;
$$;


select get_maior_pedido()


-- Stores procedures
create procedure insere_bairro(nome_bairro varchar(30)) language sql as
$$
	insert into bairro (nome) values (nome_bairro);
$$;


call insere_bairro('Teste procedure')
-- aqui é parecido com uma função, mas não precisa o chamar como a função. exemplo do código acima;

-- exercício

-- 1 - Crie uma stored procedure que receba como parâmetro o ID do produto e o percentual de aumento, e reajuste o preço somente deste produto de acordo com o valor passado como parâmetro
create or replace procedure reajusta_produto(idp integer, percentual float) language sql as
$$
	update produto set valor = valor + ((valor * percentual) / 100) where idproduto = idp;
$$;
-- chamando o procedure e aumentando 10% do valor do produto de id 1.
call reajusta_produto(1, 10);

-- 2 - Crie uma stored procedure que receba como parâmetro o ID do produto e exclua da base de dados somente o produto com o ID correspondente
create or replace procedure apagar_produto(idp integer) language sql as
$$
	delete from produto where idproduto = idp;
$$;

-- apagando o produto de id 9.
call apagar_produto(9);


-- Triggers
create table bairro_auditoria (
	idbairro integer not null,
	data_criacao timestamp not null
);

create or replace function bairro_log() returns trigger language plpgsql as
$$
begin
	insert into bairro_auditoria (idbairro, data_criacao) values (new.idbairro, current_timestamp);
	return new;
end;
$$;


create or replace trigger log_bairro_trigger after insert on bairro for each row execute procedure bairro_log()


-- exercício
-- 1 - Crie uma tabela chamada PEDIDOS_APAGADOS
create table pedidos_apagados (
	idpedido integer not null,
	idcliente integer not null,
	idtransportadora integer not null,
	idvendedor integer not null,
	data_pedido date not null,
	valor float not null,
	data_apagado date not null
);


-- 2 - Faça uma trigger que quando um pedido for apagado, todos os seus dados devem ser copiados para a tabela PEDIDOS_APAGADOS
create or replace function apagado_log() returns trigger language plpgsql as
$$
begin
	insert into pedido_apagados (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor, data_apagado)
	values(old.idpedido, old.idcliente, old.idtransportadora, old.idvendedor, old.data_pedido, old.valor, current_timestamp);
	return new old;
end;
$$;

create or replace trigger log_pedido_trigger before delete on pedido for each row execute procedure apagado_log()


-- Domínios

-- ids
create domain idcurto as smallint;
create domain idmedio as integer;
create domain idlongo as bigint;

-- Caracteres
create domain sigla as char(3);
create domain codigo as varchar(10);
create domain nome_curto as varchar(15);
create domain nome_medio as varchar(50);
create domain nome_longo as varchar(70);
create domain documento as varchar(15);
create domain tipo as char(1);
create domain texto as text;


-- Data e hora
create domain data as date;
create domain hora as time;
create domain data_hora as timestamp;


-- Numéricos
create domain moeda as numeric(10,2);
create domain float_curto as numeric(6,2);
create domain float_medio as numeric(10,2);
create domain float_longo as numeric(15,2);
create domain quantidade as smallint;



-- usando dominio para alterar a coluna nome da tabela bairro.
-- Vamos alterar o nome varchar(30) para o domínio nome_medio, que tem um varchar(50);

alter table bairro alter column nome type nome_medio;
-- OBS: Aqui foi só um exemplo de como mudaria. é importante fazer isso no inicio do projeto.


-- exercício
-- fazer a alteração em todas as tabelas;
alter table bairro_auditoria alter column data_criacao type data_hora;

drop view informacoes_pedido;
drop view informacoes;

alter table cliente alter column nome type nome_longo;
alter table cliente alter column cpf type documento;
alter table cliente alter column rg type documento;
alter table cliente alter column data_nascimento type data;
alter table cliente alter column genero type tipo;
alter table cliente alter column logradouro type nome_longo;
alter table cliente alter column numero type nome_curto;
alter table cliente alter column idprofissao type idmedio;
alter table cliente alter column idnacionalidade type idmedio;
alter table cliente alter column idbairro type idmedio;
alter table cliente alter column idmunicipio type idmedio;
alter table cliente alter column idcomplemento type idmedio;

alter table complemento alter column nome type nome_medio;

drop view produto_valor_fornecedor;
alter table fornecedor alter column nome type nome_medio;

drop view municipio_estado_ufsigla;
drop view informacoes_transportadora;
alter table municipio alter column nome type nome_medio;
alter table municipio alter column iduf type idmedio;

alter table nacionalidade alter column nome type nome_medio;

alter table pedido alter column idpedido type bigint;
alter table pedido alter column idcliente type idmedio;
alter table pedido alter column idtransportadora type idmedio;
alter table pedido alter column idvendedor type idmedio;
alter table pedido alter column data_pedido type data;
alter table pedido alter column valor type moeda;

alter table pedido_produto alter column idpedido type idlongo;
alter table pedido_produto alter column idproduto type idmedio;
alter table pedido_produto alter column quantidade type quantidade;
alter table pedido_produto alter column valor_unitario type moeda;

alter table pedidos_apagados alter column idpedido type idlongo;
alter table pedidos_apagados alter column idcliente type idmedio;
alter table pedidos_apagados alter column idtransportadora type idmedio;
alter table pedidos_apagados alter column idvendedor type idmedio;
alter table pedidos_apagados alter column data_pedido type data;
alter table pedidos_apagados alter column valor type moeda;


alter table produto alter column idfornecedor type idmedio;
alter table produto alter column nome type nome_medio;
alter table produto alter column valor type moeda;

alter table profissao alter column nome type nome_medio;

alter table transportadora alter column idmunicipio type idmedio;
alter table transportadora alter column nome type nome_medio;
alter table transportadora alter column logradouro type nome_longo;
alter table transportadora alter column mumero type nome_curto;


alter table uf alter column nome type nome_medio;
alter table uf alter column sigla type sigla;

alter table vendedor alter column nome type nome_medio; 


-- Usuários e permissões
create role gerente; -- perfil criado para o gerente.
create role estagiario; -- perfil criado para o estagiário.


grant select, insert on bairro, cliente, complemento, fornecedor, municipio, nacionalidade, pedido, pedido_produto, produto, profissao, transportadora, uf, vendedor to gerente with grant option;
-- Aqui está dando permissão para o gerente inserir e selecionar dados nas tabelas acima.
grant all on all sequences in schema public to gerente;
-- revoke -> comando que retira as permissões.
-- daí nós podemos colocar quais permissões daremos para cada tipo de perfil. (gerente, estagiário etc)

grant select on cliente_profissao, informacoes_pedido to estagiario;
-- aqui está dando permissão para o estagiário selecionar dados das views acima. como é views não é preciso no final colocar o código => with grant option.

-- Criando permissões para usuários.
create role maria login password '123' in role gerente; -- aqui significa que maria vai conseguir fazer o login com a senha 123 e vai está associada ao perfil gerente.
create role pedro login password '321' in role estagiario; -- aqui já vai está ligado ao perfil do estagiario.


-- Para acessar o perfil do usuário;
-- 1º -> clicar com o botão direito no nome da tabela.
-- 2º -> ir na opção Query Tool.
-- 3º -> vai abrir um nova query e em cima onde aparece pedido(nome da tabela)/ postgres@PostgreSQL15 vai ter uma seta para baixo.
-- 4º -> clicando nessa seta vai aparecer a opção new conection, clicando nela vai aparecer uma janela onde vai ter as opções das bases de dados (Database), User (usuarios) e quando escolher ambos aperta em save e vai pedir a senha referente ao usuário
-- 5º -> Quando digitar a senha aperta OK e vai abrir uma janela onde vai inserir, selecionar, deletar, criar etc, fazer de acordo com as permissões do perfil. 


-- Exercícios usuários e permissões

-- 1. Crie um novo papel chamado “atendente”
create role atendente;

-- 2. Defina somente permissões para o novo papel poder selecionar e incluir novos pedidos (tabelas pedido e pedido_produto). O restante do acesso deve estar bloqueado
grant select, insert on pedido, pedido_produto to atendente with grant option;
-- 3. Crie um novo usuário associado ao novo papel
create role guilherme login password '2911' in role atendente;

-- 4. Realize testes para verificar se as permissões foram aplicadas corretamente
-- resposta colada do usuário guilherme.
select * from pedido;

insert into pedido (idcliente, idtransportadora, idvendedor, data_pedido, valor)
values (15, 2, 7, '2026-09-06', 1500);

select * from pedido_produto;

drop table pedido column valor idpedido -- não vai apagar nada por causa das permissões dadas ao perfil atendente.


-- Transações
create table conta (
	idconta serial not null,
	cliente nome_medio not null,
	saldo moeda not null default 0,

	constraint pk_cnt_idconta primary key (idconta)
);

insert into conta (cliente, saldo) values ('Cliente 1', 1000);
insert into conta (cliente, saldo) values ('Cliente 2', 500);


select * from conta

update conta set saldo = saldo - 100 where idconta = 1;
update conta set saldo = saldo + 100 where idconta = 2;

-- algebra relacional

-- Fundamentação matemática dos bancos de dados relacionais, principalmente a linguagem SQL.
-- Operações project, select, união, intersecção, joins e agrupamento.
-- Ferramenta RelaX on-line.

-- Relax










