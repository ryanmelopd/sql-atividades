SELECT * FROM produtos;

SELECT * FROM categorias;

SELECT p.nome, c.nome AS categoria
FROM produtos p
JOIN categorias c ON p.categoria_id = c.id; 

SELECT p.nome, p.categoria_id
FROM produtos p
JOIN categorias c ON p.categoria_id = c.id;

SELECT p.id, p.nome, p.categoria_id, c.nome AS categoria
FROM produtos p
JOIN categorias c ON p.categoria_id = c.id;

SELECT p.nome AS produto, c.nome AS categoria
FROM produtos p
JOIN categorias c ON p.categoria_id = c.id;

SELECT c.nome AS categoria, p.nome AS produto
FROM categorias c
LEFT JOIN produtos p ON p.categoria_id = c.id;

SELECT c.nome AS categoria, COUNT(p.id) AS total_produtos
FROM categorias c
LEFT JOIN produtos p ON p.categoria_id = c.id
GROUP BY c.nome;