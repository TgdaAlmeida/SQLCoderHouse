
USE livraria;                                                                                                                                                                                                                                                                                                                     

SHOW GLOBAL variables WHERE variable_name = 'autocommit';

-- não commitar uma ação de primeira

SELECT @@autocommit;

SET @@autocommit = 1;

-- 1 - Se tiver registros, deverá eliminar alguns deles iniciando previamente uma transação.

SELECT * FROM editoras;

START TRANSACTION; -- DESLIGA O AUTOCOMMIT espera um COMMIT NO FINAL OU ROLLBACK;

SELECT @@autocommit; -- CONFIRMAR O COMMIT DESATIVADO

DELETE FROM clientes  -- DELETAR ITEM DA TABELA CLIENTES
WHERE cliente_id = 35;

ROLLBACK; -- RETORNAR

COMMIT; -- COMITAR (SALVAR)



-- 2 - Numa segunda tabela, insira oito novos registros, inciando também com transação.

SELECT * FROM livros;

START TRANSACTION; -- DESLIGA O AUTOCOMMIT espera um COMMIT NO FINAL OU ROLLBACK;

INSERT INTO livros (livro_id, nome_livro, autor_id, editora_id, genero) VALUES
(99545, 'Blood and Fire', 1014, 28461, 'Aventura'),
(99546, 'The Silent Patient', 1011, 28462, 'Suspense'),
(99547, 'Where the Crawdads Sing', 1008, 28456, 'Ficcao Cientifica'),
(99548, 'The Night Circus', 1016, 28459, 'Fantasia');

SAVEPOINT point0;

INSERT INTO livros (livro_id, nome_livro, autor_id, editora_id, genero) VALUES
(99549, 'Educated', 1013, 18457, 'Drama'),
(99550, 'The Light We Lost', 1012, 28460, 'Romance'),
(99551, 'Becoming', 1010, 28463, 'Fantasia');

SAVEPOINT point1;

INSERT INTO livros (livro_id, nome_livro, autor_id, editora_id, genero) VALUES
(99552, 'The Subtle Art of Not Giving a F*ck', 1009, 28458, 'Ficcao Cientifica');


RELEASE SAVEPOINT point0; -- RELEASE "NOME_DO_SAVEPOINT" DELETA O SAVEPOINT

COMMIT;
	







