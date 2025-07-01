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

SELECT * FROM compra_cliente cc 


-- CRIANDO FUNÇOES
USE livraria;

SELECT * FROM clientes;

DELIMITER //

CREATE FUNCTION retorna_nome_livro(id_livro INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	DECLARE casca_vazia VARCHAR(50);
	SELECT nome_livro INTO casca_vazia FROM livros WHERE isbn_id = id_livro;
	RETURN casca_vazia;
END 
//
DELIMITER ;

SELECT retorna_nome_livro(390049241);


DROP FUNCTION IF EXISTS retorna_nome_livro;

SELECT * FROM livros l;


-- Stored Procedores







