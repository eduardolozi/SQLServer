-- FUNÇÕES DE AGREGAÇAO


-- SUM
SELECT c.nome_curso, SUM(at.valor) Total
FROM AlunosxTurmas at
INNER JOIN Turmas t
	ON t.id_turma = at.id_turma
INNER JOIN Cursos c
	ON c.id_curso = t.id_curso
GROUP BY c.nome_curso

-- AVG (media)
SELECT c.nome_curso, AVG(at.valor) Total
FROM AlunosxTurmas at
INNER JOIN Turmas t
	ON t.id_turma = at.id_turma
INNER JOIN Cursos c
	ON c.id_curso = t.id_curso
GROUP BY c.nome_curso

-- MAX
-- Selecionando qual é o maior valor pago por cada turma
SELECT c.nome_curso, MAX(at.valor) Total
FROM AlunosxTurmas at
INNER JOIN Turmas t
	ON t.id_turma = at.id_turma
INNER JOIN Cursos c
	ON c.id_curso = t.id_curso
GROUP BY c.nome_curso

-- MIN
-- Selecionando qual é o minimo valor pago por cada turma
SELECT c.nome_curso, MIN(at.valor) Total
FROM AlunosxTurmas at
INNER JOIN Turmas t
	ON t.id_turma = at.id_turma
INNER JOIN Cursos c
	ON c.id_curso = t.id_curso
GROUP BY c.nome_curso

-- Selecionando os maiores e menores valores por curso
SELECT c.nome_curso, Max(at.valor) "Maior valor", Min(at.valor) "Menor Valor"
FROM AlunosxTurmas at
INNER JOIN Turmas t
	ON t.id_turma = at.id_turma
INNER JOIN Cursos c
	ON c.id_curso = t.id_curso
GROUP BY c.nome_curso