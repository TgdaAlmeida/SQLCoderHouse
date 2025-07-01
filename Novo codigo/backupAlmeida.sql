-- Foram salvos os dados das seguintes tabelas do banco livraria_oficial:
    -- # Autores
    -- # Clientes
    -- # Editoras
    -- # Autores
    -- # Livros
    -- # Vendas
    -- # Vendedores


-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: livraria_oficial
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (1001,'Carlos Silva','Rua das Flores, 123','Sao Paulo',28456),(1002,'Maria Oliveira','Avenida Central, 456','Rio de Janeiro',18457),(1003,'Joao Santos','Travessa dos Bosques, 789','Belo Horizonte',28458),(1004,'Ana Costa','Rua das Palmeiras, 1011','Salvador',28459),(1005,'Pedro Rodrigues','Alameda das Aguias, 1213','Curitiba',28460),(1006,'Juliana Martins','Praca das Fontes, 1415','Fortaleza',28461),(1007,'Andre Almeida','Avenida dos Girassois, 1617','Recife',28462),(1008,'Luana Pereira','Rua das Violetas, 1819','Manaus',28463),(1009,'Ricardo Fernandes','Alameda dos Lagos, 2021','Brasilia',28456),(1010,'Isabel Sousa','Travessa das Mares, 2223','Porto Alegre',18457),(1011,'Antonio Gomes','Avenida das Montanhas, 2425','Belem',28458),(1012,'Mariana Vieira','Rua das Estrelas, 2627','Goiania',28459),(1013,'Rafael Lima','Praca dos Passaros, 2829','Natal',28460),(1014,'Laura Castro','Avenida das Pedras, 3031','Vitoria',28461),(1015,'Bruno Carvalho','Rua dos Ventos, 3233','Campo Grande',28462),(1016,'Camila Ribeiro','Travessa das Flores, 3435','Joao Pessoa',28463),(1017,'Thiago Neves','Avenida dos Sonhos, 3637','Maceio',28456),(1018,'Paula Dias','Alameda das Nuvens, 3839','Florianopolis',18457),(1019,'Gabriel Barbosa','Rua dos Anjos, 4041','Santos',28458),(1020,'Beatriz Nascimento','Praca das Arvores, 4243','Porto Seguro',28459);
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Ana','Silva','Rua das Flores, 123','Sao Paulo','ana.silva@email.com',12345678901),(2,'Carlos','Oliveira','Avenida Central, 456','Rio de Janeiro','carlos.oliveira@email.com',23456789012),(3,'Mariana','Santos','Travessa dos Bosques, 789','Belo Horizonte','mariana.santos@email.com',34567890123),(4,'Pedro','Costa','Rua das Palmeiras, 1011','Porto Alegre','pedro.costa@email.com',45678901234),(5,'Juliana','Pereira','Alameda das Aguias, 1213','Manaus','juliana.pereira@email.com',56789012345),(6,'Lucas','Vieira','Praca das Fontes, 1415','Curitiba','lucas.vieira@email.com',67890123456),(7,'Gabriela','Rodrigues','Avenida dos Girassois, 1617','Salvador','gabriela.rodrigues@email.com',78901234567),(8,'Marcos','Almeida','Rua das Violetas, 1819','Fortaleza','marcos.almeida@email.com',89012345678),(9,'Tatiane','Lima','Alameda dos Lagos, 2021','Recife','tatiane.lima@email.com',90123456789),(10,'Fernando','Barbosa','Travessa das Mares, 2223','Brasilia','fernando.barbosa@email.com',10234567890),(11,'Carolina','Gomes','Avenida das Montanhas, 2425','Goiânia','carolina.gomes@email.com',12345678901),(12,'Thiago','Nascimento','Rua das Estrelas, 2627','Belém','thiago.nascimento@email.com',23456789012),(13,'Aline','Fernandes','Praca dos Passaros, 2829','São Luís','aline.fernandes@email.com',34567890123),(14,'Rafael','Souza','Avenida das Pedras, 3031','Porto Velho','rafael.souza@email.com',45678901234),(15,'Isabela','Castro','Rua dos Ventos, 3233','Vitória','isabela.castro@email.com',56789012345),(16,'Paulo','Ribeiro','Travessa das Flores, 3435','Joao Pessoa','paulo.ribeiro@email.com',67890123456),(17,'Amanda','Oliveira','Avenida dos Sonhos, 3637','Aracaju','amanda.oliveira@email.com',78901234567),(18,'Jose','Silva','Alameda das Nuvens, 3839','Palmas','jose.silva@email.com',89012345678),(19,'Laura','Santos','Rua dos Anjos, 4041','Campo Grande','laura.santos@email.com',90123456789),(20,'Diego','Costa','Praca das Arvores, 4243','Cuiaba','diego.costa@email.com',10234567890),(21,'Camila','Almeida','Avenida das Rosas, 4445','Boa Vista','camila.almeida@email.com',12345678901),(22,'Bruno','Pereira','Rua das Flores, 4647','Teresina','bruno.pereira@email.com',23456789012),(23,'Marcela','Lima','Alameda dos Cisnes, 4849','Florianopolis','marcela.lima@email.com',34567890123),(24,'Rodrigo','Fernandes','Avenida dos Passaros, 5051','São José','rodrigo.fernandes@email.com',45678901234),(25,'Nathalia','Oliveira','Travessa das Borboletas, 5253','Rio Branco','nathalia.oliveira@email.com',56789012345),(26,'Felipe','Santos','Praca das Flores, 5455','Macapa','felipe.santos@email.com',67890123456),(27,'Patricia','Costa','Rua das Estrelas, 5657','Natal','patricia.costa@email.com',78901234567),(28,'Lucas','Oliveira','Alameda dos Ipes, 5859','João Pessoa','lucas.oliveira@email.com',89012345678),(29,'Vanessa','Pereira','Avenida das Tulipas, 6061','Maceio','vanessa.pereira@email.com',90123456789),(30,'Joao','Silva','Travessa das Violetas, 6263','Manaus','joao.silva@email.com',10234567890),(31,'Carolina','Almeida','Praca dos Lirios, 6465','Curitiba','carolina.almeida@email.com',12345678901),(32,'Gustavo','Santos','Rua das Rosas, 6667','Fortaleza','gustavo.santos@email.com',23456789012),(33,'Leticia','Costa','Alameda das Azaleias, 6869','Recife','leticia.costa@email.com',34567890123),(34,'Rafaela','Oliveira','Avenida das Dalias, 7071','Brasilia','rafaela.oliveira@email.com',45678901234),(35,'Fernanda','Pereira','Travessa das Acacias, 7273','Goiânia','fernanda.pereira@email.com',56789012345);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `editoras`
--

LOCK TABLES `editoras` WRITE;
/*!40000 ALTER TABLE `editoras` DISABLE KEYS */;
INSERT INTO `editoras` VALUES (18457,'Editora Aurora','Rua dos Sonhos, 456, Cidade dos Livros','987654321/0001-02'),(28456,'Editora Iluminar','Av. das Estrelas, 123, Luminaria do Norte','123456789/0001-01'),(28458,'Editora Encantos Literarios','Praca das Fabulas, 789, Bairro das Historias','567890123/0001-03'),(28459,'Editora Paginas Magicas','Alameda dos Contos, 1011, Vale da Imaginacao','345678901/0001-04'),(28460,'Editora Sussurros Poeticos','Travessa das Metaforas, 1213, Ruas das Rimas','901234567/0001-05'),(28461,'Editora Luar','Rua das Estrelas, 789, Bairro do Luar','111111111/0001-06'),(28462,'Editora Fantasia','Avenida dos Sonhos, 101, Cidade das Maravilhas','222222222/0001-07'),(28463,'Editora Imaginario','Alameda das Fabulas, 202, Terra dos Sonhos','333333333/0001-08');
/*!40000 ALTER TABLE `editoras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `livros`
--

LOCK TABLES `livros` WRITE;
/*!40000 ALTER TABLE `livros` DISABLE KEYS */;
INSERT INTO `livros` VALUES (10001,'O Senhor dos Aneis',1001,28456,'Fantasia'),(11223,'Ulisses',1015,28462,'Epico'),(11224,'A Maquina do Tempo',1012,28461,'Ficcao Cientifica'),(12345,'O Pequeno Principe',1008,28463,'Fantasia'),(13579,'Hamlet',1011,28458,'Drama'),(22334,'Alice no Pais das Maravilhas',1015,28456,'Fantasia'),(23456,'Orgulho e Preconceito',1010,18457,'Romance'),(24680,'A Metamorfose',1012,28459,'Ficcao'),(33445,'O Grande Gatsby',1016,28463,'Romance'),(33446,'A Odisseia de Homero',1011,28460,'Epico'),(38972,'Harry Potter e a Pedra Filosofal',1005,28460,'Fantasia'),(44556,'O Retrato de Dorian Gray',1011,28462,'Fantasia'),(45678,'As Cronicas de Narnia',1009,28461,'Fantasia'),(54321,'1984',1003,28458,'Ficcao Cientifica'),(54721,'Guerra e Paz',1010,18457,'Historia'),(55667,'A Ilha do Tesouro',1017,28456,'Aventura'),(55668,'Robinson Crusoé',1002,18457,'Aventura'),(66778,'Dracula',1020,28459,'Terror'),(66779,'Os Tres Mosqueteiros',1011,28463,'Aventura'),(66780,'Os Miseraveis',1002,28461,'Drama'),(67890,'Dom Quixote',1010,28459,'Aventura'),(77889,'A Odisseia',1018,18457,'Epico'),(77890,'O Conde de Monte Cristo',1009,28458,'Aventura'),(78901,'Crime e Castigo',1015,28462,'Suspense'),(87653,'A Revolucao dos Bichos',1014,28461,'Fabula'),(87654,'A Divina Comedia',1013,28460,'Classico'),(88990,'O Coracao das Trevas',1013,28460,'Aventura'),(98765,'Moby Dick',1001,28456,'Aventura'),(99000,'Anna Karenina',1019,28458,'Romance'),(99001,'A Arte da Guerra',1018,28459,'Filosofia');
/*!40000 ALTER TABLE `livros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (1,2,1001,22334,'2024-05-27'),(2,4,1002,45678,'2024-05-28'),(3,11,1003,33446,'2024-05-29'),(4,2,1004,12345,'2024-05-30'),(5,4,1005,13579,'2024-05-31'),(6,5,1002,22334,'2024-05-31'),(7,10,1003,45678,'2024-05-31'),(8,15,1001,54321,'2024-05-31'),(9,29,1005,66778,'2024-05-31'),(10,11,1002,99000,'2024-06-01'),(11,31,1002,87654,'2024-06-02'),(12,22,1001,66779,'2024-06-03'),(13,23,1002,11224,'2024-06-04'),(14,1,1005,67890,'2024-06-05'),(15,6,1004,99001,'2024-06-06'),(16,8,1003,11223,'2024-06-07'),(17,12,1005,33445,'2024-06-08'),(18,17,1001,66780,'2024-06-09');
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `vendedores`
--

LOCK TABLES `vendedores` WRITE;
/*!40000 ALTER TABLE `vendedores` DISABLE KEYS */;
INSERT INTO `vendedores` VALUES (1001,'Joao','Silva',12987645054),(1002,'Maria','Santos',56545434566),(1003,'Pedro','Oliveira',45676543211),(1004,'Ana','Souza',56879876677),(1005,'Lucas','Costa',21232345423);
/*!40000 ALTER TABLE `vendedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-29 22:04:22
