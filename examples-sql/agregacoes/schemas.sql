CREATE DATABASE IF NOT EXISTS treino;
USE treino;

CREATE TABLE vendas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    vendedor VARCHAR(50),
    valor INT
);

INSERT INTO vendas (vendedor, valor) VALUES
('Ana', 100), ('Bruno', 50), ('Ana', 200),
('Carla', 30), ('Bruno', 70), ('Ana', 60);