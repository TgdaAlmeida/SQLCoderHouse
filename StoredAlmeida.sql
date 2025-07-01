USE livraria;

-- Stored Procedores

SELECT * FROM clientes WHERE cliente_id = 130;

DELIMITER //

CREATE PROCEDURE adicionar_cliente(
	IN clienteid INT,
	IN nomecliente VARCHAR(50),
	IN endereco_cl VARCHAR(60),
	IN email_cl VARCHAR(50),
	IN cpf_cl BIGINT
)
BEGIN
INSERT INTO clientes(cliente_id, nome_cliente, endereco, email, cpf)
VALUES (clienteid, nomecliente, endereco_cl, email_cl, cpf_cl);
END//
DELIMITER ;

CALL adicionar_cliente(130, 'Thiago Almeida', 'Rua Atibaia', 'thiagotgda@gmail.com', 12978195704) ;

DESCRIBE clientes;

UPDATE clientes
SET endereco = 'Rua Atibaia, 411'
WHERE cliente_id  = 130;



-- PROCEDURES RETORNANDO VALORES

-- Criar um procedure que retorne o total de venda de um livro

SELECT * FROM vendas;

DELIMITER //

CREATE PROCEDURE total_venda_livro(
	IN id_esbn INT,
	OUT total_venda INT
)
BEGIN
	SELECT count(venda_id) INTO total_venda FROM vendas WHERE venda_id = id_esbn;
END //
DELIMITER ;


CALL total_venda_livro(413379397, @var);


SELECT @#var;


