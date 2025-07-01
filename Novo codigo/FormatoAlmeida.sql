-- CRIANDO FUNÇÕES DATA BASE livraria


USE livraria;

SELECT * FROM livros;

-- FUNÇÃO 1 RETORNA O NOME DO LIVRO COM BASE EM SEU ID

DELIMITER //

CREATE FUNCTION retorna_nome_livro(id_livro INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	DECLARE casca_vazia VARCHAR(50);
	SELECT nome_livro INTO casca_vazia FROM livros WHERE livro_id = id_livro;
	RETURN casca_vazia;
END 
//
DELIMITER ;

SELECT retorna_nome_livro(13579);

-- FUNÇÃO 2 RETORNA QUANTAS VENDAS TEM A EDITORA


SELECT * FROM editoras;

DELIMITER //

CREATE FUNCTION vendas_por_editora(id_editora INT)
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
  DECLARE total_vendas INT;
  DECLARE nome_editora VARCHAR(100);
  DECLARE resultado VARCHAR(255);
  
  SELECT e.nome_editora, COUNT(v.venda_id) INTO nome_editora, total_vendas
  FROM vendas v
  JOIN livros l ON v.livro_id = l.livro_id
  JOIN editoras e ON l.editora_id = e.editora_id
  WHERE e.editora_id = id_editora
  GROUP BY e.nome_editora;

  SET resultado = CONCAT('Editora: ', nome_editora, ', Total Vendas: ', total_vendas);
  RETURN resultado;
END
//

DELIMITER ;

SELECT vendas_por_editora(28456);



