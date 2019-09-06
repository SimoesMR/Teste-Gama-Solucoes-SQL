-- Seleciona tabelas para verificar se foram inserido os dados
SELECT * FROM teste_gama.nota_fiscal;
SELECT * FROM teste_gama.produto;
SELECT * FROM teste_gama.nota_fiscal_item;

-- A. Nome do produto com maior valor de venda (considere o valor do item na nota fiscal).
SELECT PROD.Nome, NFI.PrecoUnitario, NFI.Quantidade
    	FROM PRODUTO PROD
    	JOIN NOTA_FISCAL_ITEM NFI
    	ON PROD.ProdutoId = NFI.ProdutoId
    	ORDER BY NFI.PrecoUnitario*Quantidade desc LIMIT 1;

-- B. Valor total de todas as notas e o valor total de todas as notas considerando o preço atual do produto.
SELECT 
	SUM(NFI.PrecoUnitario) as ValorTotal_NF,
	SUM(PROD.PrecoUnitario) as ValorTotal_NFPrcAtual	
	FROM NOTA_FISCAL_ITEM NFI
	INNER JOIN PRODUTO PROD 
	ON PROD.ProdutoID = NFI.ProdutoId;

-- C. Nome dos 5 produtos mais vendidos (quantidade) do mês atual.
SELECT PROD.Nome, NFI.Quantidade
	FROM PRODUTO PROD
	INNER JOIN NOTA_FISCAL_ITEM NFI
    	ON NFI.ProdutoId = PROD.ProdutoId
	INNER JOIN NOTA_FISCAL NF
    	ON NF.NotaFiscalId = NFI.NotaFiscalId
    	WHERE NF.DataEmissao > DATE_SUB(CURRENT_DATE, INTERVAL DAYOFMONTH(CURRENT_DATE) -1 DAY)
    	ORDER BY NFI.QUANTIDADE DESC LIMIT 5;
