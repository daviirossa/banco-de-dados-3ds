-- No SQLite, não usamos CREATE DATABASE. 
-- O arquivo é criado automaticamente pela ferramenta/aplicação.

-- 1. Criar a tabela de Alunos
CREATE TABLE alunos (
    id_aluno INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    data_nascimento TEXT,
    cpf TEXT UNIQUE,
    email TEXT
);

-- 2. Criar a tabela de Professores
CREATE TABLE professores (
    id_professor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    especialidade TEXT,
    email TEXT
);

-- 3. Criar a tabela de Disciplinas
CREATE TABLE disciplinas (
    id_disciplina INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_disciplina TEXT NOT NULL,
    carga_horaria INTEGER
);

-- 4. Criar a tabela de Turmas
CREATE TABLE turmas (
    id_turma INTEGER PRIMARY KEY AUTOINCREMENT,
    id_professor INTEGER,
    id_disciplina INTEGER,
    ano_letivo INTEGER,
    FOREIGN KEY (id_professor) REFERENCES professores(id_professor),
    FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina)
);

-- 5. Tabela de Matrícula
CREATE TABLE matriculas (
    id_aluno INTEGER,
    id_turma INTEGER,
    data_matricula TEXT,
    PRIMARY KEY (id_aluno, id_turma),
    FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turmas(id_turma)
);
