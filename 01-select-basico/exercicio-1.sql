-- 1. Liste todas as colunas de todos os produtos.
SELECT *
FROM produtos;

-- 2. Liste apenas nome e preco.
SELECT nome, preco
FROM produtos;

-- 3. Liste os produtos do mais barato para o mais caro.
SELECT nome, preco
FROM produtos
ORDER BY preco ASC;

-- 4. Liste os 3 produtos mais caros.
SELECT nome, preco
FROM produtos
ORDER BY preco DESC
LIMIT 3;

-- 5. Liste as categorias sem repetição.
SELECT DISTINCT categoria
FROM produtos;