CREATE DATABASE exerciciosSQL;

USE exerciciosSQL;

CREATE TABLE
  funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100),
    cargo VARCHAR(100),
    salario DECIMAL(10, 2),
    data_nascimento DATE,
    cidade VARCHAR(100),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamentos (id_departamento)
  )
CREATE TABLE
  departamentos (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
  );

INSERT INTO
  departamentos (nome)
VALUES
  ('Design Gráfico'),
  ('Call Center'),
  ('TI');

INSERT INTO
  funcionarios (
    nome,
    sobrenome,
    cargo,
    salario,
    data_nascimento,
    cidade,
    id_departamento
  )
  -- Design Gráfico - 1
VALUES
  (
    'Ellen',
    'Maria',
    'Diretora Criativa',
    4000.00,
    '1999-04-05',
    'Meu coração',
    1
  ),
  ('', 'Fortaleza', 1),
  ('Fortaleza', 1),
  ('Fortaleza', 1),
  -- Call Center - 2
  ('Fortaleza', 2),
  (
    'Maria Eduarda',
    'Bivar',
    'Borderlinda',
    2000.00,
    '1999-03-11',
    'Fortaleza',
    2
  ),
  ('Fortaleza', 2),
  ('Fortaleza', 2),
  -- TI - 3
  (
    'Leonardo',
    'Lima',
    'Estagiário',
    2000.00,
    '1998-06-25',
    'Fortaleza',
    3
  ),
  ('Fortaleza', 3),
  ('Fortaleza', 3),
  ('Fortaleza', 3);