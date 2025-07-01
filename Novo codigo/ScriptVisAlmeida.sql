
USE livraria;

-- VIEW 1

CREATE VIEW compra_cliente AS
SELECT c.cliente_id, c.nome_cliente, l.nome_livro, v.venda_id, l.livro_id, v.data_venda
FROM vendas v 
JOIN livros l ON v.livro_id = l.livro_id 
JOIN clientes c using(cliente_id);

SELECT * FROM compra_cliente cc 

-- VIEW 2 QUAL A EDITORA DE CADA LIVRO

CREATE VIEW editora_livro AS
SELECT l.nome_livro, e.nome_editora
FROM livros AS l
JOIN editoras AS e ON l.editora_id = e.editora_id
ORDER BY nome_livro;

SELECT * FROM editora_livro;

-- VIEW 3 QUAL A EDITORA DE CADA AUTOR

CREATE VIEW editora_autor AS
SELECT a.nome_autor, e.nome_editora
FROM autores AS a
JOIN editoras AS e ON a.editora_id = e.editora_id
ORDER BY a.nome_autor;

SELECT * FROM editora_autor;

-- VIEW 4 QUANTOS CLIENTES TEMOS POR CIDADE

CREATE VIEW cidade_cliente AS
SELECT cidade, COUNT(*) AS numero_clientes
FROM clientes
GROUP BY cidade;

SELECT * FROM cidade_cliente;

-- VIEW 5 AUTORES MAIS VENDIDOS

CREATE VIEW autor_mais_vendido AS
SELECT a.nome_autor, COUNT(v.venda_id) AS livros_vendidos 
FROM vendas v
JOIN livros l ON v.livro_id = l.livro_id
JOIN autores a ON l.autor_id = a.autor_id 
GROUP BY a.nome_autor 
ORDER BY a.nome_autor ASC;

SELECT * FROM autor_mais_vendido;













