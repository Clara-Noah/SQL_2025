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

SELECT * from reservas;
