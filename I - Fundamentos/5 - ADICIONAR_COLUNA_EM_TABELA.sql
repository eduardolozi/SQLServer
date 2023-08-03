select * from Alunos

INSERT INTO Alunos
(id_aluno, nome, data_nascimento, sexo)
VALUES
('2', 'Alan Moraes', '23/08/1999', 'M');

INSERT INTO Alunos
(id_aluno, nome, data_nascimento, sexo)
VALUES
('3', 'Alessandro Soares', '04/01/1999', 'M');

INSERT INTO Alunos
(id_aluno, nome, data_nascimento, sexo)
VALUES
('4', 'Abigail Elias', '10/01/1998', 'F');

INSERT INTO Alunos
(id_aluno, nome, data_nascimento, sexo)
VALUES
('5', 'Ana Saraiva', '27/06/1999', 'F');

INSERT INTO Alunos
(id_aluno, nome, data_nascimento, sexo)
VALUES
('6', 'Hugo Leonardo', '10/04/2002', 'M');

INSERT INTO Alunos
(id_aluno, nome, data_nascimento, sexo)
VALUES
('7', 'Icaro Cherednikov', '30/07/2003', 'M')

INSERT INTO Alunos
(id_aluno, nome, data_nascimento, sexo)
VALUES
('8', 'Juan Alejandro', '13/11/1999', 'M');

INSERT INTO Alunos
(id_aluno, nome, data_nascimento, sexo)
VALUES
('9', 'Alessandra Yoshie', '09/11/1999', 'F');

INSERT INTO Alunos
(id_aluno, nome, data_nascimento, sexo)
VALUES
('10', 'Gilmara Ruggeri', '30/04/1989', 'F');

INSERT INTO Alunos
(id_aluno, nome, data_nascimento, sexo)
VALUES
('11', 'Jessica Silva', '05/05/1993', 'F');

INSERT INTO Alunos
(id_aluno, nome, data_nascimento, sexo)
VALUES
('12', 'Daniel Oliveira', '10/01/2000', 'M')

select * from Cursos 

INSERT INTO Cursos
(id_curso, nome_curso)
VALUES
('2', 'VBA I')

INSERT INTO Cursos
(id_curso, nome_curso)
VALUES
('3', 'VBA II')

INSERT INTO Cursos
(id_curso, nome_curso)
VALUES
('4', 'Excel Básico')

INSERT INTO Cursos
(id_curso, nome_curso)
VALUES
('5', 'Excel Avançado')

INSERT INTO Cursos
(id_curso, nome_curso)
VALUES
('6', 'Word')

INSERT INTO Cursos
(id_curso, nome_curso)
VALUES
('7', 'Power Point')

INSERT INTO Cursos
(id_curso, nome_curso)
VALUES
('8', 'Access')

INSERT INTO Cursos
(id_curso, nome_curso)
VALUES
('9', 'Pacote Office Completo')

-- Aqui eu apaguei a coluna data_cadastro pq ela era not null, entao depois eu criei uma nova coluna que pudesse ser nula
ALTER TABLE Turmas
DROP COLUMN data_cadastro

ALTER TABLE Turmas
	ADD data_cadastro datetime NULL
-------------------------------------------------------------------------------------------------------------------------

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino)
VALUES
(1, 1, '17/11/2019', '27/12/2019')

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino)
VALUES
(2, 1, '13/02/2020', '24/03/2020')

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino)
VALUES
(3, 4, '02/03/2019', '02/04/2019')

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino)
VALUES
(4, 4, '02/07/2019', '23/07/2019')

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino)
VALUES
(5, 9, '02/09/2019', '15/09/2019')

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino)
VALUES
(6, 9, '03/02/2019', '16/02/2019')

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino)
VALUES
(7, 9, '13/02/2020', '24/03/2020')

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino)
VALUES
(8, 6, '18/04/2020', '02/06/2020')

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino)
VALUES
(9, 6, '23/02/2020', '08/04/2020')

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino)
VALUES
(10, 6, '12/06/2020', '27/07/2020')

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino)
VALUES
(11, 6, '06/08/2020', '20/09/2020')

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino)
VALUES
(12, 5, '21/10/2019', '05/12/2019')

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino)
VALUES
(13, 5, '15/12/2019', '09/03/2020')

INSERT INTO Turmas
(id_turma, id_curso, data_inicio, data_termino)
VALUES
(14, 1, '01/01/2020', '10/02/2020')

-- INSERINDO NA TABELA ALUNOSXTURMAS
ALTER TABLE AlunosxTurmas
DROP COLUMN data_cadastro, login_cadastro

ALTER TABLE AlunosxTurmas
ADD data_cadastro datetime, login_cadastro varchar(15)

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, desconto)
VALUES
(1,10, 1100, 0)

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, desconto)
VALUES
(6,12, 2000, 0)

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, desconto)
VALUES
(6, 10, 1000, 0.5)

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, desconto)
VALUES
(6, 8, 400, 0.8)

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, desconto)
VALUES
(6, 7, 500, 0.75)

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, desconto)
VALUES
(6, 3, 2000, 0)

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, desconto)
VALUES
(10, 1, 1400, 0)

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, desconto)
VALUES
(10, 11, 700, 0.5)

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, desconto)
VALUES
(10, 9, 980, 0.3)

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, desconto)
VALUES
(4, 2, 1600, 0)

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, desconto)
VALUES
(3, 11, 1000, 0.6)

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, desconto)
VALUES
(14, 5, 2600, 0)

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, desconto)
VALUES
(3, 5, 2500, 0)

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, desconto)
VALUES
(7, 12, 520, 0.6)

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, desconto)
VALUES
(10, 4, 1400, 0)

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, desconto)
VALUES
(1, 6, 550, 0.5)

INSERT INTO AlunosxTurmas
(id_turma, id_aluno, valor, desconto)
VALUES
(2, 8, 500, 0)