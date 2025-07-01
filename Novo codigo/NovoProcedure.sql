USE livraria;

-- Stored Procedores






-- Criar um procedure que adicione dados a tabela clientes

DELIMITER //

CREATE PROCEDURE  adicionar_cliente2(
    IN clienteid INT,
    IN nomecliente VARCHAR(50),
    IN sobrenome VARCHAR(50),
    IN endereco_cl VARCHAR(60),
    IN cidade_cl VARCHAR(50),
    IN email_cl VARCHAR(50),
    IN cpf_cl BIGINT
)
BEGIN
    INSERT INTO clientes(cliente_id, nome, sobrenome, endereco, cidade, email, cpf)
    VALUES (clienteid, nomecliente, sobrenome, endereco_cl, cidade_cl, email_cl, cpf_cl);
END;

DELIMITER ;

CALL adicionar_cliente2(36, 'Thiago', 'Almeida', 'Rua Atibaia', 'Santo Andre','thiagotgda@gmail.com', 12978195704) ;

DESCRIBE clientes;

UPDATE clientes
SET endereco = 'Rua Atibaia, 411'
WHERE cliente_id  = 130;




-- Criar um procedure que retorne o total de venda de um livro

SELECT * FROM clientes;

DELIMITER //

CREATE PROCEDURE total_venda_livro(
	IN id_esbn INT,
	OUT total_venda INT
)
BEGIN
	SELECT count(venda_id) INTO total_venda FROM vendas WHERE venda_id = id_esbn;
END;

DELIMITER ;


CALL total_venda_livro(413379397, @var);


SELECT @#var;




