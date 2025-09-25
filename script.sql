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