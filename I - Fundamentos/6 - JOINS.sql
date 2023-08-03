-- Total de turmas por curso (aqui mostra só os cursos que possuem turmas)
SELECT c.id_curso, c.nome_curso, count(t.id_turma) "Total de Turmas"
FROM Turmas t
INNER JOIN Cursos c
	ON t.id_curso = c.id_curso
GROUP BY c.id_curso, c.nome_curso;

-- Todos os cursos, independente se há ou não turmas
SELECT c.id_curso, c.nome_curso, count(t.id_turma) "Total de turmas"
FROM Cursos c
LEFT JOIN Turmas t
	ON c.id_curso = t.id_curso
GROUP BY c.id_curso, c.nome_curso;

-- Lista completa de alunos
SELECT c.nome_curso, a.nome, at.valor, at.desconto
FROM AlunosxTurmas at
	INNER JOIN Alunos a
		ON at.id_aluno = a.id_aluno 
	INNER JOIN Turmas t
		ON at.id_turma = t.id_turma
	INNER JOIN Cursos c
		ON t.id_curso = c.id_curso

-- Quantidade de alunos por turmas
SELECT t.id_turma, c.nome_curso, count(a.id_aluno) "NUMERO DE ALUNOS"
FROM AlunosxTurmas at
	INNER JOIN Alunos a
		ON a.id_aluno = at.id_aluno
	INNER JOIN Turmas t
		ON t.id_turma = at.id_turma
	INNER JOIN Cursos c
		ON c.id_curso = t.id_curso
GROUP BY t.id_turma, c.nome_curso

-- Quantidade de alunos por turma
SELECT c.nome_curso, t.id_turma, count(1) Total_de_Alunos
FROM Turmas t
	INNER JOIN AlunosxTurmas at
		ON at.id_turma = t.id_turma
	INNER JOIN Cursos c
		ON c.id_curso = t.id_curso
GROUP BY c.nome_curso, t.id_turma

-- Nome dos alunos por turma
SELECT c.nome_curso, t.id_turma, a.nome
FROM Turmas t
	INNER JOIN AlunosxTurmas at
		ON at.id_turma = t.id_turma
	INNER JOIN Cursos c
		ON c.id_curso = t.id_curso
	INNER JOIN Alunos a
		ON at.id_aluno = a.id_aluno
ORDER BY t.id_turma