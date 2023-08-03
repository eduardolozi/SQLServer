-- ALTER TABLE: Utilizado para adicionar, deletar ou modificar colunas de uma tabela

SELECT *
	INTO tTEMP
	FROM Alunos

exec sp_columns tTEMP

-- ADICIONAR COLUNA
ALTER TABLE tTEMP
ADD cpf varchar(15)

ALTER TABLE tTEMP
ADD email varchar(50)

--DELETAR COLUNA
ALTER TABLE tTEMP
DROP COLUMN email

--ALTERAR TIPO DE DADOS DE UMA COLUNA
ALTER TABLE tTEMP
ALTER COLUMN cpf NUMERIC(11)
/* QUANDO QUISER TROCAR O TIPO DE UMA COLUNA NO MEIO DO PROJETO, UMA COISA QUE PODEMOS FAZER � CRIAR UMA NOVA COLUNA TEMPORARIA, PASSAR OS VALORES CONVERTENDO ELES PARA O NOVO TIPO NA COLUNA TEMPORARIA,
E DEPOIS PASSAR ESSA COLUNA TEMPORARIA PARA A ORIGINAL*/

-- --------------------------------------------------------
-- UPDATE
UPDATE tTEMP
SET sexo = 'M'
WHERE sexo = 'F'

UPDATE tTEMP
SET sexo = 'F'
WHERE id_aluno IN (4, 5, 9, 10, 11)

UPDATE tTEMP
SET login_cadastro = 'EDUAR'
WHERE data_cadastro is NULL

SELECT * from tTEMP