CREATE DATABASE IF NOT EXISTS professor_schema;

use professor_schema;

-- Dimensão Professor
CREATE TABLE IF NOT EXISTS Dim_Professor (
    ID_Professor INT PRIMARY KEY,
    Nome_Professor VARCHAR(100),
    Titulacao VARCHAR(50),
    Anos_Experiencia INT,
    Sexo CHAR(1)
);

-- Dimensão Curso
CREATE TABLE IF NOT EXISTS Dim_Curso (
    ID_Curso INT PRIMARY KEY,
    Nome_Curso VARCHAR(100),
    Categoria_Curso VARCHAR(50),
    Carga_Horaria INT,
    Nivel_Curso VARCHAR(50) -- Exemplo: Graduação, Pós-graduação, etc.
);

-- Dimensão Departamento
CREATE TABLE IF NOT EXISTS Dim_Departamento (
    ID_Departamento INT PRIMARY KEY,
    Nome_Departamento VARCHAR(100),
    Localizacao VARCHAR(100),
    Chefe_Departamento VARCHAR(100)
);

-- Dimensão Data
CREATE TABLE IF NOT EXISTS Dim_Data (
    ID_Data INT PRIMARY KEY,
    Data DATE,
    Ano INT,
    Mes INT,
    Dia INT,
    Trimestre INT,
    Semestre INT,
    Dia_Semana VARCHAR(10),
    Dia_Do_Ano INT,
    Semana_Do_Ano INT
);

-- Tabela Fato: Fato_Professor
CREATE TABLE IF NOT EXISTS Fato_Professor (
    ID_Fato_Professor INT PRIMARY KEY,
    ID_Professor INT,
    ID_Curso INT,
    ID_Departamento INT,
    ID_Data_Oferta INT,
    Numero_Alunos INT,
    Avaliacao_Professor FLOAT,
    Quantidade_Aulas INT,
    Receita_Gerada DECIMAL(15, 2),
    FOREIGN KEY (ID_Professor) REFERENCES Dim_Professor(ID_Professor),
    FOREIGN KEY (ID_Curso) REFERENCES Dim_Curso(ID_Curso),
    FOREIGN KEY (ID_Departamento) REFERENCES Dim_Departamento(ID_Departamento),
    FOREIGN KEY (ID_Data_Oferta) REFERENCES Dim_Data(ID_Data)
);
