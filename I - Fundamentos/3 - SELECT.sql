select id_turma, id_curso from Turmas

select * from turmas

select A.id_aluno, A.nome, A.sexo from dbo.Alunos A

-- ALTERAR O NOME DAS COLUNAS NA EXIBICAO
select T.id_turma AS "ID TURMA", T.id_curso AS "ID CURSO", T.data_inicio AS "DATA DE INÍCIO" from Turmas T
select T.id_turma "ID TURMA", T.id_curso "ID CURSO", T.data_inicio "DATA DE INÍCIO" from Turmas T

select * from Alunos

select *
	from Alunos A 
	where A.id_aluno > '5'
	and A.sexo <> 'F'
	and A.data_nascimento > '31/12/1999'

select a.nome, a.sexo, year(a.data_nascimento) "Ano de Nascimento"
	from Alunos a
	where a.data_nascimento > '31/12/1998'

select * from AlunosxTurmas

select at.*
	from AlunosxTurmas at
	where at.valor < 1000
	and at.id_turma = 10

select at.id_aluno, floor(at.valor * at.desconto) as desconto
	from AlunosxTurmas at
	where at.valor > 500
	and at.desconto > 0

select c.nome_curso, t.data_inicio, t.data_termino,
		floor (at.valor) "Valor Bruto",
		floor (at.desconto*at.valor) Desconto,
		floor (at.valor-(at.valor*at.desconto)) "Valor Líquido"
	from AlunosxTurmas at, Turmas t, Cursos c
	where at.id_turma = t.id_turma
	and t.id_curso = c.id_curso
 
