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
    'Diretora criativa',
    4000.00,
    '1999-04-05',
    'Meu coração',
    1
  ),
  (
    'Apollo',
    'Lou',
    'Professor de inglês',
    1500.00,
    '2005-04-27',
    'Fortaleza',
    1
  ),
  (
    'Ana',
    'Silva',
    3000.00,
    'Analista',
    '1990-05-10',
    'Fortaleza',
    1
  ),
  (
    'Carlos',
    'Pereira',
    3200.00,
    'Gerente',
    '1985-03-22',
    'Fortaleza',
    1
  ),
  -- Call Center - 2
  (
    'Maria Eduarda',
    'Bivar',
    'Borderlinda',
    2000.00,
    '1999-03-11',
    'Fortaleza',
    2
  ),
  (
    'Paulo',
    'Mendes',
    2500.00,
    'Analista',
    '1995-08-12',
    'Fortaleza',
    2
  ),
  (
    'Clara',
    'Costa',
    2700.00,
    'Assistente',
    '1991-12-01',
    'Fortaleza',
    2
  ),
  (
    'Rafael',
    'Santos',
    3300.00,
    'Coordenador',
    '1987-02-14',
    'Fortaleza',
    2
  ),
  -- TI - 3
  (
    'Leonardo',
    'Lima',
    'C++er',
    0.00,
    '1998-06-25',
    'Fortaleza',
    3
  ),
  (
    'Ana Beatriz',
    'Vidal',
    'Javer',
    0.00,
    '2005-11-18',
    'Fortaleza',
    3
  ),
  (
    'Juliana',
    'Ferreira',
    2600.00,
    'Assistente',
    '1996-01-18',
    'Fortaleza',
    3
  ),
  (
    'Bruno',
    'Rodrigues',
    3100.00,
    'Coordenador',
    '1989-09-09',
    'Fortaleza',
    3
  );