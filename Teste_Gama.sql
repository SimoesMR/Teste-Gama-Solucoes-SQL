SELECT * FROM teste_gama.nota_fiscal;

SELECT * FROM teste_gama.produto;

SELECT * FROM teste_gama.nota_fiscal_item;

SELECT Nome FROM PRODUTO WHERE PrecoUnitario = (SELECT MAX(PrecoUnitario) FROM PRODUTO);