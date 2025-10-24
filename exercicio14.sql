CREATE DATABASE portugal;
USE portugal;
CREATE TABLE cidades (
Nome_cidades VARCHAR(20) NOT NULL,
codigo_postal INT NOT NULL,
cidadesID INT PRIMARY KEY
);

INSERT INTO cidades
VALUES
("Lisboa", 1000, 5386),
("Porto", 4150, 5328),
("Vila_Nova_de_Gaia", 4430, 9986),
("Amadora", 1500, 5456),
("Braga", 4700, 9452),
("Funchal", 9000, 9931),
("Coimbra", 3030, 0035),
("Setubal", 2900, 3309),
("Almada", 2800, 7734),
("Algava_cacem", 2735, 1156),
("Queluz", 2605, 8843),
("Guimaraes", 4800, 9355),
("Rio_tinto", 4436, 8837),
("Barreiro", 2830, 0022),
("Leiria", 2400, 8800),
("Odivelas", 1675, 1667),
("Viseu", 3500, 4451),
("Aveiro", 3800, 1198),
("Povoa_da_varzim", 4480, 2267);

SELECT * from cidades;