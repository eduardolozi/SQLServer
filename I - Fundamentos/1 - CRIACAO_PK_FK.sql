CREATE TABLE Alunos
(
	id_aluno int PRIMARY KEY NOT NULL,
	nome varchar(200),
	data_nascimento date,
	sexo varchar(1),
	data_cadastro datetime,
	login_cadastro varchar(15)
);

CREATE TABLE Situacao
(
	id_situacao int PRIMARY KEY NOT NULL,
	situacao varchar(25) NOT NULL,
	data_Cadastro datetime,
	login_cadastro varchar(15)
);

CREATE TABLE Cursos 
(
	id_curso int PRIMARY KEY NOT NULL,
	nome_curso varchar(200) NOT NULL,
	data_cadastro datetime,
	login_cadastro varchar(15)
);

CREATE TABLE Turmas 
(
	id_turma int PRIMARY KEY NOT NULL,
	id_aluno int NOT NULL,
	id_curso int NOT NULL,
	valor_turma numeric(15, 2) NOT NULL,
	desconto numeric(3,2) NOT NULL,
	data_inicio date NOT NULL,
	data_termino date NOT NULL,
	data_cadastro datetime NOT NULL,
	login_cadastro varchar(15)
);

CREATE TABLE Registro_Presenca
(
	id_turma int NOT NULL,
	id_aluno int NOT NULL,
	id_situacao int NOT NULL,
	data_presenca date NOT NULL,
	data_cadastro date NOT NULL,
	login_cadastro varchar(15) NOT NULL
);

-- TURMAS X ALUNOS
ALTER TABLE Turmas
	ADD CONSTRAINT fk_TurmasAlunos FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno);

-- TURMAS X CURSOS
ALTER TABLE Turmas
	ADD CONSTRAINT fk_TurmasCursos FOREIGN KEY (id_curso) REFERENCES Cursos (id_curso);

-- RP X TURMAS
ALTER TABLE Registro_Presenca
	ADD CONSTRAINT fk_RPTurmas FOREIGN KEY (id_turma) REFERENCES Turmas (id_turma);

-- RP X ALUNOS
ALTER TABLE Registro_Presenca
	ADD CONSTRAINT fk_RPAlunos FOREIGN KEY (id_aluno) REFERENCES Alunos (id_aluno);

-- RP X SITUACAO
ALTER TABLE Registro_Presenca
	ADD CONSTRAINT fk_RPSituacao FOREIGN KEY (id_situacao) REFERENCES Situacao (id_situacao);