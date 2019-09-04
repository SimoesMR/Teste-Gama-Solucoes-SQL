-- Seleciona tabelas para verificar se foram inserido os dados
SELECT * FROM teste_gama.nota_fiscal;
SELECT * FROM teste_gama.produto;
SELECT * FROM teste_gama.nota_fiscal_item;

-- A. Nome do produto com maior valor de venda (considere o valor do item na nota fiscal).
SELECT Nome
	FROM PRODUTO PROD
    JOIN NOTA_FISCAL_ITEM NFI
    ON PROD.ProdutoId = NFI.ProdutoId
	ORDER BY NFI.PrecoUnitario*Quantidade desc LIMIT 1;

-- B. Valor total de todas as notas e o valor total de todas as notas considerando o preço atual do produto.
SELECT 
	SUM(nfi.PrecoUnitario) as ValorTotal_NF,
	SUM(PRDT.PrecoUnitario) as ValorTotal_NFPrcAtual	
	FROM nota_fiscal_item nfi
	INNER JOIN PRODUTO PRDT 
	ON PRDT.ProdutoID = nfi.ProdutoId;

-- C. Nome dos 5 produtos mais vendidos (quantidade) do mês atual.