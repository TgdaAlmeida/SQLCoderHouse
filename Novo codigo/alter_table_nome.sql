USE livraria;

ALTER TABLE livros
CHANGE nome nome_livro VARCHAR(50);

ALTER TABLE autores
CHANGE nome nome_autor VARCHAR(50);

ALTER TABLE autores
CHANGE nome nome_autor VARCHAR(50);

ALTER TABLE clientes
CHANGE nome nome_cliente VARCHAR(50);

ALTER TABLE editoras
CHANGE nome nome_editora VARCHAR(50);

ALTER TABLE vendedores
CHANGE nome nome_vendedor VARCHAR(50);

SELECT * FROM autores;