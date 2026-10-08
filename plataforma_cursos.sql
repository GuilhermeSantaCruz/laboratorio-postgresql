create table cidade(
	idcidade serial not null,
	nome varchar(60) not null,
	estado char(2) not null,

	constraint pk_cid_idcidade primary key (idcidade)
);

insert into cidade (nome, estado) values ('Campina Grande', 'PB');
insert into cidade (nome, estado) values ('João Pessoa', 'PB');
insert into cidade (nome, estado) values ('Recife', 'PE');
insert into cidade (nome, estado) values ('Fortaleza', 'CE');
insert into cidade (nome, estado) values ('Natal', 'RN');


create table aluno(
	idaluno serial not null,
	nome varchar(100) not null,
	email varchar(100) not null,
	idcidade integer not null,

	constraint pk_alu_idaluno primary key (idaluno),
	constraint un_alu_email unique (email),
	constraint fk_alu_idcidade foreign key (idcidade) references cidade (idcidade)
);

insert into aluno (nome, email, idcidade) values ('Carlos Silva', 'carlos@email.com', 1);
insert into aluno (nome, email, idcidade) values ('Marina Souza', 'marina@email.com', 2);
insert into aluno (nome, email, idcidade) values ('Pedro Santos', 'pedro@email.com', 3);
insert into aluno (nome, email, idcidade) values ('Ana Oliveira', 'ana@email.com', 1);
insert into aluno (nome, email, idcidade) values ('Lucas Lima', 'lucas@email.com', 4);
insert into aluno (nome, email, idcidade) values ('Fernanda Alves', 'fernanda@email.com', 5);

create table instrutor(
	idinstrutor serial not null,
	nome varchar(100) not null,
	especialidade varchar(100) not null,

	constraint pk_ins_idinstrutor primary key (idinstrutor)
);

insert into instrutor (nome, especialidade) values ('Rafael Costa', 'Python');
insert into instrutor (nome, especialidade) values ('Juliana Mendes', 'Banco de Dados');
insert into instrutor (nome, especialidade) values ('Bruno Almeida', 'Desenvolvimento Web');
insert into instrutor (nome, especialidade) values ('Camila Rocha', 'DevOps');


create table categoria_curso(
	idcategoria serial not null,
	nome varchar(60) not null,

	constraint pk_cat_idcategoria primary key (idcategoria),
	constraint un_cat_nome unique (nome)
);

insert into categoria_curso (nome) values ('Programação');
insert into categoria_curso (nome) values ('Banco de Dados');
insert into categoria_curso (nome) values ('Web');
insert into categoria_curso (nome) values ('DevOps');


create table curso(
	idcurso serial not null,
	nome varchar(100) not null,
	preco decimal(10,2) not null,
	carga_horaria integer not null,
	idcategoria integer not null,
	idinstrutor integer not null,

	constraint pk_cur_idcurso primary key (idcurso),
	constraint un_cur_nome unique (nome),
	constraint fk_cur_idcategoria foreign key (idcategoria) references categoria_curso (idcategoria),
	constraint fk_cur_idinstrutor foreign key (idinstrutor) references instrutor (idinstrutor)
);

insert into curso (nome, preco, carga_horaria, idcategoria, idinstrutor)
values ('Python para iniciantes', 299.90, 40, 1, 1);
insert into curso (nome, preco, carga_horaria, idcategoria, idinstrutor)
values ('Python Orientado a Objetos', 349.90, 50, 1, 1);
insert into curso (nome, preco, carga_horaria, idcategoria, idinstrutor)
values ('SQL e PostgreSQL', 279.90, 35, 2, 2);
insert into curso (nome, preco, carga_horaria, idcategoria, idinstrutor)
values ('Modelagem de Banco de Dados', 399.90, 45, 2, 2);
insert into curso (nome, preco, carga_horaria, idcategoria, idinstrutor)
values ('HTML e CSS', 199.90, 30, 3, 3);
insert into curso (nome, preco, carga_horaria, idcategoria, idinstrutor)
values ('Django Completo', 499.90, 60, 3, 3);
insert into curso (nome, preco, carga_horaria, idcategoria, idinstrutor)
values ('Docker para Desenvolvedores', 449.90, 40, 4, 4);
insert into curso (nome, preco, carga_horaria, idcategoria, idinstrutor)
values ('CI/CD na prática', 549.90, 45, 4, 4);

create table matricula(
	idmatricula serial not null,
	idaluno integer not null,
	idcurso integer not null,
	data_matricula date not null,
	status varchar(20) not null,
	nota decimal(4,2),

	constraint pk_mat_idmatricula primary key (idmatricula),
	constraint fk_mat_idaluno foreign key (idaluno) references aluno (idaluno),
	constraint fk_mat_idcurso foreign key (idcurso) references curso (idcurso)
);

insert into matricula (idaluno, idcurso, data_matricula, status, nota)
values (1, 1, '2026-09-01', 'Concluido', 8.50);
insert into matricula (idaluno, idcurso, data_matricula, status, nota)
values (1, 3, '2026-09-02', 'cursando', 7.80);
insert into matricula (idaluno, idcurso, data_matricula, status, nota)
values (1, 6, '2026-09-03', 'Cursando', null);
insert into matricula (idaluno, idcurso, data_matricula, status, nota)
values (2, 1, '2026-09-02', 'Concluido', 9.20);
insert into matricula (idaluno, idcurso, data_matricula, status, nota)
values (2, 5, '2026-09-04', 'Concluido', 8.00);
insert into matricula (idaluno, idcurso, data_matricula, status, nota)
values (2, 6, '2026-09-05', 'Cursando', null);
insert into matricula (idaluno, idcurso, data_matricula, status, nota)
values (3, 3, '2026-09-03', 'Concluido', '7.50');
insert into matricula (idaluno, idcurso, data_matricula, status, nota)
values (3, 4, '2026-09-05', 'Cursando', null);
insert into matricula (idaluno, idcurso, data_matricula, status, nota)
values (4, 1, '2026-09-04', 'Concluido', 6.90);
insert into matricula (idaluno, idcurso, data_matricula, status, nota)
values (4, 2, '2026-09-06', 'Cursando', null);
insert into matricula (idaluno, idcurso, data_matricula, status, nota)
values (5, 6, '2026-09-07', 'Cursando', null);
insert into matricula (idaluno, idcurso, data_matricula, status, nota)
values (6, 7, '2026-09-08', 'Concluido', 9.00);



select * from cidade;

select * from curso;

select * from matricula;

--

-- Mostre o nome do aluno, o nome da cidade e o estado onde ele mora.
-- Ordene pelo nome do aluno em ordem alfabética.
select
	aluno.nome as aluno,
	cidade.nome as cidade,
	cidade.estado as estado
from
	aluno
left outer join
	cidade on aluno.idcidade = cidade.idcidade
order by
	aluno.nome asc;
	

-- Mostre o nome do curso, o preço, o nome da categoria e o nome do instrutor dos cursos com preço maior que R$ 300,00.
-- Ordene pelo preço do maior para o menor.
select
	curso.nome as curso,
	curso.preco as preco,
	categoria_curso.nome as categoria,
	instrutor.nome as instrutor
from
	curso
left outer join
	categoria_curso on curso.idcategoria = categoria_curso.idcategoria
left outer join
	instrutor on curso.idinstrutor = instrutor.idinstrutor
where
	curso.preco > 300
order by
	curso.preco desc;


-- nome da categoria;
-- quantidade de cursos;
-- preço médio dos cursos.
-- Considere somente categorias que tenham mais de um curso.
-- Ordene pelo preço médio do maior para o menor.
select
	categoria_curso.nome as categoria,
	count(curso.idcurso) as quantidade_cursos,
	avg(curso.preco) as preco_medio
from
	curso
left outer join
	categoria_curso on curso.idcategoria = categoria_curso.idcategoria
group by
	categoria_curso.nome
having
	count(curso.idcurso) > 1
order by
	avg(curso.preco) desc;


-- Mostre o nome do aluno, a quantidade de matrículas que ele possui e o valor total dos cursos em que está matriculado.
-- Considere apenas alunos que tenham mais de uma matrícula.
-- Ordene pelo valor total, do maior para o menor.
select
	aluno.nome as aluno,
	count(idmatricula) as matriculas_geral,
	sum(curso.preco) as valor_total
from 
	matricula
left outer join
	aluno on matricula.idaluno = aluno.idaluno
left outer join
	curso on matricula.idcurso = curso.idcurso 
group by
	aluno.nome
having
	count(idmatricula) > 1 
order by
	sum(curso.preco) desc;
-- essa não entendi tão bem, mas respondi assim!	


-- Mostre o nome do curso, o preço e a categoria dos cursos cujo preço seja maior que a média geral dos cursos.
-- Ordene pelo preço do maior para o menor.
select
	curso.nome as curso,
	curso.preco as preco,
	categoria_curso.nome as categoria
from 
	curso
left outer join
	categoria_curso on curso.idcategoria = categoria_curso.idcategoria
where
	curso.preco > (select avg(curso.preco) from curso)
order by
	curso.preco desc;


-- Mostre o nome do curso, o preço e a categoria dos cursos cujo preço seja maior que a média dos cursos da sua própria categoria.
-- Ordene pelo preço do maior para o menor.
select 
	cur.nome as curso,
	cur.preco as preco,
	categoria_curso.nome as categoria
from
	curso cur
left outer join
	categoria_curso on cur.idcategoria = categoria_curso.idcategoria
where
	cur.preco > (select avg(cur2.preco) from curso cur2 where cur2.idcategoria = cur.idcategoria)
order by
	cur.preco desc;


-- Mostre o nome do aluno, o nome do curso, o status da matrícula e a nota de todas as matrículas que estejam com status Cursando.
-- Ordene pelo nome do aluno e depois pelo nome do curso.
select 
	aluno.nome as aluno,
	curso.nome as curso,
	matricula.status as status,
	matricula.nota as nota
from
	matricula
left outer join
	aluno on matricula.idaluno = aluno.idaluno
left outer join
	curso on matricula.idcurso = curso.idcurso
where
	matricula.status = 'Cursando'
order by
	aluno.nome asc, curso.nome asc;


Mostre o nome do curso, o preço, a carga horária e o instrutor dos cursos cuja carga horária seja maior que a média de carga horária de todos os cursos.
Ordene pela carga horária do maior para o menor.
select 
	curso.nome as curso,
	curso.preco as preco,
	curso.carga_horaria as carga_horaria,
	instrutor.nome as instrutor
from
	curso
left outer join
	instrutor on curso.idinstrutor = instrutor.idinstrutor
where
	curso.carga_horaria > (select avg(curso.carga_horaria) from curso)
order by
	curso.carga_horaria desc;


-- Mostre o nome do curso, o preço e a categoria dos cursos cujo preço seja menor que o maior preço encontrado na categoria “Banco de Dados”.
-- Ordene pelo preço do menor para o maior.
select 
	curso.nome as curso,
	curso.preco as preco,
	categoria_curso.nome as categoria
from
	curso
left outer join
	categoria_curso on curso.idcategoria = categoria_curso.idcategoria
where
	curso.preco < (select max(curso.preco) from curso where idcategoria = 2)
order by
	curso.preco asc;


-- Sem escrever SQL, responda com suas próprias palavras:

-- A) O que diferencia WHERE de HAVING?
-- Pelo que entendi o having é um filtro que é usado depois de uma consulta onde tem algo agrupado (group by) e o where é o filtro usado sem algo agrupado

-- B) Qual a diferença entre uma subconsulta simples e uma subconsulta correlacionada?
-- A subconsulta simples é usada para filtramos algo geral de uma tabela, exemplo, queremos saber se o preço de um produto é manor que a média dos preços de todos os produtos da loja
-- A subconsulta correlacionada é usada para filtrarmos algo de acordo com a especificação, exemplo, queremos saber se uma quantidade de estoque é menor do que a média de quantidade de estoque da categoria específica de algo como um livro de matemática por exemplo.

-- C) Dê um exemplo de situação em que você escolheria cada uma.
-- acho que na B meio que já respondi essa C


select
	aluno.nome as aluno,
	curso.nome as curso,
	matricula.nota as nota,
	case 
		when coalesce(matricula.nota) is null then 'Ainda não avaliado'
		else 'Avaliado'
	end as situacao_nota	
from
	matricula
left outer join
	aluno on matricula.idaluno = aluno.idaluno
left outer join
	curso on matricula.idcurso = curso.idcurso


--
select 
	aluno.nome as aluno,
	curso.nome as curso,
	matricula.nota as nota,
	coalesce(matricula.nota, 0) as nota_exibicao
from
	matricula
left outer join
	aluno on matricula.idaluno = aluno.idaluno
left outer join
	curso on matricula.idcurso = curso.idcurso



select 
	aluno.nome as aluno,
	curso.nome as curso,
	matricula.status as status,
	matricula.nota as nota,
	coalesce(cast(matricula.nota as text), 'Sem nota') as resultado	
from
	matricula
left outer join
	aluno on matricula.idaluno = aluno.idaluno
left outer join
	curso on matricula.idcurso = curso.idcurso

--
-- nome do aluno;
-- nome do curso;
-- status da matrícula;
-- nota;
-- uma coluna chamada nota_final.
-- A regra de nota_final é:
-- se existir nota, mostrar a nota;
-- se não existir nota, mostrar "Pendente".
-- Além disso, ordene o resultado pelo nome do aluno em ordem alfabética.
select 	
	aluno.nome as aluno,
	curso.nome as curso,
	matricula.status as status,
	matricula.nota as nota,
	coalesce(cast(matricula.nota as text), 'Pendente') as nota_final
from
	matricula
left outer join
	aluno on matricula.idaluno = aluno.idaluno
left outer join
	curso on matricula.idcurso = curso.idcurso
order by
	aluno.nome asc;



select 
	aluno.nome as aluno,
	count(matricula.idcurso)
from 
	aluno
left outer join
	matricula on aluno.idaluno = matricula.idaluno
group by
	aluno.nome
select * from aluno
select * from matricula
-- 
select
	aluno.nome as aluno,
	coalesce(sum(curso.preco), 0) as total_gasto
from
	aluno
left outer join
	matricula on aluno.idaluno = matricula.idaluno
left outer join
	curso on matricula.idcurso = curso.idcurso
group by
	aluno.nome
order by
	sum(curso.preco) desc;
	


--
-- nome do aluno;
-- nome do curso;
-- status da matrícula;
-- nota;
-- uma coluna chamada resultado.
-- Regras da coluna resultado:
-- se houver nota, mostrar a nota;
-- se a nota for NULL, mostrar "Ainda não avaliado"
-- mostrar todos os alunos, inclusive aqueles que eventualmente não tenham matrícula;
-- ordenar pelo nome do aluno em ordem alfabética.
select 
	aluno.nome as aluno,
	curso.nome as curso,
	matricula.status as status,
	coalesce(cast(matricula.nota as text), 'Ainda não avaliado') as resultado
from
	aluno
left outer join
	matricula on aluno.idaluno = matricula.idaluno
left outer join
	curso on matricula.idcurso = curso.idcurso
order by
	aluno.nome asc;


-- nome do aluno;
-- quantidade de cursos em que está matriculado;
-- valor total dos cursos em que está matriculado.
-- Regras:
-- todos os alunos devem aparecer;
-- aluno sem matrícula → quantidade 0;
-- aluno sem matrícula → total 0;
-- ordenar pelo total gasto, do maior para o menor.
select
	aluno.nome as aluno,
	count(matricula.idcurso) as cursos_matriculados,
	coalesce(sum(curso.preco), 0) as valor_total_cursos
from
	aluno
left outer join
	matricula on aluno.idaluno = matricula.idaluno
left outer join
	curso on matricula.idcurso = curso.idcurso
group by
	aluno.nome
order by
	sum(curso.preco) desc;
	


-- nome da categoria;
-- quantidade de cursos daquela categoria;
-- menor preço de curso da categoria;
-- maior preço de curso da categoria.
-- Regras:
-- todas as categorias devem aparecer;
-- inclusive uma categoria que eventualmente não tenha nenhum curso;
-- ordene pelo maior preço, do maior para o menor.

select 
	categoria_curso.nome as categoria,
	count(curso.idcurso) as quant_cursos,
	min(curso.preco) as curso_menor_valor,
	max(curso.preco) as curso_maior_valor
from	
	categoria_curso
left outer join
	curso on categoria_curso.idcategoria = curso.idcategoria
group by
	categoria_curso.nome
order by
	max(curso.preco) desc;




-- nome da categoria;
-- quantidade de alunos diferentes matriculados em cursos daquela categoria.
-- Regras:
-- todas as categorias devem aparecer;
-- uma mesma pessoa matriculada em dois cursos da mesma categoria deve ser contada uma única vez;
-- ordenar da maior quantidade para a menor.

select
	categoria_curso.nome as categoria,
	count(distinct matricula.idaluno) as quantidade_alunos
from
	categoria_curso
left outer join
	curso on categoria_curso.idcategoria = curso.idcategoria
left outer join
	matricula on curso.idcurso = matricula.idcurso
group by 
	categoria_curso.nome
order by
	count(distinct matricula.idaluno) desc;

--
-- Mostre o nome de cada aluno que possui pelo menos uma matrícula.
-- Regras:
-- cada aluno deve aparecer uma única vez;
-- ordene pelo nome em ordem crescente.
select
	distinct(aluno.nome) as aluno
from
	matricula
left outer join
	aluno on matricula.idaluno = aluno.idaluno
order by
	aluno.nome asc;


-- nome da categoria;
-- quantidade de alunos diferentes matriculados em cursos daquela categoria.
-- Regras:
-- todas as categorias devem aparecer, inclusive aquelas sem alunos;
-- se o mesmo aluno estiver matriculado em dois cursos da mesma categoria, conte-o apenas uma vez;
-- ordene da maior quantidade para a menor.
select
	categoria_curso.nome as categoria,
	count(distinct(matricula.idaluno)) as alunos_matriculados
from
	categoria_curso
left outer join
	curso on categoria_curso.idcategoria = curso.idcategoria
left outer join
	matricula on curso.idcurso = matricula.idcurso
group by 
	categoria_curso.nome
order by
	count(distinct matricula.idaluno) desc;	


-- nome do instrutor;
-- quantidade de alunos diferentes que estão matriculados em seus cursos.
-- Regras:
-- todos os instrutores devem aparecer;
-- um aluno matriculado em dois cursos do mesmo instrutor conta apenas uma vez;
-- ordene pela quantidade de alunos, da maior para a menor.
select 
	instrutor.nome as instrutor,
	count(distinct(matricula.idaluno)) as quantidade_alunos
from
	instrutor
left outer join
	curso on instrutor.idinstrutor = curso.idinstrutor
left outer join
	matricula on curso.idcurso = matricula.idcurso
group by
	instrutor.nome
order by
	count(distinct(matricula.idaluno)) desc;



-- Para cada categoria, mostre:
-- nome da categoria;
-- quantidade de cursos;
-- quantidade de alunos diferentes matriculados nesses cursos;
-- uma classificação chamada movimento:
-- Quantidade de alunos	Movimento
-- 0	Sem alunos
-- 1 a 2	Baixo
-- 3 ou mais	Alto
-- Todas as categorias devem aparecer.
select 
	categoria_curso.nome as categoria,
	count(curso.idcurso) as quantidade_cursos,
	count(distinct(matricula.idaluno)) as alunos_matriculados,
	case
		when count(distinct(matricula.idaluno)) = 0 then 'Sem alunos'
		when count(distinct(matricula.idaluno)) between 1 and 2 then 'Baixo'
		else 'Alto'
	end as movimento	
from
	categoria_curso
left outer join
	curso on categoria_curso.idcategoria = curso.idcategoria
left outer join
	matricula on curso.idcurso = matricula.idcurso
group by
	categoria_curso.nome


--
-- nome do curso;
-- preço;
-- categoria.
-- Quero somente os cursos cujo preço seja maior que a média de preço de todos os cursos.
-- Ordene do mais caro para o mais barato.
select
	curso.nome as curso,
	curso.preco as preco,
	categoria_curso.nome as categoria
from 
	curso
left outer join
	categoria_curso on curso.idcategoria = categoria_curso.idcategoria
where
	curso.preco > (select avg(curso.preco) from curso)
order by
	curso.preco desc;


-- nome do aluno;
-- quantidade de categorias diferentes em que ele possui matrícula.
-- Regras:
-- cada categoria deve contar apenas uma vez para cada aluno;
-- alunos sem matrícula também devem aparecer;
-- ordene da maior quantidade para a menor.
select 
	aluno.nome as aluno,
	count(distinct(matricula.idmatricula)) as matricula_categoria
from
	aluno
left outer join
	matricula on aluno.idaluno = matricula.idaluno
group by
	aluno.nome
order by
	count(distinct(matricula.idmatricula))


-- nome do instrutor;
-- quantidade de cursos que ele possui;
-- preço médio dos seus cursos.
-- Depois mostre somente os instrutores cujo preço médio dos cursos seja maior que a média geral dos cursos.
-- Ordene pelo preço médio, do maior para o menor.
select
	instrutor.nome as instrutor,
	count(curso.idcurso) as quantidade_cursos,
	avg(curso.preco) as preco_medio
from 
	curso
left outer join
	instrutor on curso.idinstrutor = instrutor.idinstrutor
group by
	instrutor.nome
order by
	avg(curso.preco) desc;


                                 
-- Quero uma consulta que mostre, para cada curso:

-- nome do curso;
-- nome da categoria;
-- quantidade de alunos diferentes matriculados naquele curso.
-- Regras
-- Todos os cursos devem aparecer, inclusive aqueles que ainda não possuem nenhuma matrícula.
-- Se um curso não tiver alunos, a quantidade deve aparecer como 0.
-- Ordene da maior quantidade de alunos para a menor.
-- Em caso de empate, ordene pelo nome do curso em ordem alfabética.

select
	curso.nome as curso,
	categoria_curso.nome as categoria,
	count(distinct(matricula.idaluno)) as quantidade_matriculas
from
	curso
left outer join
	categoria_curso on curso.idcategoria = categoria_curso.idcategoria 
left outer join
	matricula on curso.idcurso = matricula.idcurso
group by
	categoria_curso.nome, curso.nome
order by
	count(distinct(matricula.idaluno)) desc, curso.nome asc;



-- Na plataforma_cursos, quero uma consulta que mostre cada categoria de curso com:

-- nome da categoria;
-- quantidade de cursos daquela categoria;
-- quantidade de alunos diferentes matriculados nos cursos daquela categoria;
-- nota média dos alunos daquela categoria.
-- Regras
-- Todas as categorias devem aparecer, inclusive aquelas que eventualmente não tenham cursos ou matrículas.
-- A quantidade de alunos deve contar alunos diferentes (DISTINCT).
-- A nota média deve considerar somente as notas existentes — lembre-se do comportamento do AVG com NULL.
-- Ordene pela nota média, da maior para a menor.
-- Em caso de empate, ordene pelo nome da categoria em ordem alfabética.
select 
	categoria_curso.nome as categoria,
	count(distinct(curso.idcurso)) as quantidade_cursos,
	count(distinct(matricula.idaluno)) as alunos_matriculados,
	avg(matricula.nota) as nota_media
from
	categoria_curso
left outer join
	curso on categoria_curso.idcategoria = curso.idcategoria
left outer join
	matricula on curso.idcurso = matricula.idcurso
group by
	categoria_curso.nome
order by
	avg(matricula.nota) desc, categoria_curso.nome asc;	


-- Na plataforma_cursos, faça uma consulta que mostre cada aluno com:

-- nome do aluno;
-- cidade;
-- quantidade de cursos diferentes em que está matriculado;
-- quantidade de cursos concluídos;
-- nota média considerando as notas que ele possui.
-- Regras
-- Todos os alunos devem aparecer, inclusive alunos sem nenhuma matrícula.
-- A quantidade de cursos deve contar cursos diferentes.
-- A quantidade de cursos concluídos deve considerar apenas matrículas cujo status seja Concluido.
-- A nota média deve ignorar NULL naturalmente.
-- Ordene pela nota média, da maior para a menor.
-- Em caso de empate, ordene pelo nome do aluno em ordem alfabética.
select
	aluno.nome as aluno,
	cidade.nome as cidade,
	count(distinct(matricula.idcurso)) as cursos_matriculados,
	count(
		distinct case 
			when matricula.status = 'Concluido' then matricula.idcurso
			else null
		end 
	)as cursos_concluidos,	
	avg(matricula.nota) as nota_media
from
	aluno
left outer join
	cidade on aluno.idcidade = cidade.idcidade
left outer join
	matricula on aluno.idaluno = matricula.idaluno
group by
	aluno.nome, cidade.nome
order by
	avg(matricula.nota) desc, aluno.nome asc;









