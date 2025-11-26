CREATE DATABASE nortwind;
USE nortwind;

CREATE TABLE costumers 
(costumersID INT PRIMARY KEY,
companyname VARCHAR (20)
);

INSERT INTO costumers
VALUES
(1, "ana"),
(2, "lucas"),
(3, "beatriz"); 

-- pergunta 1
-- ordenhar por ordem alfabetica

SELECT costumersID, companyname
FROM costumers
ORDER BY companyname ASC;

-- pergunta 2

ALTER TABLE costumers
ADD contactname INT,
ADD region VARCHAR(20),
ADD country VARCHAR(20);

INSERT INTO costumers
VALUES
(4, "manuel", null, null, null);

UPDATE costumers
SET contactname = 912000321,
    region = "paris",
    country = "frança"
    WHERE costumerID = 1;
-- estavamos a corrigir este erro no final da aula de segunda-feira e não acabados de corrigir nessa aula
-- eu faltei na quarta, o ultimo dia para fazer
-- desculpe por ficar a meio

(912000321, "paris", "frança"),
(912120321, "novo_mexico", "estados_unidos"),
(912005521, "cidade_do_mexico", "mexico"),
(912075321, "lisboa", "portugal");


-- 2.1 pessoas que são do mexico
SELECT companyname,region,country
FROM costumers
WHERE country = "mexico";

-- 2.2 mostrar costumersID, companyname, contacname, region por ordem alfabetica e região
SELECT costumersID, companyname, contacname, region
FROM costumers
ORDER BY region ASC;

-- 3
CREATE TABLE armazenamento
(products VARCHAR(20),
categoryID INT,
productID INT PRIMARY KEY,
productsname VARCHAR(20),

);