INSERT INTO Alunos
(id_aluno, nome, sexo, data_nascimento, data_cadastro, login_cadastro)
VALUES
(1,'Eduardo Lozano Azevedo','M','03/04/2002','25/07/2023 22:56:00', 'EDUAR');

SELECT * FROM Alunos;

INSERT INTO Cursos
(id_curso, nome_curso, data_cadastro, login_cadastro)
VALUES
(1, 'INTENSIVÃO JAVA SPRING BOOT','20/09/2022 12:00:00', 'EDUAR');

SELECT * FROM Cursos;

INSERT INTO Situacao
(id_situacao, situacao, data_Cadastro, login_cadastro)
VALUES
(1, 'PRESENÇA CONFIRMADA', '23/08/2021 09:40:00', 'EDUAR');

INSERT INTO Situacao
(id_situacao, situacao, data_Cadastro, login_cadastro)
VALUES
(2, 'AUSENTE COM JUSTIFICATIVA', '23/08/2021 09:40:00', 'EDUAR');

INSERT INTO Situacao
(id_situacao, situacao, data_Cadastro, login_cadastro)
VALUES
(3, 'AUSENTE SEM JUSTIFICATIVA', '23/08/2021 09:40:00', 'EDUAR');

SELECT * FROM Situacao;