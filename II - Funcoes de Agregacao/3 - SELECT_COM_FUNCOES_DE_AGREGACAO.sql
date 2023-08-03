-- Total de turmas por curso
SELECT c.nome_curso, count(t.id_turma) Turmas
FROM Turmas t
	INNER JOIN Cursos c
		ON t.id_curso = c.id_curso
GROUP BY c.nome_curso

-- Utilizar a clausula IN
-- Mostra os que tiverem id 1 e 5
SELECT * 
FROM Turmas
where id_curso IN (1, 5)

-- Mostra os que nao tem id 1 e 5
SELECT * 
FROM Turmas
where id_curso NOT IN (1, 5)

-- Ano de nascimento dos Alunos
SELECT DATEPART(YEAR, a.data_nascimento) Ano
FROM Alunos a
ORDER BY 1 ASC

SELECT DATEPART(YEAR, a.data_nascimento) Ano
FROM Alunos a
ORDER BY 1 DESC

-- DISTINCT (NAO MOSTRA VALORES REPETIDOS, SO MOSTRA UMA VEZ)
SELECT DISTINCT DATEPART(YEAR, a.data_nascimento) Ano
FROM Alunos a
ORDER BY 1 ASC