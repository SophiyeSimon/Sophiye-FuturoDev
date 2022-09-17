CREATE DATABASE marktplace;

CREATE SCHEMA marktplace;

CREATE TABLE marktplace.produto(
id INTEGER PRIMARY KEY,
nome VARCHAR(50),
valor integer
);

INSERT INTO marktplace.produto(id, nome, valor)
VALUES (1, 'Sabão', 26); 

INSERT INTO marktplace.produto(id, nome, valor)
VALUES (2, 'Sabão', 26); 

INSERT INTO marktplace.produto(id, nome, valor)
VALUES (3, 'Sabão', 1); 

UPDATE marktplace.produto SET id= 100.0 WHERE id = 2;



CREATE TABLE marktplace.cliente(
cpf INTEGER PRIMARY KEY,
nome VARCHAR(15),
idade INTEGER,
saldo INTEGER
);

CREATE TABLE marktplace.anuncio(
id INTEGER PRIMARY KEY,
endereco TEXT,
descricao TEXT
);
INSERT INTO marktplace.cliente(cpf, nome, idade, saldo)
VALUES(14584841,'Sophiye',26,0);

INSERT INTO marktplace.anuncio(id,endereco,descricao)
VALUES(2,'avenida das ostras','N/A');



DROP TABLE marktplace.anuncio;
DROP TABLE marktplace.cliente;

CREATE TABLE marktplace.anuncio(
id_produto INTEGER REFERENCES marktplace.produto ON UPDATE CASCADE
);

CREATE TABLE marktplace.cliente(

cpf INTEGER PRIMARY KEY,
nome VARCHAR(15),
idade INTEGER,
saldo INTEGER
);

CREATE TABLE marktplace.compra(
cliente_id INTEGER REFERENCES marktplace.cliente ON UPDATE CASCADE,
produto_id INTEGER PRIMARY KEY REFERENCES marktplace.produto ON UPDATE CASCADE
);

-- Exercícios 1,2 e 3 acima.
-- Exercício 4 abaixo.

INSERT INTO marktplace.produto(id, nome, valor)
VALUES
(1, 'sabonete', 1),
(2, 'sabonete2', 1),
(3, 'sabonete3', 1),
(4, 'sabonete4', 1),
(5, 'sabonete5', 1);
INSERT INTO marktplace.cliente(cpf, nome, idade, saldo)
VALUES
(1489754158, 'Sophiye', 15),
(1489754158, 'André', 15),
(1489754158, 'Afonso', 15),
(1489754158, 'Albedo', 15),
(1489754158, 'Ainz', 15);
INSERT INTO marktplace.anuncio(id,endereco,descricao)
VALUES
(1, 'Rua dos Pasteis', 'Rua'),
(1, 'Rua dos Robalos', 'Rua'),
(1, 'Rua dos Cavalos', 'Rua'),
(1, 'Rua dos Canários', 'Rua'),
(1, 'Rua dos Passarinhos', 'Rua');
INSERT INTO marktplace.compra(cliente_id, produto_id)
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5);

--Exercício 5.

SELECT * FROM marktplace.anuncio a
JOIN marktplace.produto p ON a.id = anuncio_id;

SELECT * FROM 
marktplace.cliente c LEFT JOIN marktplace.produto p
ON c.id = c.cliente_id;

DROP DATABASE EMPRESA;
