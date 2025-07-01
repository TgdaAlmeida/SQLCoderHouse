use livraria





SELECT * FROM vendedores 

DROP TABLE livro, editora,autor;



CREATE TABLE livros (
isbn_id INT NOT NULL PRIMARY KEY,
nome varchar(50) NOT NULL,
autor_id INT NOT NULL,
editora_id INT NOT NULL,
genero VARCHAR(20),
foreign KEY (autor_id) REFERENCES autores(autor_id),
foreign KEY (editora_id) REFERENCES editoras(editora_id)
);

INSERT INTO livros (isbn_id, nome, autor_id, editora_id, genero) VALUES
(FLOOR(RAND() * 1000000000), 'O Senhor dos Aneis', 1001, 28456, 'Fantasia'),
(FLOOR(RAND() * 1000000000), 'Orgulho e Preconceito', 1002, 18457, 'Romance'),
(FLOOR(RAND() * 1000000000), 'Harry Potter e a Pedra Filosofal', 1005, 28460, 'Fantasia'),
(FLOOR(RAND() * 1000000000), '1984', 1003, 28458, 'Ficcao Cientifica'),
(FLOOR(RAND() * 1000000000), 'Dom Quixote', 1004, 28459, 'Aventura'),
(FLOOR(RAND() * 1000000000), 'Crime e Castigo', 1007, 28462, 'Suspense'),
(FLOOR(RAND() * 1000000000), 'O Pequeno Principe', 1008, 28463, 'Fantasia'),
(FLOOR(RAND() * 1000000000), 'As Cronicas de Narnia', 1006, 28461, 'Fantasia'),
(FLOOR(RAND() * 1000000000), 'Moby Dick', 1009, 28456, 'Aventura'),
(FLOOR(RAND() * 1000000000), 'Guerra e Paz', 1010, 18457, 'Historia'),
(FLOOR(RAND() * 1000000000), 'Hamlet', 1011, 28458, 'Drama'),
(FLOOR(RAND() * 1000000000), 'A Metamorfose', 1012, 28459, 'Ficcao'),
(FLOOR(RAND() * 1000000000), 'A Divina Comedia', 1013, 28460, 'Classico'),
(FLOOR(RAND() * 1000000000), 'A Revolucao dos Bichos', 1014, 28461, 'Fabula'),
(FLOOR(RAND() * 1000000000), 'Ulisses', 1015, 28462, 'Epico'),
(FLOOR(RAND() * 1000000000), 'O Grande Gatsby', 1016, 28463, 'Romance'),
(FLOOR(RAND() * 1000000000), 'A Ilha do Tesouro', 1017, 28456, 'Aventura'),
(FLOOR(RAND() * 1000000000), 'A Odisseia', 1018, 18457, 'Epico'),
(FLOOR(RAND() * 1000000000), 'Anna Karenina', 1019, 28458, 'Romance'),
(FLOOR(RAND() * 1000000000), 'Dracula', 1020, 28459, 'Terror'),
(FLOOR(RAND() * 1000000000), 'O Coracao das Trevas', 1001, 28460, 'Aventura'),
(FLOOR(RAND() * 1000000000), 'A Maquina do Tempo', 1002, 28461, 'Ficcao Cientifica'),
(FLOOR(RAND() * 1000000000), 'O Retrato de Dorian Gray', 1003, 28462, 'Fantasia'),
(FLOOR(RAND() * 1000000000), 'Os Tres Mosqueteiros', 1004, 28463, 'Aventura'),
(FLOOR(RAND() * 1000000000), 'Alice no Pais das Maravilhas', 1005, 28456, 'Fantasia'),
(FLOOR(RAND() * 1000000000), 'Robinson Crusoé', 1006, 18457, 'Aventura'),
(FLOOR(RAND() * 1000000000), 'O Conde de Monte Cristo', 1007, 28458, 'Aventura'),
(FLOOR(RAND() * 1000000000), 'A Arte da Guerra', 1008, 28459, 'Filosofia'),
(FLOOR(RAND() * 1000000000), 'A Odisseia de Homero', 1009, 28460, 'Epico'),
(FLOOR(RAND() * 1000000000), 'Os Miseraveis', 1010, 28461, 'Drama');


SELECT * FROM livros l 


CREATE TABLE editoras (
editora_id INT NOT NULL PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
endereco VARCHAR(60) NOT NULL,
cnpj VARCHAR(30) NOT NULL
);

INSERT INTO editoras (editora_id, nome, endereco, cnpj) VALUES 
(28456,'Editora_Iluminar', 'Av._das_Estrelas,_123,_Luminaria_do_Norte', '123456789/0001-01'),
(18457,'Editora_Aurora', 'Rua_dos_Sonhos,_456,_Cidade_dos_Livros', '987654321/0001-02'),
(28458,'Editora_Encantos_Literarios', 'Praca_das_Fabulas,_789,_Bairro_das_Historias', '567890123/0001-03'),
(28459,'Editora_Paginas_Magicas', 'Alameda_dos_Contos,_1011,_Vale_da_Imaginacao', '345678901/0001-04'),
(28460,'Editora_Sussurros_Poeticos', 'Travessa_das_Metaforas,_1213,_Ruas_das_Rimas', '901234567/0001-05'),
(28461,'Editora_Luar', 'Rua_das_Estrelas,_789,_Bairro_do_Luar', '111111111/0001-06'),
(28462,'Editora_Fantasia', 'Avenida_dos_Sonhos,_101,_Cidade_das_Maravilhas', '222222222/0001-07'),
(28463,'Editora_Imaginario', 'Alameda_das_Fabulas,_202,_Terra_dos_Sonhos', '333333333/0001-08');

UPDATE editoras
SET endereco = REPLACE(endereco, '_', ' ')
WHERE endereco LIKE '%_%';

SELECT * FROM editoras


CREATE TABLE autores (
autor_id INT NOT NULL PRIMARY KEY,
nome varchar(50) NOT NULL,
endereco VARCHAR(60) NOT NULL,
editora_id INT NOT NULL,
foreign KEY (editora_id) REFERENCES editoras(editora_id)
);

INSERT INTO autores (autor_id, nome, endereco, editora_id) VALUES
(1001, 'Carlos Silva', 'Rua das Flores, 123', 28456),
(1002, 'Maria Oliveira', 'Avenida Central, 456', 18457),
(1003, 'João Santos', 'Travessa dos Bosques, 789', 28458),
(1004, 'Ana Costa', 'Rua das Palmeiras, 1011', 28459),
(1005, 'Pedro Rodrigues', 'Alameda das Águias, 1213', 28460),
(1006, 'Juliana Martins', 'Praça das Fontes, 1415', 28461),
(1007, 'André Almeida', 'Avenida dos Girassóis, 1617', 28462),
(1008, 'Luana Pereira', 'Rua das Violetas, 1819', 28463),
(1009, 'Ricardo Fernandes', 'Alameda dos Lagos, 2021', 28456),
(1010, 'Isabel Sousa', 'Travessa das Marés, 2223', 18457),
(1011, 'Antônio Gomes', 'Avenida das Montanhas, 2425', 28458),
(1012, 'Mariana Vieira', 'Rua das Estrelas, 2627', 28459),
(1013, 'Rafael Lima', 'Praça dos Pássaros, 2829', 28460),
(1014, 'Laura Castro', 'Avenida das Pedras, 3031', 28461),
(1015, 'Bruno Carvalho', 'Rua dos Ventos, 3233', 28462),
(1016, 'Camila Ribeiro', 'Travessa das Flores, 3435', 28463),
(1017, 'Thiago Neves', 'Avenida dos Sonhos, 3637', 28456),
(1018, 'Paula Dias', 'Alameda das Nuvens, 3839', 18457),
(1019, 'Gabriel Barbosa', 'Rua dos Anjos, 4041', 28458),
(1020, 'Beatriz Nascimento', 'Praça das Árvores, 4243', 28459);

SELECT * FROM autores a 

CREATE TABLE clientes (
cliente_id INT NOT NULL PRIMARY KEY,
nome varchar(50) NOT NULL,
endereco VARCHAR(60) NOT NULL,
email VARCHAR(50) NOT NULL,
cpf INT NOT NULL
);

ALTER TABLE clientes
MODIFY COLUMN cpf BIGINT NOT NULL;

INSERT INTO clientes (cliente_id, nome, endereco, email, cpf) VALUES
(1, 'Ana Silva', 'Rua das Flores, 123', 'ana.silva@email.com', 12345678901),
(2, 'Carlos Oliveira', 'Avenida Central, 456', 'carlos.oliveira@email.com', 23456789012),
(3, 'Mariana Santos', 'Travessa dos Bosques, 789', 'mariana.santos@email.com', 34567890123),
(4, 'Pedro Costa', 'Rua das Palmeiras, 1011', 'pedro.costa@email.com', 45678901234),
(5, 'Juliana Pereira', 'Alameda das Aguias, 1213', 'juliana.pereira@email.com', 56789012345),
(6, 'Lucas Vieira', 'Praca das Fontes, 1415', 'lucas.vieira@email.com', 67890123456),
(7, 'Gabriela Rodrigues', 'Avenida dos Girassois, 1617', 'gabriela.rodrigues@email.com', 78901234567),
(8, 'Marcos Almeida', 'Rua das Violetas, 1819', 'marcos.almeida@email.com', 89012345678),
(9, 'Tatiane Lima', 'Alameda dos Lagos, 2021', 'tatiane.lima@email.com', 90123456789),
(10, 'Fernando Barbosa', 'Travessa das Mares, 2223', 'fernando.barbosa@email.com', 10234567890),
(11, 'Carolina Gomes', 'Avenida das Montanhas, 2425', 'carolina.gomes@email.com', 12345678901),
(12, 'Thiago Nascimento', 'Rua das Estrelas, 2627', 'thiago.nascimento@email.com', 23456789012),
(13, 'Aline Fernandes', 'Praca dos Passaros, 2829', 'aline.fernandes@email.com', 34567890123),
(14, 'Rafael Souza', 'Avenida das Pedras, 3031', 'rafael.souza@email.com', 45678901234),
(15, 'Isabela Castro', 'Rua dos Ventos, 3233', 'isabela.castro@email.com', 56789012345),
(16, 'Paulo Ribeiro', 'Travessa das Flores, 3435', 'paulo.ribeiro@email.com', 67890123456),
(17, 'Amanda Oliveira', 'Avenida dos Sonhos, 3637', 'amanda.oliveira@email.com', 78901234567),
(18, 'Jose Silva', 'Alameda das Nuvens, 3839', 'jose.silva@email.com', 89012345678),
(19, 'Laura Santos', 'Rua dos Anjos, 4041', 'laura.santos@email.com', 90123456789),
(20, 'Diego Costa', 'Praca das Arvores, 4243', 'diego.costa@email.com', 10234567890),
(21, 'Camila Almeida', 'Avenida das Rosas, 4445', 'camila.almeida@email.com', 12345678901),
(22, 'Bruno Pereira', 'Rua das Flores, 4647', 'bruno.pereira@email.com', 23456789012),
(23, 'Marcela Lima', 'Alameda dos Cisnes, 4849', 'marcela.lima@email.com', 34567890123),
(24, 'Rodrigo Fernandes', 'Avenida dos Passaros, 5051', 'rodrigo.fernandes@email.com', 45678901234),
(25, 'Nathalia Oliveira', 'Travessa das Borboletas, 5253', 'nathalia.oliveira@email.com', 56789012345),
(26, 'Felipe Santos', 'Praca das Flores, 5455', 'felipe.santos@email.com', 67890123456),
(27, 'Patricia Costa', 'Rua das Estrelas, 5657', 'patricia.costa@email.com', 78901234567),
(28, 'Lucas Oliveira', 'Alameda dos Ipes, 5859', 'lucas.oliveira@email.com', 89012345678),
(29, 'Vanessa Pereira', 'Avenida das Tulipas, 6061', 'vanessa.pereira@email.com', 90123456789),
(30, 'Joao Silva', 'Travessa das Violetas, 6263', 'joao.silva@email.com', 10234567890),
(31, 'Carolina Almeida', 'Praca dos Lirios, 6465', 'carolina.almeida@email.com', 12345678901),
(32, 'Gustavo Santos', 'Rua das Rosas, 6667', 'gustavo.santos@email.com', 23456789012),
(33, 'Leticia Costa', 'Alameda das Azaleias, 6869', 'leticia.costa@email.com', 34567890123),
(34, 'Rafaela Oliveira', 'Avenida das Dalias, 7071', 'rafaela.oliveira@email.com', 45678901234),
(35, 'Fernanda Pereira', 'Travessa das Acacias, 7273', 'fernanda.pereira@email.com', 56789012345);

SELECT * FROM clientes c 

CREATE TABLE vendedores (
vendedor_id INT NOT NULL PRIMARY KEY,
nome varchar(50) NOT NULL,
matricula INT NOT NULL
);




INSERT INTO vendedores (vendedor_id, nome, matricula) VALUES
(1001, 'Jooo_Silva', 011001),
(1002, 'Maria_Santos', 011002),
(1003, 'Pedro_Oliveira', 011003),
(1004, 'Ana_Souza', 011004),
(1005, 'Lucas_Costa', 011005);

SELECT * FROM vendedores v 

CREATE TABLE vendas (
venda_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
cliente_id int NOT NULL,
vendedor_id int NOT NULL,
isbn_id int NOT null,
data date NOT NULL,
foreign KEY (cliente_id) REFERENCES clientes(cliente_id),
foreign KEY (vendedor_id) REFERENCES vendedores(vendedor_id),
foreign KEY (isbn_id) REFERENCES livros(isbn_id)
);


INSERT INTO vendas (cliente_id, vendedor_id, isbn_id, data) VALUES
(2, 1001, 13137795, '2024-05-27'),
(4, 1002, 74890717, '2024-05-28'),
(11, 1003, 163549497, '2024-05-29'),
(2, 1004, 174159364, '2024-05-30'),
(4, 1005, 248237499, '2024-05-31'),
(5, 1002, 248237499, '2024-05-31'),
(10, 1003, 248237499, '2024-05-31'),
(15, 1001, 248237499, '2024-05-31'),
(29, 1005, 248237499, '2024-05-31'),
(11, 1002, 413379397, '2024-06-01'),
(31, 1002, 438693059, '2024-06-02'),
(22, 1001, 451371413, '2024-06-03'),
(23, 1002, 454007655, '2024-06-04'),
(1, 1005, 475032146, '2024-06-05');

DELETE FROM vendas WHERE cliente_id BETWEEN 1 AND 14;

SELECT * FROM vendas;
SHOW CREATE TABLE vendas;
