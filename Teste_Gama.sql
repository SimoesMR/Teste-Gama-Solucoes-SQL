SELECT * FROM teste_gama.nota_fiscal;

SELECT * FROM teste_gama.produto;

SELECT * FROM teste_gama.nota_fiscal_item;

SELECT Nome FROM PRODUTO WHERE PrecoUnitario = (SELECT MAX(PrecoUnitario) FROM nota_fiscal_item);  -- Verificar

SELECT SUM(PrecoUnitario) FROM nota_fiscal_item;  -- Perguntar para prof. como arrendar para duas casas decimais