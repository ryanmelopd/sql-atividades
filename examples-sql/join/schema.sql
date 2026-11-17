CREATE TABLE categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    categoria_id INT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

INSERT INTO categorias (nome) VALUES ('Periféricos'), ('Monitores'), ('Games');

INSERT INTO produtos (nome, categoria_id) VALUES
('Mouse', 1), ('Teclado', 1), ('Monitor 24"', 2);