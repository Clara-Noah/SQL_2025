CREATE DATABASE Itau;

USE Itau;

CREATE TABLE nacionalidades (
    paisID INT PRIMARY KEY,
    nomePais VARCHAR(20),
    totalDinheiro INT,
    funcionarioID INT
);


INSERT INTO nacionalidades
VALUES (1, 'Brasil', 10000, 9), (2, 'Portugal', 3000, 8), (3, 'Angola', 1000, 7), (4, 'Singapura', 8000, 6);

CREATE TABLE funcionario (
    funcionarioID INT PRIMARY KEY,
    nomeFuncionario VARCHAR(20),
    idadeFuncionario INT,
    paisID INT,
    FOREIGN KEY (paisID) REFERENCES nacionalidades(paisID)
);

INSERT INTO funcionario
VALUES (9, 'Gabriel', 18, 1), (8, 'Clara', 92, 2), (7, 'Mário', 65, 3), (6, 'Karine', 24, 4);

CREATE TABLE cliente (
    clienteID INT PRIMARY KEY,
    nomeCliente VARCHAR(20),
    idadeCliente INT,
    funcionarioID INT,
    FOREIGN KEY (funcionarioID) REFERENCES funcionario(funcionarioID), -- "AS atendidoPor" --
    paisID INT,
    FOREIGN KEY (paisID) REFERENCES nacionalidades(paisID)
);

INSERT INTO cliente
VALUES (10, 'Ricardo', 23, 9, 1), (11, 'Joana', 26, 9, 2), (12, 'Maria', 23, 8, 3), (13, 'Luigi', 45, 6, 4);

SELECT * FROM nacionalidades;
SELECT * FROM funcionario;
SELECT * FROM cliente;

SELECT n.paisID AS paisID,  f.funcionarioID
FROM nacionalidades n
INNER JOIN funcionario f
ON n.paisID = f.paisID;

/* 
SELECT n.paisID AS paisID, n.nomePais, n.totalDinheiro,
       f.funcionarioID, f.nomeFuncionario, f.idadeFuncionario
FROM nacionalidades n
INNER JOIN funcionario f
  ON n.paisID = f.paisID;
  */