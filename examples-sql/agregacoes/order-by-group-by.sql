SELECT vendedor, SUM(valor) AS total
FROM vendas
GROUP BY vendedor
ORDER BY total DESC;