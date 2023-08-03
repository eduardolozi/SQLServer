-- Funçaõ de agregação SUM

-- Ganho com turmas
SELECT t.id_turma, c.nome_curso, ROUND(SUM(at.valor), 2) Ganho 
FROM Turmas t
INNER JOIN Cursos c
	ON c.id_curso = t.id_curso
INNER JOIN AlunosxTurmas at
	ON at.id_turma = t.id_turma
GROUP BY t.id_turma, c.nome_curso

-- Ganhos por ano
SELECT YEAR(t.data_inicio) Ano, ROUND(SUM(at.valor), 2) Ganho 
FROM Turmas t
INNER JOIN Cursos c
	ON c.id_curso = t.id_curso
INNER JOIN AlunosxTurmas at
	ON at.id_turma = t.id_turma
GROUP BY YEAR(t.data_inicio)