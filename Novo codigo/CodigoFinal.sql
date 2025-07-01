
-- CRIAÇÃO DO DATABASE

CREATE DATABASE livraria3;


-- CRIAÇÃO TABELAS

CREATE TABLE clientes (
cliente_id INT NOT NULL PRIMARY KEY,
nome varchar(50) NOT NULL,
endereco VARCHAR(60) NOT NULL,
email VARCHAR(50) NOT NULL,
cpf BIGINT NOT NULL
);

CREATE TABLE vendedores (
vendedor_id INT NOT NULL PRIMARY KEY,
nome varchar(50) NOT NULL,
matricula INT NOT NULL
);

CREATE TABLE editoras (
editora_id INT NOT NULL PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
endereco VARCHAR(60) NOT NULL,
cnpj VARCHAR(30) NOT NULL
);

CREATE TABLE autores (
autor_id INT NOT NULL PRIMARY KEY,
nome varchar(50) NOT NULL,
endereco VARCHAR(60) NOT NULL,
editora_id INT NOT NULL,
foreign KEY (editora_id) REFERENCES editoras(editora_id)
);

CREATE TABLE livros (
livro_id INT NOT NULL PRIMARY KEY,
nome varchar(50) NOT NULL,
autor_id INT NOT NULL,
editora_id INT NOT NULL,
genero VARCHAR(20),
foreign KEY (autor_id) REFERENCES autores(autor_id),
foreign KEY (editora_id) REFERENCES editoras(editora_id)
);

CREATE TABLE vendas (
venda_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
cliente_id int NOT NULL,
vendedor_id int NOT NULL,
livro_id int NOT null,
data date NOT NULL,
foreign KEY (cliente_id) REFERENCES clientes(cliente_id),
foreign KEY (vendedor_id) REFERENCES vendedores(vendedor_id),
foreign KEY (livro_id) REFERENCES livros(livro_id)
);

-- INSERÇÃO DE DADOS

INSERT INTO clientes (cliente_id, nome, endereco, email, cpf) 
VALUES
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
(35, 'Fernanda Pereira', 'Travessa das Acacias, 7273', 'fernanda.pereira@email.com', 56789012345),
(36, 'Vanessa Santos', 'Avenida dos Sonhos, 456', 'vanessa_santos@kinghot.com', 24681357902),
(37, 'Ricardo Pereira', 'Travessa das Arvores, 789', 'ricardo_pereira@adress.com', 35792468013),
(38, 'Fernanda Almeida', 'Rua da Esperanca, 321', 'fernanda_almeida@magamail.com', 46813579204),
(39, 'Guilherme Costa', 'Avenida da Paz, 654', 'guilherme_costa@yahoo.com', 57924680135),
(40, 'Cristina Martins', 'Rua do Sol, 987', 'cristina_martins@kinghot.com', 68015792436),
(41, 'Roberto Lima', 'Avenida da Liberdade, 210', 'roberto_lima@adress.com', 79146802357),
(42, 'Mariana Ferreira', 'Rua da Alegria, 543', 'mariana_ferreira@magamail.com', 80257913468),
(43, 'Leonardo Gomes', 'Travessa dos Sonhos, 876', 'leonardo_gomes@yahoo.com', 91368024579),
(44, 'Patricia Rocha', 'Avenida da Harmonia, 129', 'patricia_rocha@kinghot.com', 02479135786),
(45, 'Thiago Fernandes', 'Rua da Felicidade, 765', 'thiago_fernandes@adress.com', 13580246917),
(46, 'Ana Paula Carvalho', 'Avenida das Estrelas, 438', 'ana_paula_carvalho@magamail.com', 24691357028),
(47, 'Felipe Oliveira', 'Travessa das Alegrias, 907', 'felipe_oliveira@yahoo.com', 35792468019),
(48, 'Tatiane Silva', 'Rua do Amor, 876', 'tatiane_silva@kinghot.com', 46803579120),
(49, 'Bruno Pereira', 'Avenida da Amizade, 654', 'bruno_pereira@adress.com', 57914680231),
(50, 'Carla Correia', 'Rua da Liberdade, 321', 'carla_correia@magamail.com', 68025791342),
(51, 'Joao Cunha', 'Travessa dos Amores, 789', 'joao_cunha@yahoo.com', 79136802453),
(52, 'Marina Rodrigues', 'Avenida dos Anjos, 210', 'marina_rodrigues@kinghot.com', 90247913564),
(53, 'Rafael Lima', 'Rua das Paixoes, 543', 'rafael_lima@adress.com', 01358024695),
(54, 'Laura Silveira', 'Avenida da Saude, 876', 'laura_silveira@magamail.com', 12469135706),
(55, 'Diego Mendes', 'Travessa da Vida, 129', 'diego_mendes@yahoo.com', 23580246817),
(56, 'Camila Ribeiro', 'Rua das Virtudes, 765', 'camila_ribeiro@kinghot.com', 34691357028),
(57, 'Marcos Araujo', 'Avenida das Ilusoes, 438', 'marcos_araujo@adress.com', 45792468039),
(58, 'Juliana Figueiredo', 'Travessa da Sabedoria, 907', 'juliana_figueiredo@magamail.com', 56803579120),
(59, 'Lucas Cardoso', 'Rua das Emocoes, 876', 'lucas_cardoso@yahoo.com', 67914680231),
(60, 'Aline Barbosa', 'Avenida da Justica, 654', 'aline_barbosa@kinghot.com', 78025791342),
(61, 'Pedro Pereira', 'Travessa da Esperanca, 321', 'pedro_pereira@adress.com', 89136802453),
(62, 'Mariana Oliveira', 'Rua dos Valores, 789', 'mariana_oliveira@magamail.com', 90247913564),
(63, 'Matheus Sousa', 'Avenida da Solidariedade, 210', 'matheus_sousa@yahoo.com', 01358024695),
(64, 'Caroline Silva', 'Rua das Flores, 123', 'caroline_silva@kinghot.com', 12469135706),
(65, 'Raphaela Santos', 'Avenida dos Sonhos, 456', 'raphaela_santos@adress.com', 23580246817),
(66, 'Gustavo Pereira', 'Travessa das Arvores, 789', 'gustavo_pereira@magamail.com', 34691357028),
(67, 'Natalia Almeida', 'Rua da Esperanca, 321', 'natalia_almeida@yahoo.com', 45792468039),
(68, 'Leonardo Costa', 'Avenida da Paz, 654', 'leonardo_costa@kinghot.com', 56803579120),
(69, 'Isabela Martins', 'Rua do Sol, 987', 'isabela_martins@adress.com', 67914680231),
(70, 'Lucas Ferreira', 'Avenida da Liberdade, 210', 'lucas_ferreira@magamail.com', 78025791342),
(71, 'Tatiane Gomes', 'Rua da Alegria, 543', 'tatiane_gomes@yahoo.com', 89136802453),
(72, 'Fernanda Rocha', 'Travessa dos Sonhos, 876', 'fernanda_rocha@kinghot.com', 90247913564),
(73, 'Diego Fernandes', 'Avenida da Harmonia, 129', 'diego_fernandes@adress.com', 01358024695),
(74, 'Juliana Carvalho', 'Rua da Felicidade, 765', 'juliana_carvalho@magamail.com', 12469135706),
(75, 'Marcelo Oliveira', 'Avenida das Estrelas, 438', 'marcelo_oliveira@yahoo.com', 23580246817),
(76, 'Camila Lima', 'Travessa das Alegrias, 907', 'camila_lima@kinghot.com', 34691357028),
(77, 'Rafaela Dias', 'Rua do Amor, 876', 'rafaela_dias@adress.com', 45792468039),
(78, 'Marcos Pinto', 'Avenida da Amizade, 654', 'marcos_pinto@magamail.com', 56803579120),
(79, 'Gabriela Correia', 'Rua da Liberdade, 321', 'gabriela_correia@yahoo.com', 67914680231),
(80, 'Thiago Cunha', 'Travessa dos Amores, 789', 'thiago_cunha@kinghot.com', 78025791342),
(81, 'Beatriz Rodrigues', 'Avenida dos Anjos, 210', 'beatriz_rodrigues@adress.com', 89136802453),
(82, 'Lucas Lima', 'Rua das Paixoes, 543', 'lucas_lima@magamail.com', 90247913564),
(83, 'Carolina Silveira', 'Avenida da Saude, 876', 'carolina_silveira@yahoo.com', 01358024695),
(84, 'Raphael Mendes', 'Travessa da Vida, 129', 'raphael_mendes@kinghot.com', 12469135706),
(85, 'Juliana Ribeiro', 'Rua das Virtudes, 765', 'juliana_ribeiro@adress.com', 23580246817),
(86, 'Gustavo Araujo', 'Avenida das Ilusoes, 438', 'gustavo_araujo@yahoo.com', 34691357028),
(87, 'Natalia Figueiredo', 'Travessa da Sabedoria, 907', 'natalia_figueiredo@magamail.com', 45792468039),
(88, 'Leonardo Oliveira', 'Rua das Emocoes, 876', 'leonardo_oliveira@kinghot.com', 56803579120),
(89, 'Isabela Barbosa', 'Avenida da Justica, 654', 'isabela_barbosa@adress.com', 67914680231),
(90, 'Lucas Pereira', 'Travessa da Esperanca, 321', 'lucas_pereira@magamail.com', 78025791342),
(91, 'Tatiane Sousa', 'Rua dos Valores, 789', 'tatiane_sousa@yahoo.com', 89136802453),
(92, 'Fernanda Silva', 'Avenida da Solidariedade, 210', 'fernanda_silva@kinghot.com', 90247913564),
(93, 'Diego Santos', 'Rua das Flores, 123', 'diego_santos@adress.com', 01358024695),
(94, 'Juliana Oliveira', 'Avenida dos Sonhos, 456', 'juliana_oliveira@magamail.com', 12469135706),
(95, 'Marcelo Almeida', 'Travessa das Arvores, 789', 'marcelo_almeida@yahoo.com', 23580246817),
(96, 'Camila Costa', 'Rua da Esperanca, 321', 'camila_costa@kinghot.com', 34691357028),
(97, 'Rafael Gomes', 'Avenida da Paz, 654', 'rafael_gomes@adress.com', 45792468039),
(98, 'Mariana Lima', 'Rua do Amor, 876', 'mariana_lima@magamail.com', 56803579120),
(99, 'Lucas Carvalho', 'Avenida da Amizade, 654', 'lucas_carvalho@yahoo.com', 67914680231),
(100, 'Amanda Oliveira', 'Rua da Liberdade, 321', 'amanda_oliveira@kinghot.com', 78025791342),
(101, 'Joao Silva', 'Rua das Flores, 123', 'joao_silva@yahoo.com', 12345678901),
(102, 'Maria Souza', 'Avenida dos Sonhos, 456', 'maria_souza@kinghot.com', 23456789012),
(103, 'Pedro Santos', 'Travessa das Arvores, 789', 'pedro_santos@adress.com', 34567890123),
(104, 'Ana Oliveira', 'Rua da Esperanca, 321', 'ana_oliveira@magamail.com', 45678901234),
(105, 'Lucas Pereira', 'Avenida da Paz, 654', 'lucas_pereira@yahoo.com', 56789012345),
(106, 'Julia Almeida', 'Rua do Sol, 987', 'julia_almeida@kinghot.com', 67890123456),
(107, 'Carlos Costa', 'Avenida da Liberdade, 210', 'carlos_costa@adress.com', 78901234567),
(108, 'Larissa Ferreira', 'Rua da Alegria, 543', 'larissa_ferreira@magamail.com', 89012345678),
(109, 'Gabriel Martins', 'Travessa dos Sonhos, 876', 'gabriel_martins@yahoo.com', 90123456789),
(110, 'Sara Rocha', 'Avenida da Harmonia, 129', 'sara_rocha@kinghot.com', 01234567890),
(111, 'Rafael Fernandes', 'Rua da Felicidade, 765', 'rafael_fernandes@adress.com', 12345098765),
(112, 'Fernanda Carvalho', 'Avenida das Estrelas, 438', 'fernanda_carvalho@magamail.com', 23450987654),
(113, 'Diego Gomes', 'Travessa das Alegrias, 907', 'diego_gomes@yahoo.com', 34509876543),
(114, 'Laura Dias', 'Rua do Amor, 876', 'laura_dias@kinghot.com', 45098765432),
(115, 'Bruno Pinto', 'Avenida da Amizade, 654', 'bruno_pinto@adress.com', 50987654321),
(116, 'Carolina Correia', 'Rua da Liberdade, 321', 'carolina_correia@magamail.com', 09876543210),
(117, 'Felipe Cunha', 'Travessa dos Amores, 789', 'felipe_cunha@yahoo.com', 98765432109),
(118, 'Isabela Rodrigues', 'Avenida dos Anjos, 210', 'isabela_rodrigues@kinghot.com', 87654321098),
(119, 'Luciana Lima', 'Rua das Paixoes, 543', 'luciana_lima@adress.com', 76543210987),
(120, 'Mateus Silveira', 'Avenida da Saude, 876', 'mateus_silveira@magamail.com', 65432109876),
(121, 'Bianca Mendes', 'Travessa da Vida, 129', 'bianca_mendes@yahoo.com', 54321098765),
(122, 'Vinicius Ribeiro', 'Rua das Virtudes, 765', 'vinicius_ribeiro@kinghot.com', 43210987654),
(123, 'Tatiane Araujo', 'Avenida das Ilusoes, 438', 'tatiane_araujo@adress.com', 32109876543),
(124, 'Eduardo Figueiredo', 'Travessa da Sabedoria, 907', 'eduardo_figueiredo@magamail.com', 21098765432),
(125, 'Juliana Cardoso', 'Rua das Emocoes, 876', 'juliana_cardoso@yahoo.com', 10987654321),
(126, 'Marcelo Barbosa', 'Avenida da Justica, 654', 'marcelo_barbosa@kinghot.com', 98765432109),
(127, 'Amanda Pereira', 'Travessa da Esperanca, 321', 'amanda_pereira@adress.com', 87654321098),
(128, 'Roberto Oliveira', 'Rua dos Valores, 789', 'roberto_oliveira@magamail.com', 76543210987),
(129, 'Patricia Sousa', 'Avenida da Solidariedade, 210', 'patricia_sousa@yahoo.com', 65432109876);

INSERT INTO autores (autor_id, nome, endereco, editora_id) 
VALUES
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

INSERT INTO editoras (editora_id, nome, endereco, cnpj)
VALUES 
(28456,'Editora_Iluminar', 'Av._das_Estrelas,_123,_Luminaria_do_Norte', '123456789/0001-01'),
(18457,'Editora_Aurora', 'Rua_dos_Sonhos,_456,_Cidade_dos_Livros', '987654321/0001-02'),
(28458,'Editora_Encantos_Literarios', 'Praca_das_Fabulas,_789,_Bairro_das_Historias', '567890123/0001-03'),
(28459,'Editora_Paginas_Magicas', 'Alameda_dos_Contos,_1011,_Vale_da_Imaginacao', '345678901/0001-04'),
(28460,'Editora_Sussurros_Poeticos', 'Travessa_das_Metaforas,_1213,_Ruas_das_Rimas', '901234567/0001-05'),
(28461,'Editora_Luar', 'Rua_das_Estrelas,_789,_Bairro_do_Luar', '111111111/0001-06'),
(28462,'Editora_Fantasia', 'Avenida_dos_Sonhos,_101,_Cidade_das_Maravilhas', '222222222/0001-07'),
(28463,'Editora_Imaginario', 'Alameda_das_Fabulas,_202,_Terra_dos_Sonhos', '333333333/0001-08');

INSERT INTO vendedores (vendedor_id, nome, matricula) 
VALUES
(1001, 'Joao_Silva', 011001),
(1002, 'Maria_Santos', 011002),
(1003, 'Pedro_Oliveira', 011003),
(1004, 'Ana_Souza', 011004),
(1005, 'Lucas_Costa', 011005);

INSERT INTO livros (livro_id, nome, autor_id, editora_id, genero) 
VALUES
(10001, 'O Senhor dos Aneis', 1001, 28456, 'Fantasia'),
(23456, 'Orgulho e Preconceito', 1010, 18457, 'Romance'),
(38972, 'Harry Potter e a Pedra Filosofal', 1005, 28460, 'Fantasia'),
(54321, '1984', 1003, 28458, 'Ficcao Cientifica'),
(67890, 'Dom Quixote', 1010, 28459, 'Aventura'),
(78901, 'Crime e Castigo', 1015, 28462, 'Suspense'),
(12345, 'O Pequeno Principe', 1008, 28463, 'Fantasia'),
(45678, 'As Cronicas de Narnia', 1009, 28461, 'Fantasia'),
(98765, 'Moby Dick', 1001, 28456, 'Aventura'),
(54721, 'Guerra e Paz', 1010, 18457, 'Historia'),
(13579, 'Hamlet', 1011, 28458, 'Drama'),
(24680, 'A Metamorfose', 1012, 28459, 'Ficcao'),
(87654, 'A Divina Comedia', 1013, 28460, 'Classico'),
(87653, 'A Revolucao dos Bichos', 1014, 28461, 'Fabula'),
(11223, 'Ulisses', 1015, 28462, 'Epico'),
(33445, 'O Grande Gatsby', 1016, 28463, 'Romance'),
(55667, 'A Ilha do Tesouro', 1017, 28456, 'Aventura'),
(77889, 'A Odisseia', 1018, 18457, 'Epico'),
(99000, 'Anna Karenina', 1019, 28458, 'Romance'),
(66778, 'Dracula', 1020, 28459, 'Terror'),
(88990, 'O Coracao das Trevas', 1013, 28460, 'Aventura'),
(11224, 'A Maquina do Tempo', 1012, 28461, 'Ficcao Cientifica'),
(44556, 'O Retrato de Dorian Gray', 1011, 28462, 'Fantasia'),
(66779, 'Os Tres Mosqueteiros', 1011, 28463, 'Aventura'),
(22334, 'Alice no Pais das Maravilhas', 1015, 28456, 'Fantasia'),
(55668, 'Robinson Crusoé', 1002, 18457, 'Aventura'),
(77890, 'O Conde de Monte Cristo', 1009, 28458, 'Aventura'),
(99001, 'A Arte da Guerra', 1018, 28459, 'Filosofia'),
(33446, 'A Odisseia de Homero', 1011, 28460, 'Epico'),
(66780, 'Os Miseraveis', 1002, 28461, 'Drama');

INSERT INTO vendas (cliente_id, vendedor_id, livro_id, data_venda)
VALUES
(2, 1001, 22334, '2024-05-27'),
(4, 1002, 45678, '2024-05-28'),
(11, 1003, 33446, '2024-05-29'),
(2, 1004, 12345, '2024-05-30'),
(4, 1005, 13579, '2024-05-31'),
(5, 1002, 22334, '2024-05-31'),
(10, 1003, 45678, '2024-05-31'),
(15, 1001, 54321, '2024-05-31'),
(29, 1005, 66778, '2024-05-31'),
(11, 1002, 99000, '2024-06-01'),
(31, 1002, 87654, '2024-06-02'),
(22, 1001, 66779, '2024-06-03'),
(23, 1002, 11224, '2024-06-04'),
(1, 1005, 67890, '2024-06-05'),
(6, 1004, 99001, '2024-06-06'),   
(8, 1003, 11223, '2024-06-07'),  
(12, 1005, 33445, '2024-06-08'), 
(17, 1001, 66780, '2024-06-09');

-- VIEW 1 -- RETORNA AUTORES MAIS VENDIDOS

CREATE VIEW autor_mais_vendido AS
SELECT a.nome_autor, COUNT(v.venda_id) AS livros_vendidos 
FROM vendas v
JOIN livros l ON v.livro_id = l.livro_id
JOIN autores a ON l.autor_id = a.autor_id 
GROUP BY a.nome_autor 
ORDER BY a.nome_autor ASC;

-- VIEW 2 -- RETORNA QUANTOS CLIENTES TEMOS POR CIDADE

CREATE VIEW cidade_cliente AS
SELECT cidade, COUNT(*) AS numero_clientes
FROM clientes
GROUP BY cidade;

SELECT * FROM cidade_cliente;

-- VIEW 3 -- RETORNA QUAL A EDITORA DE CADA AUTOR

CREATE VIEW editora_autor AS
SELECT a.nome_autor, e.nome_editora
FROM autores AS a
JOIN editoras AS e ON a.editora_id = e.editora_id
ORDER BY a.nome_autor;

-- VIEW 4 -- RETORNA QUAL A EDITORA DE CADA LIVRO

CREATE VIEW editora_livro AS
SELECT l.nome_livro, e.nome_editora
FROM livros AS l
JOIN editoras AS e ON l.editora_id = e.editora_id
ORDER BY nome_livro;

SELECT * FROM editora_livro;

-- VIEW 5 -- RETORNA OS DADOS DE COMPRA DE UM CLIENTE

CREATE VIEW compra_cliente AS
SELECT c.cliente_id, c.nome_cliente, l.nome_livro, v.venda_id, l.livro_id, v.data_venda
FROM vendas v 
JOIN livros l ON v.livro_id = l.livro_id 
JOIN clientes c using(cliente_id);

-- CRIANDO FUNÇÃO PROJETO FINAL

USE livraria;


-- PRIMEIRA FUNÇÃO -- RETORNA O NOME DO LIVRO PELO NUMERO DO SEU ID.

DELIMITER //

CREATE FUNCTION retorna_nome_livro(id_livro INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	DECLARE casca_vazia VARCHAR(50);
	SELECT nome INTO casca_vazia FROM livros WHERE livro_id = id_livro;
	RETURN casca_vazia;
END 
//
DELIMITER ;

SELECT retorna_nome_livro(12345);

-- SEGUNDA FUNÇÃO -- RETORNA NUMERO DE VENDAS POR EDITORAS.

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

-- CRIANDO STORED PROCEDURES PROJETO FINAL

-- PROCEDURE QUE ADICIONA CLIENTES

DELIMITER //

CREATE PROCEDURE  adicionar_cliente(
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

-- PROCEDURE QUE RETORNA TODAS AS VENDAS DE UM LIVRO PELO LIVRO_ID

DELIMITER //

CREATE PROCEDURE total_venda_livro(
	IN id_esbn INT,
	OUT total_venda INT
)
BEGIN
	SELECT count(venda_id) INTO total_venda FROM vendas WHERE venda_id = id_esbn;
END;

DELIMITER ;

-- CRIAÇÃO DAS TABELAS DE LOG

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

-- CRIAÇÃO DOS TRIGGERS PROJETO FINAL

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



-- CRIAÇÃO DAS FUNÇÕES PROJETO FINAL

-- PRIMEIRA FUNÇÃO -- RETORNA O NOME DO LIVRO PELO NUMERO DO SEU ID.

DELIMITER //

CREATE FUNCTION retorna_nome_livro(id_livro INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	DECLARE casca_vazia VARCHAR(50);
	SELECT nome INTO casca_vazia FROM livros WHERE livro_id = id_livro;
	RETURN casca_vazia;
END 
//
DELIMITER ;

-- SEGUNDA FUNÇÃO -- RETORNA NUMERO DE VENDAS POR EDITORAS.

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

































