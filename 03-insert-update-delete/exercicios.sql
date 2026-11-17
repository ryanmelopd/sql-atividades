USE loja_exercicios;

-- 1. Insira um novo produto: Mousepad, categoria Acessórios, preço 49.90, estoque 30.
INSERT INTO produtos (nome, categoria, preco, estoque)
VALUES ('Mousepad', 'Acessórios', 49.90, 30);

SELECT * FROM produtos WHERE nome = 'Mousepad';

-- 2. Atualize o preço do Cabo HDMI para 34.90.
UPDATE produtos
SET preco = 34.90
WHERE nome = 'Cabo HDMI';

SELECT nome, preco FROM produtos WHERE nome = 'Cabo HDMI';

-- 3. Aumente em 10% o preço de todos os produtos da categoria Monitores.
UPDATE produtos
SET preco = preco * 1.10
WHERE categoria = 'Monitores';

SELECT nome, preco FROM produtos WHERE categoria = 'Monitores';

-- 4. Atualize o estoque do Headset para 15.
UPDATE produtos
SET estoque = 15
WHERE nome = 'Headset';

SELECT nome, estoque FROM produtos WHERE nome = 'Headset';

-- 5. Delete o produto Webcam HD.
DELETE FROM produtos
WHERE nome = 'Webcam HD';

SELECT * FROM produtos;