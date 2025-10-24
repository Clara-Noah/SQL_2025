CREATE DATABASE armazenamento;
USE armazenamento;


CREATE TABLE produtos (
produtoID INT PRIMARY KEY,
cod_prod  INT NOT NULL,
valor_unit FLOAT NOT NULL,
quantidade INT NOT NULL,
desconto INT
);

SELECT * FROM produtos
