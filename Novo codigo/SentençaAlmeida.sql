-- Criando usuários
CREATE USER 'usuario1'@'localhost' IDENTIFIED BY 'senha_usuario1';
-- Este comando cria um usuário chamado 'usuario1' com uma senha 'senha_usuario1' que só pode se conectar do localhost.

CREATE USER 'usuario2'@'localhost' IDENTIFIED BY 'senha_usuario2';
-- Este comando cria um usuário chamado 'usuario2' com uma senha 'senha_usuario2' que só pode se conectar do localhost.

-- Concedendo permissões
GRANT SELECT ON livraria.* TO 'usuario1'@'localhost';
-- Este comando concede permissões de leitura (SELECT) em todas as tabelas do banco de dados especificado ('livraria') para o usuário 'usuario1'.

GRANT SELECT, INSERT, UPDATE ON livraria.* TO 'usuario2'@'localhost';
-- Este comando concede permissões de leitura (SELECT), inserção (INSERT) e modificação (UPDATE) em todas as tabelas do banco de dados especificado ('database_name') para o usuário 'usuario2'.

-- Revogando permissões de eliminação de registros
REVOKE DELETE ON livraria.* FROM 'usuario1'@'localhost';
-- Este comando remove a permissão de eliminar registros (DELETE) em todas as tabelas do banco de dados especificado ('livraria') para o usuário 'usuario1'.

REVOKE DELETE ON livraria.* FROM 'usuario2'@'localhost';
-- Este comando remove a permissão de eliminar registros (DELETE) em todas as tabelas do banco de dados especificado ('livraria') para o usuário 'usuario2'.

