
-- 1 - Encontrando Produto e seu Total de Vendas:
-- Usando SQL para fazer uma busca nos dados que preparamos com Python.

-- Lógica:
-- A ideia dessa query foi agrupar por produto e categoria e então fazer o cálculo do total de vendas.
-- Por fim, ainda ordenando do maior para o menor de acordo com o total de vendas.
-- Com isso, trazemos o SELECT com produto, categoria e o total de vendas o que atende aos requisitos pedidos.

SELECT produto, categoria, SUM(quantidade * preco) as totalVendas
FROM 'data_clean.csv'
GROUP BY produto, categoria
ORDER BY totalVendas DESC;

-- 2 - Conhecendo os produtos que menos venderam em junho:
-- Lógica:
-- Neste a lógica utilizada foi realizar um agrupamento por grupo de produtos e então conhecer a quantidade 
-- (ou seja, a SUM(quantidade)) total comprada de cada produto. Isso tudo feito especificando o intervalo 
-- do mês de junho utilizando a coluna data com o BETWEEN. Por fim, também realizei um ordenamento, mas, 
-- desta vez, pela quantidade de vendas feitas de forma ascendente para conhecermos quais foram aqueles 
-- que menos venderam.

SELECT produto, SUM(quantidade) as qtdVendas
FROM 'data_clean.csv'
WHERE data BETWEEN '2023-06-01' AND '2023-06-30'
GROUP BY produto
ORDER BY qtdVendas ASC;
