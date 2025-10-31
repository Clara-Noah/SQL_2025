USE portugal;

-- 2 Alterar o nome da tabela
RENAME TABLE cidades TO codigo_postal;

-- 3 examinar base de dados
SELECT * FROM codigo_postal;

-- 4 renomear coluna
ALTER TABLE cidades RENAME COLUMN Area TO AreaKm2;

-- 5 calcular o AreaKm2 e dar nome a uma coluna MediaKm
SELECT AVG(AreaKm2) AS MediaKm
FROM codigo_postal;

-- 6 cidades com area maior a 80Km2
SELECT Nome, Codigo_Postal FROM codigo_postal WHERE AreaKm2 > 80;

-- 7  qual registo/ nome de cidade tem o codigo postal 7830
SELECT * FROM codigo_postal WHERE Codigo_Postal = 7830;