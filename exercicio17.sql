CREATE DATABASE armazenamento;
USE armazenamento;

CREATE TABLE produtos (
produtoID INT PRIMARY KEY,
cod_prod  INT NOT NULL,
valor_unit FLOAT NOT NULL,
quantidade INT NOT NULL,
desconto INT
);

INSERT INTO produtos
VALUES
(1, 5, 30.00, 10, 15),
(2, 4, 10.00, 12, 5),
(3, 1, 25.00, 13, 5),
(4, 2, 13.50, 15, 5),
(5, 3, 15.00, 3, null),
(6, 5, 30.00, 6, null),
(7, 1, 25.00, 22, 15),
(8, 3, 15.00, 25, 20),
(9, 1, 25.00, 10, 3),
(10, 2, 13.50, 10, 4),
(11, 3, 15.00, 10, 4),
(12, 5, 30.00, 10, 1);

SELECT * FROM produtos
