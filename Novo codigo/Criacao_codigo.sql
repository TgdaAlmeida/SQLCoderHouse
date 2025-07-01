-- Roteiro aula 7

-- Tabelas
-- Views
	-- Visualizações de dados
-- Funções
	-- Funções integradas
	-- Funções estruturadas
	-- Funções retornam um unico valor e sao utilizadas em consultas
 
-- Triggers
	-- Atua quando tivermos 3 comandos: INSERT, DELETE e UPDATE.

-- Stored Procedores

-- -----------------------------------------------


USE livraria;

INSERT INTO vendas (cliente_id, vendedor_id, isbn_id, data, metodo_pagamento)
VALUES 
   (123, 54321, 1234, '2024-05-01', 'credito'),
    (456, 98765, 5678, '2024-05-02', 'debito'),
    (789, 24680, 9101, '2024-05-03', 'pix'),
    (234, 13579, 2345, '2024-05-04', 'credito'),
    (567, 80246, 6789, '2024-05-05', 'debito'),
    (890, 97531, 1011, '2024-05-06', 'pix'),
    (345, 64280, 3456, '2024-05-07', 'credito'),
    (678, 15937, 7890, '2024-05-08', 'debito'),
    (901, 42680, 1121, '2024-05-09', 'pix'),
    (456, 75319, 4567, '2024-05-10', 'credito'),
    (789, 28046, 8901, '2024-05-11', 'debito'),
    (123, 93715, 1213, '2024-05-12', 'pix'),
    (234, 68025, 5678, '2024-05-13', 'credito'),
    (567, 19384, 9012, '2024-05-14', 'debito'),
    (890, 42680, 1234, '2024-05-15', 'pix'),
    (345, 97531, 5678, '2024-05-16', 'credito'),
    (678, 80246, 9101, '2024-05-17', 'debito'),
    (901, 13579, 2345, '2024-05-18', 'pix'),
    (123, 64280, 6789, '2024-05-19', 'credito'),
    (456, 15937, 1011, '2024-05-20', 'debito');
    
   
   
   INSERT INTO clientes (cliente_id, nome, endereco, email, cpf)
VALUES 
     (101, 'Joao Silva', 'Rua das Flores, 123', 'joao_silva@yahoo.com', '12345678901'),
    (102, 'Maria Souza', 'Avenida dos Sonhos, 456', 'maria_souza@kinghot.com', '23456789012'),
    (103, 'Pedro Santos', 'Travessa das Arvores, 789', 'pedro_santos@adress.com', '34567890123'),
    (104, 'Ana Oliveira', 'Rua da Esperanca, 321', 'ana_oliveira@magamail.com', '45678901234'),
    (105, 'Lucas Pereira', 'Avenida da Paz, 654', 'lucas_pereira@yahoo.com', '56789012345'),
    (106, 'Julia Almeida', 'Rua do Sol, 987', 'julia_almeida@kinghot.com', '67890123456'),
    (107, 'Carlos Costa', 'Avenida da Liberdade, 210', 'carlos_costa@adress.com', '78901234567'),
    (108, 'Larissa Ferreira', 'Rua da Alegria, 543', 'larissa_ferreira@magamail.com', '89012345678'),
    (109, 'Gabriel Martins', 'Travessa dos Sonhos, 876', 'gabriel_martins@yahoo.com', '90123456789'),
    (110, 'Sara Rocha', 'Avenida da Harmonia, 129', 'sara_rocha@kinghot.com', '01234567890'),
    (111, 'Rafael Fernandes', 'Rua da Felicidade, 765', 'rafael_fernandes@adress.com', '12345098765'),
    (112, 'Fernanda Carvalho', 'Avenida das Estrelas, 438', 'fernanda_carvalho@magamail.com', '23450987654'),
    (113, 'Diego Gomes', 'Travessa das Alegrias, 907', 'diego_gomes@yahoo.com', '34509876543'),
    (114, 'Laura Dias', 'Rua do Amor, 876', 'laura_dias@kinghot.com', '45098765432'),
    (115, 'Bruno Pinto', 'Avenida da Amizade, 654', 'bruno_pinto@adress.com', '50987654321'),
    (116, 'Carolina Correia', 'Rua da Liberdade, 321', 'carolina_correia@magamail.com', '09876543210'),
    (117, 'Felipe Cunha', 'Travessa dos Amores, 789', 'felipe_cunha@yahoo.com', '98765432109'),
    (118, 'Isabela Rodrigues', 'Avenida dos Anjos, 210', 'isabela_rodrigues@kinghot.com', '87654321098'),
    (119, 'Luciana Lima', 'Rua das Paixoes, 543', 'luciana_lima@adress.com', '76543210987'),
    (120, 'Mateus Silveira', 'Avenida da Saude, 876', 'mateus_silveira@magamail.com', '65432109876'),
    (121, 'Bianca Mendes', 'Travessa da Vida, 129', 'bianca_mendes@yahoo.com', '54321098765'),
    (122, 'Vinicius Ribeiro', 'Rua das Virtudes, 765', 'vinicius_ribeiro@kinghot.com', '43210987654'),
    (123, 'Tatiane Araujo', 'Avenida das Ilusoes, 438', 'tatiane_araujo@adress.com', '32109876543'),
    (124, 'Eduardo Figueiredo', 'Travessa da Sabedoria, 907', 'eduardo_figueiredo@magamail.com', '21098765432'),
    (125, 'Juliana Cardoso', 'Rua das Emocoes, 876', 'juliana_cardoso@yahoo.com', '10987654321'),
    (126, 'Marcelo Barbosa', 'Avenida da Justica, 654', 'marcelo_barbosa@kinghot.com', '98765432109'),
    (127, 'Amanda Pereira', 'Travessa da Esperanca, 321', 'amanda_pereira@adress.com', '87654321098'),
    (128, 'Roberto Oliveira', 'Rua dos Valores, 789', 'roberto_oliveira@magamail.com', '76543210987'),
    (129, 'Patricia Sousa', 'Avenida da Solidariedade, 210', 'patricia_sousa@yahoo.com', '65432109876');
   
   SELECT * FROM clientes;
  
  INSERT INTO clientes (cliente_id, nome, endereco, email, cpf)
VALUES 
    (36, 'Vanessa Santos', 'Avenida dos Sonhos, 456', 'vanessa_santos@kinghot.com', '24681357902'),
    (37, 'Ricardo Pereira', 'Travessa das Arvores, 789', 'ricardo_pereira@adress.com', '35792468013'),
    (38, 'Fernanda Almeida', 'Rua da Esperanca, 321', 'fernanda_almeida@magamail.com', '46813579204'),
    (39, 'Guilherme Costa', 'Avenida da Paz, 654', 'guilherme_costa@yahoo.com', '57924680135'),
    (40, 'Cristina Martins', 'Rua do Sol, 987', 'cristina_martins@kinghot.com', '68015792436'),
    (41, 'Roberto Lima', 'Avenida da Liberdade, 210', 'roberto_lima@adress.com', '79146802357'),
    (42, 'Mariana Ferreira', 'Rua da Alegria, 543', 'mariana_ferreira@magamail.com', '80257913468'),
    (43, 'Leonardo Gomes', 'Travessa dos Sonhos, 876', 'leonardo_gomes@yahoo.com', '91368024579'),
    (44, 'Patricia Rocha', 'Avenida da Harmonia, 129', 'patricia_rocha@kinghot.com', '02479135786'),
    (45, 'Thiago Fernandes', 'Rua da Felicidade, 765', 'thiago_fernandes@adress.com', '13580246917'),
    (46, 'Ana Paula Carvalho', 'Avenida das Estrelas, 438', 'ana_paula_carvalho@magamail.com', '24691357028'),
    (47, 'Felipe Oliveira', 'Travessa das Alegrias, 907', 'felipe_oliveira@yahoo.com', '35792468019'),
    (48, 'Tatiane Silva', 'Rua do Amor, 876', 'tatiane_silva@kinghot.com', '46803579120'),
    (49, 'Bruno Pereira', 'Avenida da Amizade, 654', 'bruno_pereira@adress.com', '57914680231'),
    (50, 'Carla Correia', 'Rua da Liberdade, 321', 'carla_correia@magamail.com', '68025791342'),
    (51, 'Joao Cunha', 'Travessa dos Amores, 789', 'joao_cunha@yahoo.com', '79136802453'),
    (52, 'Marina Rodrigues', 'Avenida dos Anjos, 210', 'marina_rodrigues@kinghot.com', '90247913564'),
    (53, 'Rafael Lima', 'Rua das Paixoes, 543', 'rafael_lima@adress.com', '01358024695'),
    (54, 'Laura Silveira', 'Avenida da Saude, 876', 'laura_silveira@magamail.com', '12469135706'),
    (55, 'Diego Mendes', 'Travessa da Vida, 129', 'diego_mendes@yahoo.com', '23580246817'),
    (56, 'Camila Ribeiro', 'Rua das Virtudes, 765', 'camila_ribeiro@kinghot.com', '34691357028'),
    (57, 'Marcos Araujo', 'Avenida das Ilusoes, 438', 'marcos_araujo@adress.com', '45792468039'),
    (58, 'Juliana Figueiredo', 'Travessa da Sabedoria, 907', 'juliana_figueiredo@magamail.com', '56803579120'),
    (59, 'Lucas Cardoso', 'Rua das Emocoes, 876', 'lucas_cardoso@yahoo.com', '67914680231'),
    (60, 'Aline Barbosa', 'Avenida da Justica, 654', 'aline_barbosa@kinghot.com', '78025791342'),
    (61, 'Pedro Pereira', 'Travessa da Esperanca, 321', 'pedro_pereira@adress.com', '89136802453'),
    (62, 'Mariana Oliveira', 'Rua dos Valores, 789', 'mariana_oliveira@magamail.com', '90247913564'),
    (63, 'Matheus Sousa', 'Avenida da Solidariedade, 210', 'matheus_sousa@yahoo.com', '01358024695'),
    (64, 'Caroline Silva', 'Rua das Flores, 123', 'caroline_silva@kinghot.com', '12469135706'),
    (65, 'Raphaela Santos', 'Avenida dos Sonhos, 456', 'raphaela_santos@adress.com', '23580246817'),
    (66, 'Gustavo Pereira', 'Travessa das Arvores, 789', 'gustavo_pereira@magamail.com', '34691357028'),
    (67, 'Natalia Almeida', 'Rua da Esperanca, 321', 'natalia_almeida@yahoo.com', '45792468039'),
    (68, 'Leonardo Costa', 'Avenida da Paz, 654', 'leonardo_costa@kinghot.com', '56803579120'),
    (69, 'Isabela Martins', 'Rua do Sol, 987', 'isabela_martins@adress.com', '67914680231'),
    (70, 'Lucas Ferreira', 'Avenida da Liberdade, 210', 'lucas_ferreira@magamail.com', '78025791342'),
    (71, 'Tatiane Gomes', 'Rua da Alegria, 543', 'tatiane_gomes@yahoo.com', '89136802453'),
    (72, 'Fernanda Rocha', 'Travessa dos Sonhos, 876', 'fernanda_rocha@kinghot.com', '90247913564'),
    (73, 'Diego Fernandes', 'Avenida da Harmonia, 129', 'diego_fernandes@adress.com', '01358024695'),
    (74, 'Juliana Carvalho', 'Rua da Felicidade, 765', 'juliana_carvalho@magamail.com', '12469135706'),
    (75, 'Marcelo Oliveira', 'Avenida das Estrelas, 438', 'marcelo_oliveira@yahoo.com', '23580246817'),
    (76, 'Camila Lima', 'Travessa das Alegrias, 907', 'camila_lima@kinghot.com', '34691357028'),
    (77, 'Rafaela Dias', 'Rua do Amor, 876', 'rafaela_dias@adress.com', '45792468039'),
    (78, 'Marcos Pinto', 'Avenida da Amizade, 654', 'marcos_pinto@magamail.com', '56803579120'),
    (79, 'Gabriela Correia', 'Rua da Liberdade, 321', 'gabriela_correia@yahoo.com', '67914680231'),
    (80, 'Thiago Cunha', 'Travessa dos Amores, 789', 'thiago_cunha@kinghot.com', '78025791342'),
    (81, 'Beatriz Rodrigues', 'Avenida dos Anjos, 210', 'beatriz_rodrigues@adress.com', '89136802453'),
    (82, 'Lucas Lima', 'Rua das Paixoes, 543', 'lucas_lima@magamail.com', '90247913564'),
    (83, 'Carolina Silveira', 'Avenida da Saude, 876', 'carolina_silveira@yahoo.com', '01358024695'),
    (84, 'Raphael Mendes', 'Travessa da Vida, 129', 'raphael_mendes@kinghot.com', '12469135706'),
    (85, 'Juliana Ribeiro', 'Rua das Virtudes, 765', 'juliana_ribeiro@adress.com', '23580246817'),
    (86, 'Gustavo Araujo', 'Avenida das Ilusoes, 438', 'gustavo_araujo@yahoo.com', '34691357028'),
    (87, 'Natalia Figueiredo', 'Travessa da Sabedoria, 907', 'natalia_figueiredo@magamail.com', '45792468039'),
    (88, 'Leonardo Oliveira', 'Rua das Emocoes, 876', 'leonardo_oliveira@kinghot.com', '56803579120'),
    (89, 'Isabela Barbosa', 'Avenida da Justica, 654', 'isabela_barbosa@adress.com', '67914680231'),
    (90, 'Lucas Pereira', 'Travessa da Esperanca, 321', 'lucas_pereira@magamail.com', '78025791342'),
    (91, 'Tatiane Sousa', 'Rua dos Valores, 789', 'tatiane_sousa@yahoo.com', '89136802453'),
    (92, 'Fernanda Silva', 'Avenida da Solidariedade, 210', 'fernanda_silva@kinghot.com', '90247913564'),
    (93, 'Diego Santos', 'Rua das Flores, 123', 'diego_santos@adress.com', '01358024695'),
    (94, 'Juliana Oliveira', 'Avenida dos Sonhos, 456', 'juliana_oliveira@magamail.com', '12469135706'),
    (95, 'Marcelo Almeida', 'Travessa das Arvores, 789', 'marcelo_almeida@yahoo.com', '23580246817'),
    (96, 'Camila Costa', 'Rua da Esperanca, 321', 'camila_costa@kinghot.com', '34691357028'),
    (97, 'Rafael Gomes', 'Avenida da Paz, 654', 'rafael_gomes@adress.com', '45792468039'),
    (98, 'Mariana Lima', 'Rua do Amor, 876', 'mariana_lima@magamail.com', '56803579120'),
    (99, 'Lucas Carvalho', 'Avenida da Amizade, 654', 'lucas_carvalho@yahoo.com', '67914680231'),
    (100, 'Amanda Oliveira', 'Rua da Liberdade, 321', 'amanda_oliveira@kinghot.com', '78025791342');
   
   SELECT * FROM vendas;
   
INSERT INTO vendas (cliente_id, vendedor_id, isbn_id, data, metodo_pagamento)
VALUES
    (101, 1001, '13137795', '2024-06-01', 'credito'),
    (102, 1002, '74890717', '2024-06-02', 'debito'),
    (103, 1003, '163549497', '2024-06-03', 'pix'),
    (104, 1004, '174159364', '2024-06-04', 'credito'),
    (105, 1005, '248237499', '2024-06-05', 'debito'),
    (106, 1001, '265002054', '2024-06-06', 'pix'),
    (107, 1002, '290334215', '2024-06-07', 'credito'),
    (108, 1003, '326037480', '2024-06-08', 'debito'),
    (109, 1004, '365080323', '2024-06-09', 'pix'),
    (110, 1005, '390049241', '2024-06-10', 'credito'),
    (101, 1001, '413379397', '2024-06-01', 'credito'),
    (102, 1002, '438693059', '2024-06-02', 'debito'),
    (103, 1003, '451371413', '2024-06-03', 'pix'),
    (104, 1004, '454007655', '2024-06-04', 'credito'),
    (105, 1005, '475032146', '2024-06-05', 'debito'),
    (106, 1001, '509322470', '2024-06-06', 'pix'),
    (107, 1002, '519473756', '2024-06-07', 'credito'),
    (108, 1003, '536205103', '2024-06-08', 'debito'),
    (109, 1004, '580286512', '2024-06-09', 'pix'),
    (110, 1005, '609461667', '2024-06-10', 'credito'),
    (101, 1001, '640592571', '2024-06-01', 'credito'),
    (102, 1002, '690521293', '2024-06-02', 'debito'),
    (103, 1003, '728889684', '2024-06-03', 'pix'),
    (104, 1004, '783774366', '2024-06-04', 'credito'),
    (105, 1005, '816032347', '2024-06-05', 'debito'),
    (106, 1001, '829351065', '2024-06-06', 'pix'),
    (107, 1002, '855489615', '2024-06-07', 'credito'),
    (108, 1003, '895969807', '2024-06-08', 'debito'),
    (109, 1004, '972133797', '2024-06-09', 'pix'),
    (110, 1005, '989200572', '2024-06-10', 'credito');
   
   INSERT INTO vendas (cliente_id, vendedor_id, isbn_id, data, metodo_pagamento)
VALUES
    (15, 1001, '13137795', '2024-06-01', 'credito'),
    (16, 1002, '74890717', '2024-06-02', 'debito'),
    (17, 1003, '163549497', '2024-06-03', 'pix'),
    (18, 1004, '174159364', '2024-06-04', 'credito'),
    (19, 1005, '248237499', '2024-06-05', 'debito'),
    (20, 1001, '265002054', '2024-06-06', 'pix'),
    (21, 1002, '290334215', '2024-06-07', 'credito'),
    (22, 1003, '326037480', '2024-06-08', 'debito'),
    (23, 1004, '365080323', '2024-06-09', 'pix'),
    (24, 1005, '390049241', '2024-06-10', 'credito'),
    (25, 1001, '413379397', '2024-06-01', 'credito'),
    (26, 1002, '438693059', '2024-06-02', 'debito'),
    (27, 1003, '451371413', '2024-06-03', 'pix'),
    (28, 1004, '454007655', '2024-06-04', 'credito'),
    (29, 1005, '475032146', '2024-06-05', 'debito'),
    (30, 1001, '509322470', '2024-06-06', 'pix'),
    (31, 1002, '519473756', '2024-06-07', 'credito'),
    (32, 1003, '536205103', '2024-06-08', 'debito'),
    (33, 1004, '580286512', '2024-06-09', 'pix'),
    (34, 1005, '609461667', '2024-06-10', 'credito');
   
    
   SELECT * FROM vendas;
