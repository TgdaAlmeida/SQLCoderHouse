SELECT * FROM sys.sys_config sc;

USE mysql;

SHOW tables;

SELECT * FROM user;

CREATE USER 'teste_user'@'localhost' IDENTIFIED BY 'SENHA1';

DROP USER 'teste_user2@localhost';

CREATE USER 'teste_user2'@'localhost' IDENTIFIED BY 'Tgda5469';
CREATE USER 'teste_user3'@'localhost' IDENTIFIED BY 'Tgda5469';

SELECT * FROM mysql.user WHERE user LIKE 'teste%';

SHOW GRANTS FOR 'teste_user2'@'localhost';

GRANT ALL ON *.* TO 'teste_user'@'localhost';

-- permissao a uma tabela

GRANT ALL ON livraria2.clientes TO 'teste_user'@'localhost';

-- permissao seletivas

GRANT UPDATE, SELECT (nome_cliente)
ON livraria2.clientes
TO 'teste_user'@'localhost';

SHOW GRANTS FOR 'teste_user'@'localhost';

-- permissao para visualizar

GRANT SELECT ON livraria2.clientes TO 'teste_user'@'localhost';

-- permissao para visualizar, inserir e 

GRANT SELECT, INSERT, UPDATE ON livraria2.clientes TO 'teste_user2'@'localhost';

-- permissao em tudo

GRANT SELECT, INSERT, UPDATE ON livraria2.* TO 'teste_user3'@'localhost';


SELECT * FROM global_grants;

SELECT * FROM db;

SELECT * FROM user;









