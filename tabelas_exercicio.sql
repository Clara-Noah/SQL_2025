create DATABASE  marinha;
USE marinha;

CREATE TABLE marinheiro (
num_marinheiro INT PRIMARY KEY,
nome_marinheiro VARCHAR(20),
grau INT,
idade INT
);

INSERT INTO marinheiro
VALUES
(001, 'paulo', 5, 36),
(002, 'luis', 8, 27),
(003, 'marco', 6, 35),
(004, 'rafael', 10, 45),
(005, 'henrique', 7, 35),
(006, 'manuel', 10, 46);

CREATE TABLE barco (
num_barco INT PRIMARY KEY,
nome_barco VARCHAR(20),
cor VARCHAR(20)
);

INSERT INTO barco
VALUES
(100, 'lua', 'branco'),
(200, 'interlago', 'verde'),
(300, 'sol', 'amarelo'),
(400, 'terra', 'castanho'),
(500, 'saturno', 'azul'),
(600, 'jupiter', 'vermelho');

CREATE TABLE reservas (
num_barco INT,
num_marinheiro INT,
data_reserva DATE,
 PRIMARY KEY (num_barco, num_marinheiro, data_reserva),

    FOREIGN KEY (num_barco)
        REFERENCES barco(num_barco),

    FOREIGN KEY (num_marinheiro)
        REFERENCES marinheiro(num_marinheiro)
);

INSERT INTO reservas
VALUES
(100, 1, '2000-01-01'),
(200, 1, '2000-02-05'),
(100, 5, '2000-02-05'),
(400, 3, '2000-05-17'),
(600, 6, '2000-03-15'),
(500, 4, '2000-08-20');

-- 1. Encontre os marinheiros que reservaram o barco 100.
SELECT m.*
FROM marinheiro m
JOIN reservas r ON m.num_marinheiro = r.num_marinheiro
WHERE r.num_barco = 100;


-- 2. Encontre os nomes dos marinheiros que reservaram um barco vermelho.
SELECT DISTINCT m.nome_marinheiro
FROM marinheiro m
JOIN reservas r ON m.num_marinheiro = r.num_marinheiro
JOIN barco b ON r.num_barco = b.num_barco
WHERE b.cor = 'vermelho';


-- 3. Encontre as cores dos barcos reservados pelo Manuel.
SELECT DISTINCT b.cor
FROM barco b
JOIN reservas r ON b.num_barco = r.num_barco
JOIN marinheiro m ON r.num_marinheiro = m.num_marinheiro
WHERE m.nome_marinheiro = 'manuel';


-- 4. Encontre os nomes dos marinheiros que reservaram pelo menos um barco.
SELECT DISTINCT m.nome_marinheiro
FROM marinheiro m
JOIN reservas r ON m.num_marinheiro = r.num_marinheiro;


-- 5. Encontre os nomes dos marinheiros que reservaram um barco vermelho ou verde.
SELECT DISTINCT m.nome_marinheiro
FROM marinheiro m
JOIN reservas r ON m.num_marinheiro = r.num_marinheiro
JOIN barco b ON r.num_barco = b.num_barco
WHERE b.cor IN ('vermelho', 'verde');


-- 6. Encontre os nomes dos marinheiros que reservaram um barco vermelho e verde.
SELECT m.nome_marinheiro
FROM marinheiro m
JOIN reservas r ON m.num_marinheiro = r.num_marinheiro
JOIN barco b ON r.num_barco = b.num_barco
WHERE b.cor IN ('vermelho', 'verde')
GROUP BY m.num_marinheiro, m.nome_marinheiro
HAVING COUNT(DISTINCT b.cor) = 2;


-- 7. Encontre os nomes dos marinheiros que reservaram pelo menos dois barcos.
SELECT m.nome_marinheiro
FROM marinheiro m
JOIN reservas r ON m.num_marinheiro = r.num_marinheiro
GROUP BY m.num_marinheiro, m.nome_marinheiro
HAVING COUNT(DISTINCT r.num_barco) >= 2;


-- 8. Encontre os num_marinheiro com idade superior a 20 anos
--    que não tenham reservado um barco vermelho.
SELECT m.num_marinheiro
FROM marinheiro m
WHERE m.idade > 20
AND m.num_marinheiro NOT IN (
    SELECT r.num_marinheiro
    FROM reservas r
    JOIN barco b ON r.num_barco = b.num_barco
    WHERE b.cor = 'vermelho'
);


-- 9. Encontre os nomes dos marinheiros que reservaram todos os barcos.
SELECT m.nome_marinheiro
FROM marinheiro m
JOIN reservas r ON m.num_marinheiro = r.num_marinheiro
GROUP BY m.num_marinheiro, m.nome_marinheiro
HAVING COUNT(DISTINCT r.num_barco) = (
    SELECT COUNT(*)
    FROM barco
);


-- 10. Encontre os nomes dos marinheiros que reservaram o barco Interlago.
SELECT DISTINCT m.nome_marinheiro
FROM marinheiro m
JOIN reservas r ON m.num_marinheiro = r.num_marinheiro
JOIN barco b ON r.num_barco = b.num_barco
WHERE b.nome_barco = 'interlago';
