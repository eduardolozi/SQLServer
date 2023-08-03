-- UNION E UNION ALL
-- UNION(DISTINCT)
-- UNION ALL(NOT DISTINCT)
-- Serve para fazer mais de uma consulta aparecer na mesma tabela, ou seja, se duas consultas forem feitas, nao aparecerão duas views diferentes.

-- UNION
SELECT a.nome, FORMAT(a.data_nascimento, 'd', 'pt-br') Data_Nascimento
FROM Alunos a
Where YEAR(a.data_nascimento) > 2000

UNION

SELECT a.nome, FORMAT(a.data_nascimento, 'd', 'pt-br') Data_Nascimento
FROM Alunos a
Where YEAR(a.data_nascimento) < 1990

ORDER BY FORMAT(a.data_nascimento, 'd', 'pt-br')