USE loja_exercicios;

-- 1. Quantos produtos existem na tabela?
SELECT COUNT(*) AS total_produtos
FROM produtos;

-- 2. Qual o preço médio dos produtos?
SELECT AVG(preco) AS preco_medio
FROM produtos;

-- 3. Qual o produto mais barato e o mais caro?
SELECT MIN(preco) AS mais_barato, MAX(preco) AS mais_caro
FROM produtos;

-- 4. Qual a soma total do estoque?
SELECT SUM(estoque) AS estoque_total
FROM produtos;

-- 5. Quantos produtos existem em cada categoria?
SELECT categoria, COUNT(*) AS total
FROM produtos
GROUP BY categoria;

-- 6. Qual o preço médio por categoria?
SELECT categoria, AVG(preco) AS preco_medio
FROM produtos
GROUP BY categoria;

-- 7. Categorias com mais de 2 produtos.
SELECT categoria, COUNT(*) AS total
FROM produtos
GROUP BY categoria
HAVING COUNT(*) > 2;