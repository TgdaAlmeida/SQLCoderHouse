-- Roteiro aula 7

-- Tabelas
-- Views
	-- Visualizações de dados
-- Funções
	-- Funções integradas
	-- Funções estruturadas
	-- Funções retornam um unico valor e sao utilizadas em consultas
 
-- Triggers
	-- Atua quando tivermos 3 comandos: INSERT, DELETE e UPDATE.

-- Stored Procedores

-- -----------------------------------------------

-- VIEW da compra de cada cliente

SELECT * FROM vendas; -- aposta
SELECT * FROM livros; -- evento
SELECT * FROM clientes; -- usuarios

CREATE VIEW compra_cliente as
SELECT c.cliente_id, c.nome_cliente, l.nome_livro, v.venda_id, l.isbn_id, v.data_venda
FROM vendas v 
JOIN livros l ON v.isbn_id = l.isbn_id 
JOIN clientes c using(cliente_id);








