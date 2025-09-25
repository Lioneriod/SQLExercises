-- O basico neah
CREATE DATABASE exerciciosSQL;

USE exerciciosSQL;

CREATE TABLE
  funcionarios (
    idFuncionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100),
    cargo VARCHAR(100),
    salario DECIMAL(10, 2),
    dataNascimento DATE,
    cidade VARCHAR(100),
    idDepartamento INT,
    FOREIGN KEY (idDepartamento) REFERENCES departamentos (idDepartamento)
  )
CREATE TABLE
  departamentos (
    idDepartamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
  );

-- 1
INSERT INTO
  departamentos (nome)
VALUES
  ('Design Gráfico'),
  ('Call Center'),
  ('TI');

-- 2
INSERT INTO
  funcionarios (
    nome,
    sobrenome,
    cargo,
    salario,
    dataNascimento,
    cidade,
    idDepartamento
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
    'Gerente',
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

-- 3
DELETE FROM funcionarios
WHERE
  idFuncionario IN (11, 12);

-- 4
DELETE FROM funcionarios
WHERE
  idDepartamento = 1
  AND idFuncionario = 3;

-- 5
UPDATE funcionarios
SET
  salario = salario * 1.05;

-- 6 
UPDATE funcionarios
SET
  salario = salario * 1.02
WHERE
  cargo = 'Gerente';

-- 7
SELECT
  *
FROM
  departamentos;

-- 8 
SELECT
  *
FROM
  funcionarios;

-- 9
SELECT
  nome,
  sobrenome
FROM
  funcionarios
WHERE
  cargo = 'Gerente';

-- 10
SELECT
  nome,
  sobrenome,
  dataNascimento
FROM
  funcionarios
WHERE
  MONTH (dataNascimento) = MONTH (CURDATE ());

-- 11
SELECT
  *
FROM
  funcionarios
WHERE
  cidade = 'Fortaleza';

-- 12 NÃOOO EU NÃO QUERO :'(
DELETE FROM funcionarios;

DELETE FROM departamentos;