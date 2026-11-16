CREATE DATABASE loja;
USE loja;

CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(50),
    idade INT
);

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    estoque INT
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    produto_id INT,
    quantidade INT,
    data_pedido DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO clientes (nome, cidade, idade) VALUES
('Ana', 'Londrina', 22),
('Bruno', 'Curitiba', 30),
('Carla', 'Londrina', 27),
('Diego', 'Maringá', 35),
('Elisa', 'Curitiba', 19);

INSERT INTO produtos (nome, categoria, preco, estoque) VALUES
('Teclado', 'Periféricos', 120.00, 15),
('Mouse', 'Periféricos', 60.00, 30),
('Monitor', 'Monitores', 850.00, 8),
('Cabo HDMI', 'Acessórios', 25.00, 100),
('Headset', 'Periféricos', 200.00, 0);

INSERT INTO pedidos (cliente_id, produto_id, quantidade, data_pedido) VALUES
(1, 1, 1, '2026-11-01'),
(1, 2, 2, '2026-11-03'),
(2, 3, 1, '2026-11-05'),
(3, 4, 5, '2026-11-07'),
(4, 1, 2, '2026-11-10'),
(2, 2, 1, '2026-11-12');