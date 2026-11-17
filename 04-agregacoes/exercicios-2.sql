-- A. Nome e preço com 10% de desconto, com o apelido preco_promocional.
SELECT nome, preco * 0.90 AS preco_promocional
FROM produtos;

-- B. Soma do estoque de cada categoria.
SELECT categoria, SUM(estoque) AS estoque_total
FROM produtos
GROUP BY categoria;

-- C. Maior preço de cada categoria, do maior para o menor.
SELECT categoria, MAX(preco) AS maior_preco
FROM produtos
GROUP BY categoria
ORDER BY maior_preco DESC;