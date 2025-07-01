use livraria;

-- Criação das tabelas de log
CREATE TABLE livros_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    livro_id INT,
    action VARCHAR(10),
    user VARCHAR(50),
    action_date DATE,
    action_time TIME,
    details TEXT
);

CREATE TABLE autores_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    autor_id INT,
    action VARCHAR(10),
    user VARCHAR(50),
    action_date DATE,
    action_time TIME,
    details TEXT
);


-- PRIMEIRO TRIGGER -- Triggers para a tabela livros

DELIMITER $$

CREATE TRIGGER before_livro_insert
BEFORE INSERT ON livros
FOR EACH ROW
BEGIN
    INSERT INTO livros_log (livro_id, action, user, action_date, action_time, details)
    VALUES (NEW.livro_id, 'INSERT', CURRENT_USER(), CURDATE(), CURTIME(), 'Before inserting a new book.');
END;

DELIMITER ;

-- Explicação: Este trigger será executado antes de uma nova inserção na tabela livros.
-- Ele registra o ID do livro, a ação 'INSERT',
-- o usuário que realizou a operação, a data,
-- a hora e uma breve descrição da ação na tabela livros_log.

DELIMITER $$

CREATE TRIGGER after_livro_update
AFTER UPDATE ON livros
FOR EACH ROW
BEGIN
    INSERT INTO livros_log (livro_id, action, user, action_date, action_time, details)
    VALUES (NEW.livro_id, 'UPDATE', CURRENT_USER(), CURDATE(), CURTIME(), 'After updating a book.');
END;

DELIMITER ;

-- Explicação: Este trigger será executado após uma atualização na tabela livros. 
-- Ele registra o ID do livro, a ação 'UPDATE',
-- o usuário que realizou a operação, a data,
-- a hora e uma breve descrição da ação na tabela livros_log.



-- SEGUNDO TRIGGER -- Triggers para a tabela autores

DELIMITER $$

CREATE TRIGGER before_autor_delete
BEFORE DELETE ON autores
FOR EACH ROW
BEGIN
    INSERT INTO autores_log (autor_id, action, user, action_date, action_time, details)
    VALUES (OLD.autor_id, 'DELETE', CURRENT_USER(), CURDATE(), CURTIME(), 'Before deleting an author.');
END;

DELIMITER ;


-- Explicação: Este trigger será executado antes de uma exclusão na tabela autores. 
-- Ele registra o ID do autor, a ação 'DELETE',
-- o usuário que realizou a operação, a data, 
-- a hora e uma breve descrição da ação na tabela autores_log.

DELIMITER $$

CREATE TRIGGER after_autor_insert
AFTER INSERT ON autores
FOR EACH ROW
BEGIN
    INSERT INTO autores_log (autor_id, action, user, action_date, action_time, details)
    VALUES (NEW.autor_id, 'INSERT', CURRENT_USER(), CURDATE(), CURTIME(), 'After inserting a new author.');
END;

DELIMITER ;

-- Explicação: Este trigger será executado após uma nova inserção na tabela autores. 
-- Ele registra o ID do autor, a ação 'INSERT',
-- o usuário que realizou a operação, a data, 
-- a hora e uma breve descrição da ação na tabela autores_log.


-- Restaurando o delimitador padrão


