SELECT vendedor, COUNT(*) AS qtd_vendas
FROM vendas
GROUP BY vendedor;

SELECT vendedor, MAX(valor) AS maior_venda
FROM vendas
GROUP BY vendedor;

SELECT vendedor, SUM(valor) AS total_vendas
FROM vendas
GROUP BY vendedor
ORDER BY total_vendas ASC;

