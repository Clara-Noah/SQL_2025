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
    region = "novo_mexico",
    country = "estados_unidos"
    WHERE costumerID = 1;
    
UPDATE costumers
SET contactname = 912120321,
    region = "paris",
    country = "frança"
    WHERE costumerID = 2;
    
UPDATE costumers
SET contactname = 912005521,
    region = "lisboa",
    country = "portugal"
    WHERE costumerID = 3;
    
    UPDATE costumers
SET contactname = 912075321,
    region = "rio_de_janeiro",
    country = "brasil"
    WHERE costumerID = 4;


-- 2.1 pessoas que são do mexico
SELECT companyname,region,country
FROM costumers
WHERE country = "mexico";

-- 2.2 mostrar costumersID, companyname, contacname, region por ordem alfabetica e região
SELECT costumersID, companyname, contacname, region
FROM costumers
ORDER BY region ASC;

-- 3
CREATE TABLE produtos
(categoryID INT,
productID INT PRIMARY KEY,
productsname VARCHAR(20),
suplierID INT,
unitinstock INT
);

INSERT INTO produtos
VALUES 
(1,1010,"banana",100,3115),
(2,1011,"pera",101,2005),
(3,1012,"ananas",108,3165),
(4,1013,"cebola",98,3406);

SELECT productsname FROM produtos
WHERE categoryID = 1 AND unitinstock > 0;

SELECT* FROM produtos
ORDER BY unitinstock DESC;

-- exercicio 4

CREATE TABLE encomendas
(orderID INT PRIMARY KEY,
quantity INT,
productID INT,
FOREIGN KEY(productID) REFERENCES produtos(productID)
);

INSERT INTO encomendas
VALUES
(10, 200, 1010),
(21, 100, 1011),
(5, 150, 1012);

SELECT productID, quantity 
FROM encomendas
where orderID IN (10, 21, 5);


