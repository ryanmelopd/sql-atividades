USE loja_exercicios;

-- 1. Produtos da categoria Periféricos.
SELECT *
FROM produtos
WHERE categoria = 'Periféricos';

-- 2. Produtos com preço maior que 300.
SELECT *
FROM produtos
WHERE preco > 300;

-- 3. Produtos com preço entre 100 e 400.
SELECT *
FROM produtos
WHERE preco BETWEEN 100 AND 400;

-- 4. Produtos sem estoque.
SELECT *
FROM produtos
WHERE estoque = 0;

-- 5. Produtos cujo nome começa com Monitor.
SELECT *
FROM produtos
WHERE nome LIKE 'Monitor%';

-- 6. Produtos da categoria Periféricos e com preço menor que 200.
SELECT *
FROM produtos
WHERE categoria = 'Periféricos' AND preco < 200;

-- 7a. Produtos das categorias Monitores ou Acessórios (com OR).
SELECT *
FROM produtos
WHERE categoria = 'Monitores' OR categoria = 'Acessórios';

-- 7b. O mesmo resultado, com IN.
SELECT *
FROM produtos
WHERE categoria IN ('Monitores', 'Acessórios');