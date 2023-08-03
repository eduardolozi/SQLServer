-- O DROP SEGUE O PADRÃO: DROP (OBJETO) (NOME_OBJETO)
-- EX: DROP DATABASE nome_da_db

-- APAGAR TABELAS
select *
	into tbDelete 
	from cursos
select * from sys.tables

DROP TABLE tbDelete

-- APAGAR SEQUENCES
select * from sys.sequences
CREATE SEQUENCE seq_delete
DROP SEQUENCE seq_delete

-- APAGAR CONSTRAINTS
SELECT *
	INTO tb_constraint
	FROM AlunosxTurmas 

ALTER TABLE tb_constraint
ADD CONSTRAINT pk_idaluno FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno)

ALTER TABLE tb_constraint
DROP CONSTRAINT pk_idaluno

 