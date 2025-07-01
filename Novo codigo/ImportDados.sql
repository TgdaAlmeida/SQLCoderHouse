use livraria;



INSERT INTO editoras (editora_id, nome, endereco, cnpj) VALUES 
(28456,'Editora_Iluminar', 'Av._das_Estrelas,_123,_Luminaria_do_Norte', '123456789/0001-01'),
(18457,'Editora_Aurora', 'Rua_dos_Sonhos,_456,_Cidade_dos_Livros', '987654321/0001-02'),
(28458,'Editora_Encantos_Literarios', 'Praca_das_Fabulas,_789,_Bairro_das_Historias', '567890123/0001-03'),
(28459,'Editora_Paginas_Magicas', 'Alameda_dos_Contos,_1011,_Vale_da_Imaginacao', '345678901/0001-04'),
(28460,'Editora_Sussurros_Poeticos', 'Travessa_das_Metaforas,_1213,_Ruas_das_Rimas', '901234567/0001-05'),
(28461,'Editora_Luar', 'Rua_das_Estrelas,_789,_Bairro_do_Luar', '111111111/0001-06'),
(28462,'Editora_Fantasia', 'Avenida_dos_Sonhos,_101,_Cidade_das_Maravilhas', '222222222/0001-07'),
(28463,'Editora_Imaginario', 'Alameda_das_Fabulas,_202,_Terra_dos_Sonhos', '333333333/0001-08');

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





































