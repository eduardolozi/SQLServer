-- DELETE

SELECT *
INTO tbDELETE
FROM Cursos

DELETE FROM dbo.tbDELETE

SELECT * FROM tbDELETE
--DROP TABLE tbDELETE

SELECT * FROM Cursos
DELETE FROM dbo.tbDELETE
WHERE nome_curso like '%vba%'

-- USANDO SELECT DENTRO DO WHERE PARA DELETAR
SELECT *
INTO AlunosTemp
FROM Alunos

DELETE FROM AlunosTemp
WHERE id_aluno NOT IN
(
	SELECT a.id_aluno
	FROM AlunosTemp a
	INNER JOIN AlunosxTurmas at
		ON at.id_aluno = a.id_aluno
)

select * from AlunosTemp
select * from Alunos
--DROP TABLE AlunosTemp

-- Apagar todos os registros de alunos que tenham mais de 30 anos
DELETE FROM AlunosTemp
WHERE DATEDIFF(YEAR, data_nascimento, GETDATE()) > 30

