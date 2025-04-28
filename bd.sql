CREATE DATABASE etecmcm3;

USE etecmcm3;

CREATE TABLE produtos (
id_produto int PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255),
marca VARCHAR(255),
qtde int,
preco DECIMAL(10,2),
id_categoria int
);

CREATE TABLE categorias (
id_categoria int PRIMARY KEY AUTO_INCREMENT,
nome_cat VARCHAR(255)
);

ALTER TABLE produtos ADD FOREIGN KEY(id_categoria) REFERENCES categorias (id_categoria);
