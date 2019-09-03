-- Seleciona tabelas

SELECT * FROM teste_gama.nota_fiscal;

SELECT * FROM teste_gama.produto;

SELECT * FROM teste_gama.nota_fiscal_item;

SELECT Nome FROM PRODUTO WHERE PrecoUnitario = (SELECT MAX(PrecoUnitario) FROM nota_fiscal_item);  -- Nome do produto com maior valor de venda (considere o valor do item na nota fiscal).

SELECT SUM(PrecoUnitario) as TotalNF FROM nota_fiscal_item;  -- Valor total de todas as notas e o valor total de todas as notas considerando o preço atual do produto.

SELECT PrecoUnitario FROM NOTA_FISCAL_ITEM ORDER BY (Quantidade*PrecoUnitario) DESC LIMIT 5;  -- Nome dos 5 produtos mais vendidos (quantidade) do mês atual.