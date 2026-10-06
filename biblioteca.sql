create table editora (
	ideditora serial not null,
	nome varchar(30) not null,

	constraint pk_edt_ideditora primary key(ideditora),
	constraint un_edt_nome unique(nome)
);

insert into editora (nome) values('Bookman');
insert into editora (nome) values('Edgard Blusher');
insert into editora (nome) values('Nova Terra');
insert into editora (nome) values('Brasport');

select * from editora
-- tabela editora criada e com os dados inseridos.

create table categoria (
	idcategoria serial not null,
	nome varchar(50) not null,

	constraint pk_ctg_idcategoria primary key(idcategoria),
	constraint un_ctg_nome unique(nome)
);

insert into categoria (nome) values('Banco de Dados');
insert into categoria (nome) values('HTML');
insert into categoria (nome) values('Java');
insert into categoria (nome) values('PHP');

select * from categoria;
-- tabela categoria criada e com os dados inseridos


create table autor (
	idautor serial not null,
	nome varchar(50) not null,

	constraint pk_aut_idautor primary key(idautor)
);

insert into autor (nome) values('Waldemar Setzer');
insert into autor (nome) values('Flávio Soares');
insert into autor (nome) values('John Watson');
insert into autor (nome) values('Rui Rossi dos Santos');
insert into autor (nome) values('Antonio Pereira de Resende');
insert into autor (nome) values('Claudiney Calixto Lima');
insert into autor (nome) values('Evandro Carlos Teruel');
insert into autor (nome) values('Ian Graham');
insert into autor (nome) values('Fabrício Xavier');
insert into autor (nome) values('Pablo Dalloglio');

select * from autor;
-- tabela autor criada e dados inseridos


create table livro (
	idlivro serial not null,
	ideditora integer not null,
	idcategoria integer not null,
	nome varchar(50) not null,

	constraint pk_liv_idlivro primary key(idlivro),
	constraint fk_liv_ideditora foreign key(ideditora) references editora (ideditora),
	constraint fk_liv_idcategoria foreign key(idcategoria) references categoria (idcategoria),
	constraint un_liv_nome unique (nome)
);

insert into livro (ideditora, idcategoria, nome) values(2, 1, 'Banco de Dados - 1 Edição');
insert into livro (ideditora, idcategoria, nome) values(1, 1, 'Oracle DataBase 11G Administração');
insert into livro (ideditora, idcategoria, nome) values(3, 3, 'Programação de Computadores em Java');
insert into livro (ideditora, idcategoria, nome) values(4, 3, 'Orientada a Aspectos em Java');
insert into livro (ideditora, idcategoria, nome) values(4, 2, 'HTML5 - Guia prático');
insert into livro (ideditora, idcategoria, nome) values(3, 2, 'XHTML: Guia para Desenvolvimento na Web');
insert into livro (ideditora, idcategoria, nome) values(1, 4, 'PHP para Desenvolvimento Profissional');
insert into livro (ideditora, idcategoria, nome) values(2, 4, 'PHP com Programação Orientada a Objetos');

select * from livro
-- tabela livro criada e dados inseridos


create table livro_autor (
	idlivro integer not null,
	idautor integer not null,

	constraint pk_lva_idlivroautor primary key(idlivro, idautor),
	constraint fk_lva_idlivro foreign key(idlivro) references livro (idlivro),
	constraint fk_lva_idautor foreign key(idautor) references autor (idautor)	
);

insert into livro_autor (idlivro, idautor) values(6, 1);
insert into livro_autor (idlivro, idautor) values(6, 2);
insert into livro_autor (idlivro, idautor) values(7, 3);
insert into livro_autor (idlivro, idautor) values(8, 4);
insert into livro_autor (idlivro, idautor) values(9, 5);
insert into livro_autor (idlivro, idautor) values(9, 6);
insert into livro_autor (idlivro, idautor) values(10, 7);
insert into livro_autor (idlivro, idautor) values(11, 8);
insert into livro_autor (idlivro, idautor) values(12, 9);
insert into livro_autor (idlivro, idautor) values(13, 10);


select * from livro_autor
-- tabela livro_autor criada e dados inseridos

create table aluno (
	idaluno serial not null,
	nome varchar(30) not null,

	constraint pk_alu_idaluno primary key (idaluno)
);

insert into aluno (nome) values('Mario');
insert into aluno (nome) values('João');
insert into aluno (nome) values('Paulo');
insert into aluno (nome) values('Pedro');
insert into aluno (nome) values('Maria');

select * from aluno       

-- tabela aluno criada e dados inseridos

create table emprestimo (
	idemprestimo serial not null,
	idaluno integer not null,
	data_emprestimo date not null,
	data_devolucao date not null,
	valor float not null,
	devolvido char not null,

	constraint pk_emp_idemprestimo primary key (idemprestimo),
	constraint fk_emp_idaluno foreign key (idaluno) references aluno (idaluno)
);

insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (1, '2012-05-02', '2012-05-12', 10, 'S');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (1, '2012-04-23', '2012-05-03', 5, 'N');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (2, '2012-05-10', '2012-05-20', 12, 'N');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (3, '2012-05-10', '2012-05-20', 8, 'S');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (4, '2012-05-05', '2012-05-15', 15, 'N');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (4, '2012-05-07', '2012-05-17', 20, 'S');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido)
values (4, '2012-05-08', '2012-05-18', 5, 'S');

select * from emprestimo;

-- tabela emprestimo criada e dados inseridos

create table emprestimo_livro (
	idemprestimo integer not null,
	idlivro integer not null,

	constraint pk_eml_idemprestimolivro primary key (idemprestimo, idlivro),
	constraint fk_eml_idemprestimo foreign key (idemprestimo) references emprestimo (idemprestimo),
	constraint fk_eml_idlivro foreign key (idlivro) references livro (idlivro)
);

insert into emprestimo_livro values (1, 6);
insert into emprestimo_livro values (2, 9);
insert into emprestimo_livro values (2, 8);
insert into emprestimo_livro values (3, 7);
insert into emprestimo_livro values (3, 12);
insert into emprestimo_livro values (4, 10);
insert into emprestimo_livro values (5, 9);
insert into emprestimo_livro values (6, 11);
insert into emprestimo_livro values (6, 6);
insert into emprestimo_livro values (7, 13);

select * from emprestimo_livro

-- tabela emprestimo_livro criada e dados inseridos.

-- 18 - Crie os seguintes índices:
-- Tabela       |   Campo
-- Emprestimo   |   Emprestimo
-- Emprestimo   |   Devolução

-- CONSULTAS SIMPLES
-- 19 - O nome dos autores em ordem alfabética.
-- 20 - O nome dos alunos que começam com a letra P.
-- 21 - O nome dos livros da categoria Banco de Dados ou Java.
-- 22 - O nome dos livros da editora Bookman.
-- 23 - Os empréstimos realizados entre 05/05/2012 e 10/05/2012.
-- 24 - Os empréstimos que não foram feitos entre 05/05/2012 e 10/05/2012
-- 25 - Os empréstimos que os livros já foram devolvidos.


-- CONSULTAS COM AGRUPAMENTO SIMPLES
-- 26 - A quantidade de livros.
-- 27 - O somatório do valor dos empréstimos.
-- 28 - A média do valor dos empréstimos.
-- 29 - O maior valor dos empréstimos.
-- 30 - O menor valor dos empréstimos.
-- 31 - O somatório do valor do empréstimo que estão entre 05/05/2012 e 10/05/2012.
-- 32 - A quantidade de empréstimos que estão entre 01/05/2012 e 05/05/2012.


-- CONSULTAS COM JOIN
-- 33 - O nome do livro, a categoria e a editora (LIVRO) – fazer uma view
-- 34 - O nome do livro e o nome do autor (LIVRO_AUTOR) – fazer uma view.
-- 35 - O nome dos livros do autor Ian Graham (LIVRO_AUTOR).
-- 36 - O nome do aluno, a data do empréstimo e a data de devolução (EMPRESTIMO).
-- 37 - O nome de todos os livros que foram emprestados (EMPRESTIMO_LIVRO).


-- CONSULTAS COM AGRUPAMENTO + JOIN
-- 38 - O nome da editora e a quantidade de livros de cada editora (LIVRO).
-- 39 - O nome da categoria e a quantidade de livros de cada categoria (LIVRO).
-- 40 - O nome do autor e a quantidade de livros de cada autor (LIVRO_AUTOR).
-- 41 - O nome do aluno e a quantidade de empréstimo de cada aluno (EMPRESTIMO_LIVRO).
-- 42 - O nome do aluno e o somatório do valor total dos empréstimos de cada aluno (EMPRESTIMO).
-- 43 - O nome do aluno e o somatório do valor total dos empréstimos de cada aluno somente daqueles que o somatório for maior do que 7,00 (EMPRESTIMO).

-- CONSULTAS COMANDOS DIVERSOS
-- 44 - O nome de todos os alunos em ordem decrescente e em letra maiúscula.
-- 45 - Os empréstimos que foram feitos no mês 04 de 2012.
-- 46 - Todos os campos do empréstimo. Caso já tenha sido devolvido, mostrar a mensagem “Devolução completa”, senão “Em atraso”.
-- 47 - Somente o caractere 5 até o caractere 10 do nome dos autores.
-- 48 - O valor do empréstimo e somente o mês da data de empréstimo. Escreva “Janeiro”, “Fevereiro”, etc


-- SUBCONSULTAS
-- 49 - A data do empréstimo e o valor dos empréstimos que o valor seja maior que a média de todos os empréstimos.
-- 50 - A data do empréstimo e o valor dos empréstimos que possuem mais de um livro.
-- 51 - A data do empréstimo e o valor dos empréstimos que o valor seja menor que a soma de todos os empréstimos.






