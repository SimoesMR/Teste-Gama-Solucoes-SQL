-- Seleciona tabelas

SELECT * FROM teste_gama.nota_fiscal;

SELECT * FROM teste_gama.produto;

SELECT * FROM teste_gama.nota_fiscal_item;

SELECT Nome FROM PRODUTO WHERE PrecoUnitario = (SELECT MAX(PrecoUnitario) FROM nota_fiscal_item);  -- Nome do produto com maior valor de venda (considere o valor do item na nota fiscal).

SELECT Nome
FROM PRODUTO PRDT
INNER JOIN NOTA_FISCAL_ITEM NFI 
ON NFI.ProdutoId = PRDT.ProdutoID
where max(NFI.PrecoUnitario);

-- Valor total de todas as notas e o valor total de todas as notas considerando o preço atual do produto.
SELECT 
	SUM(nfi.PrecoUnitario) as ValorTotal_NF,
	SUM(PRDT.PrecoUnitario) as ValorTotal_NFPrcAtual	
	FROM nota_fiscal_item nfi
	INNER JOIN PRODUTO PRDT 
	ON PRDT.ProdutoID = nfi.ProdutoId;

SELECT PrecoUnitario FROM NOTA_FISCAL_ITEM ORDER BY (Quantidade*PrecoUnitario) DESC LIMIT 5;  -- Nome dos 5 produtos mais vendidos (quantidade) do mês atual.