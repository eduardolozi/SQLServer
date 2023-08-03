-- CRIANDO UMA SEQUENCE PARA ARMAZENAR E AUTOINCREMENTAR OS ID DAS TABELAS

SELECT MAX(id_aluno)
FROM Alunos

-- INSERT USANDO O NOME DAS COLUNAS
CREATE SEQUENCE seq_idAluno
	START WITH 13
	INCREMENT BY 1

INSERT INTO Alunos (id_aluno, nome, data_nascimento, sexo, data_cadastro, login_cadastro)
VALUES (NEXT VALUE FOR seq_idAluno, 'Alessandro Trovato Andrade', '11/11/1972', 'M', GETDATE(), 'EDUAR')

CREATE SEQUENCE seq_idCurso
	START WITH 10
	INCREMENT BY 1

INSERT INTO Cursos(id_curso, nome_curso, data_cadastro, login_cadastro)
VALUES (NEXT VALUE FOR seq_idCurso, 'C# com SQL Server', GETDATE(), 'EDUAR')

-- INSERT COM A CRIAÇÃO DE UMA NOVA TABELA (CRIA UMA TABELA IGUAL A QUE ESTA SENDO ATRIBUIDA NO FROM)
SELECT *
INTO NovaTabela
FROM Cursos

SELECT * FROM NovaTabela
--DROP TABLE NovaTabela

-- INSERT COM SELECT
DELETE FROM NovaTabela -- Deleta os campos da tabela, mas nao remove a tabela

INSERT INTO NovaTabela (id_curso, nome_curso, data_cadastro, login_cadastro)
SELECT id_curso, nome_curso, GETDATE(), 'LOZANO'
FROM Cursos
WHERE id_curso > 5