-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: livro
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `senha` varchar(250) NOT NULL,
  PRIMARY KEY (`id_admin`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'John','johnzeppelin17@gmail.com','john'),(2,'JoÃ£o Vitor','vitorj439@gmail.com','joaovitor');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receitas`
--

DROP TABLE IF EXISTS `receitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receitas` (
  `id_receita` int(11) NOT NULL AUTO_INCREMENT,
  `nome_receita` varchar(2500) DEFAULT NULL,
  `ingredientes` varchar(2500) DEFAULT NULL,
  `preparo` text,
  `tempo_preparo` int(255) DEFAULT NULL,
  `porcoes` int(255) DEFAULT NULL,
  `categoria` set('Bolos e Tortas','Carnes','Saladas e Molhos','Massas','Doces e Sobremesas') DEFAULT NULL,
  `img_receita` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`id_receita`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receitas`
--

LOCK TABLES `receitas` WRITE;
/*!40000 ALTER TABLE `receitas` DISABLE KEYS */;
INSERT INTO `receitas` VALUES (1,'EmpadÃ£o de Carne','250g de farinha de trigo <br />\r\n200g de manteiga gelada sem sal <br />\r\n1 colher de chÃ¡ de sal <br />\r\n55ml de Ã¡gua <br />\r\nazeite de oliva <br />\r\n1 cebola picada <br />\r\n3 dentes de alho picados <br />\r\n600g de carne moÃ­da <br />\r\nSal a gosto <br />\r\nPimenta-do-reino a gosto <br />\r\n1 xÃ­cara de azeitonas verde cortadas em rodelas <br />\r\n1 Â½ xÃ­cara de molho de tomate <br />\r\nÂ½ maÃ§o de salsinha picado <br />\r\n1 gema para pincelar <br />','1- Colocar a farinha em uma tigela e adicionar a manteiga cortada em cubinhos. Amassar com a ponta dos dedos atÃ© formar uma farofa. <br />\r\n2- Adicionar o sal. <br />\r\n3- Adicionar a Ã¡gua aos poucos, atÃ© obter a liga desejada. Reservar na refrigeraÃ§Ã£o por 1 hora. <br />\r\n4- Em uma panela quente, dispor o azeite de oliva e refogar a cebola e o alho. <br />\r\n5- Juntar a carne moÃ­da e refogar atÃ© ficar bem dourada. <br />\r\n6- Temperar com sal e pimenta-do-reino. <br />\r\n7- Juntar as azeitonas em rodelas e o molho de tomate. <br />\r\n8- Deixar ferver atÃ© o molho ficar bem espesso e grudado na carne. <br />\r\n9- Desligar o fogo e juntar a salsinha. Reservar para esfriar. <br />\r\n10- Dividir a massa em 2. Abrir com auxÃ­lio de um rolo as 2 partes. <br />\r\n11- Dispor uma parte sob uma forma e colocar o recheio de carne. <br />\r\n12- Cobrir com a outra parte de massa, pincelar a gema e assar por 1 hora em forno preaquecido a 180 graus. <br />',180,5,'Carnes','1.jpg'),(2,'Torta de Frango de Frigideira','Azeite de oliva para refogar <br />\r\nÂ½ cebola cortada em cubos <br />\r\n1 dente de alho picado <br />\r\n300g de peito de frango cozido desfiado <br />\r\n2 colheres de sopa de extrato de tomate <br />\r\n1 pitada de sal <br />\r\n1 colher de chÃ¡ de orÃ©gano <br />\r\n1 ovo <br />\r\n1 xÃ­cara de leite <br />\r\n4 colheres de sopa de azeite de oliva <br />\r\n6 colheres de sopa de farinha de trigo <br />\r\n1 colher de sopa de amido de milho <br />\r\n1 pitada de sal <br />\r\n1 colher de chÃ¡ de fermento em pÃ³ <br />\r\n100g de queijo muÃ§arela ralado <br />\r\n200g de catupiry <br />','1- Em uma frigideira, refogar a cebola, o alho e adicionar o frango desfiado. <br />\r\n2- Adicionar o extrato de tomate, uma pitada de sal e o orÃ©gano. Reservar. <br />\r\n3- No liquidificador, bater o ovo, o leite, o azeite, a farinha, o amido de milho e uma pitada de sal. <br />\r\n4- Dispor em uma tigela e agregar o fermento delicadamente. <br />\r\n5- Aquecer uma frigideira untada com azeite em fogo mÃ©dio. <br />\r\n6- Despejar a massa. Cozinhar em fogo baixo por uns 5 minutos. <br />\r\n7- Virar a massa, espalhar o frango desfiado com molho, polvilhar o queijo muÃ§arela e dispor colheradas de catupiry pela torta. <br />\r\n8- Esperar o queijo derreter e servir. <br />',120,9,'Bolos e Tortas','2.jpg'),(3,'Esfirra de Carne','12g de fermento biolÃ³gico seco <br />\r\n3 colheres de sopa de aÃ§Ãºcar <br />\r\n200ml de Ã¡gua morna <br />\r\n50ml de azeite de oliva <br />\r\n400g de farinha de trigo <br />\r\nSal a gosto <br />\r\n500g de carne moÃ­da <br />\r\n1 cebola picada <br />\r\n3 tomates sem pele e sem semente picados <br />\r\n2 colheres de sopa de hortelÃ£ picada <br />\r\n1 limÃ£o <br />\r\nPimenta a gosto <br />\r\nÂ¾ xÃ­cara de fubÃ¡ <br />','1- Misturar o fermento, o aÃ§Ãºcar e a Ã¡gua morna e deixar descansar por 15 minutos. <br />\r\n2- Juntar o azeite e a farinha aos poucos misturando com uma colher. <br />\r\n3- Temperar com sal a gosto. <br />\r\n4- Sovar atÃ© que a massa fique elÃ¡stica. Deixar crescer por 45 minutos. <br />\r\n5- Em uma tigela, misturar a carne, a cebola, o tomate e a hortelÃ£. <br />\r\n6- Juntar o suco de limÃ£o, temperar com sal e pimenta do reino e reservar na geladeira. <br />\r\n7- Abrir porÃ§Ãµes da massa em uma superfÃ­cie polvilhada com fubÃ¡ e apertar as bordas com os dedos de maneira que fique mais alta que o centro. <br />\r\n8- Dispor a massa em uma assadeira untada e dispor o recheio no centro apertando bem com a colher. <br />\r\n9- Assar em forno preaquecido a 200 graus por, aproximadamente, 30 minutos. <br />\r\n10- Servir com limÃ£o. <br />',100,20,'Carnes','3.jpg'),(4,'Bolo de Carne com PurÃª de Batatas','1 kg de carne bovina moÃ­da <br />\r\n2 colheres de chÃ¡ de alho em pÃ³ <br />\r\n1 colher de sopa de creme de cebola em pÃ³ <br />\r\nSal a gosto <br />\r\nPimenta do reino a gosto <br />\r\nFolhas de Â½ maÃ§o de manjerona <br />\r\n2 ovos <br />\r\nÂ½ xÃ­cara de farinha de trigo <br />\r\n6 batatas cozidas amassadas <br />\r\n50g de manteiga <br />\r\n50ml de creme de leite <br />\r\n50ml de leite <br />\r\n150g de presunto <br />\r\n150g de queijo muÃ§arela em fatias <br />\r\n150g de bacon em fatias <br />\r\n2 colheres de sopa de mel <br />','1- Em um recipiente dispor a carne moÃ­da, o alho em pÃ³, o creme de cebola em pÃ³, sal, pimenta do reino, folhas de manjerona, 2 ovos e a farinha de trigo. Misturar tudo muito bem. Reservar. <br />\r\n2- Em uma panela, dispor as batatas cozidas e amassadas e juntar a manteiga, o creme de leite e o leite. Misturar bem atÃ© a manteiga derreter. Temperar com sal e pimenta. Reservar. <br />\r\n3- Abrir a mistura de carne em forma de retÃ¢ngulo, dispor as fatias de presunto e dispor o purÃª por cima. <br />\r\n4- Dispor as fatias de queijo muÃ§arela e enrolar como um rocambole. <br />\r\n5- Dispor as fatias de bacon por cima e pincelar mel. <br />\r\n6- Levar ao forno a 180 graus por 1 hora. <br />',180,10,'Carnes','4.jpg'),(5,'Pudim Ovomaltine','1 Â½ xÃ­cara de aÃ§Ãºcar <br />\r\n3 colheres de sopa de ovomaltine <br />\r\n2 latas de leite condensado <br />\r\n300ml de leite <br />\r\n2 ovos + 1 gema <br />\r\nÂ¾ xÃ­cara de ovomaltine <br />','1- Derreter o aÃ§Ãºcar com 3 colheres de sopa de ovomaltine e caramelar uma forma de pudim. <br />\r\n2- No liquidificador, bater o leite condensado, o leite e os ovos. <br />\r\n3- Juntar Â¾ xÃ­cara de ovomaltine e bater por mais 1 minuto. <br />\r\n4- Dispor a mistura na forma e assar em banho maria em forno preaquecido 180 graus por, aproximadamente, 1 hora e meia. <br />\r\n5- Levar a geladeira por no mÃ­nimo 3 horas. Desenformar, cobrir com floquinhos do ovomaltine e servir. <br />',110,8,'Doces e Sobremesas','5.jpg'),(6,'Molho de Alho Caseiro','1 copo de leite bem gelado <br />\r\nÃ“leo <br />\r\nOrÃ©gano <br />\r\nSal <br />\r\n3 dentes de alho <br />','1- Coloque o leite gelado no liquidificador e ligue no modo lento. <br />\r\n2- Coloque o Ã³leo de modo que vai saindo um fio e misturando com o leite com o liquidificador ligado. <br />\r\n3- Continue colocando o Ã³leo ate ficar um creme homogÃªneo. <br />\r\n4- Depois coloque o orÃ©gano a gosto,sal a gosto e 3 dentes de alho bata por alguns segundos e esta pronto. <br />\r\n5- Se quiser fazer um molho rose Ã© sÃ³ substituir o alho por catchup ou outros sabores a seu gosto. <br />',15,50,'Saladas e Molhos','6.jpg'),(7,'Massa de Nhoque RÃ¡pido','1 colher de sopa de margarina <br />\r\n1 ovo <br />\r\n2 copos de farinha de trigo <br />\r\n2 copos de leite <br />\r\n1 colher de chÃ¡ de sal <br />','1- Coloque em uma panela a margarina o ovo batido o leite o sal e a farinha de trigo mexa sempre atÃ© dissolver a farinha. <br />\r\n2- Abaixe o fogo e mexa atÃ© que desgrude do funda da panela, desligue o fogo. <br />\r\n3- E assim que a massa estiver fria faÃ§a as bolinhas. <br />\r\n4- Ferva 1 litro de Ã¡gua e assim coloque uma porÃ§Ã£o de bolinhas, espere subir, e retire da Ã¡gua. <br />\r\n5- EstÃ¡ pronto, sÃ³ colocar o molho de sua preferÃªncia. <br />\r\n6- TambÃ©m pode fazÃª-los fritos. <br />\r\n7- Ã‰ sÃ³ nÃ£o colocÃ¡-los para ferver. <br />',15,6,'Massas','7.jpg'),(8,'Salada Grega','1 maÃ§o de alface americana <br />\r\n2 tomates <br />\r\n1 cebola vermelha <br />\r\n5 azeitona preta e verde <br />\r\n2 pepinos <br />\r\n5 fatia de peperroni <br />\r\n1 xÃ­cara de queijo feta (queijo grego) <br />\r\nÂ¾ xÃ­cara de Ã³leo de oliva <br />\r\n2-3 colheres de suco de limÃ£o fresco <br />\r\n2 colheres de vinagre de vinho tinto <br />\r\n3 colherinhas de orÃ©gano <br />\r\n1 colherinha de alfavaca <br />\r\n3 colherinhas de alho picado <br />\r\nÂ½ colherinha de sal <br />\r\nÂ½ colherinha de pimenta do reino <br />\r\n1 colherada de aÃ§Ãºcar <br />','1- Rasgue as folhas da alface com as mÃ£os e disponha em uma saladeira. <br />\r\n2- Corte o tomate e o pepino em rodelas e adicione a salada,adicione as azeitonas, o peperroni e o queijo feta. <br /><br />\r\nPARA O MOLHO: <br />\r\n1- Para preparar o molho, coloque todos os ingredientes no liquidificador atÃ© que fique uma mistura bem suave. <br />\r\n2- Coloque num recipiente e leve Ã  geladeira durante pelo menos 2 horas antes de servir. <br />',25,6,'Saladas e Molhos','8.jpg'),(9,'Bolo de Laranja com Cobertura de Chocolate ','3 ovos <br />\r\n2 copos(americanos)de aÃ§Ãºcar <br />\r\n1/2 copo(americano)de suco de laranja <br />\r\n1/2 copo(americano) de Ã³leo <br />\r\nRaspas de 1 laranja <br />\r\n1 colher de (sopa) de fermento em pÃ³ <br />\r\n2 copos(americano)de farinha de trigo <br />\r\n1/2 xÃ­cara de(chÃ¡) de Ã¡gua <br />\r\n1 xÃ­cara de(chÃ¡) de aÃ§Ãºcar <br />\r\n1 tablete de chocolate meio amargo picado <br />\r\n3 colheres de(sopa) de manteiga <br />','MASSA: <br />\r\n1- Coloque todos os ingredientes no liquidificador, menos o fermento e a farinha. <br />\r\n2- Bata bem e transfira a mistura para uma tigela e acrescente a farinha e o fermento. <br />\r\n3- Misture e despeje em uma forma com furo central de 22cm de diÃ¢metro untada e enfarinhada. <br />\r\n4- Asse em forno preaquecido a 180Â°C por 40 minutos ou atÃ© que esteja assado. <br /><br />\r\nCOBERTURA: <br />\r\n1- Misture a Ã¡gua com o aÃ§Ãºcar e leve ao fogo mÃ©dio atÃ© formar uma calda em ponto de fio grosso. <br />\r\n2- Coloque no liquidificador o chocolate e a manteiga. <br />\r\n3- Na velocidade baixa,jogue a calda quente aos poucos,bata atÃ© ficar uma mistura lisa. <br />\r\n4- Cubra o bolo quando ele estiver morno e desenformado, deixe na geladeira atÃ© servir. <br />',80,10,'Bolos e Tortas','9.jpg'),(11,'MacarrÃ£o ao Molho de Queijos e Champignon','500 g de marcarrÃ£o de sua preferÃªncia <br />\r\n1 cebola grande <br />\r\n5 dentes de alho <br />\r\n500 ml de leite <br />\r\n1 pacote de creme de queijo <br />\r\n1 caixa de creme de leite com soro <br />\r\n1 copo de requeijÃ£o <br />\r\nChampignon a gosto <br />\r\nQueijo ralado a gosto <br />','1- Coloque em uma panela, um fio de azeite e frite o alho com a cebola. <br />\r\n2- Quando jÃ¡ estiver dourado junte o champignons e o leite, o creme de queijo e deixe fever um pouco atÃ© pegar consistÃªncia de creme. <br />\r\n3- Desligue o fogo, junte o requeijÃ£o e o creme de leite e reserve. <br />\r\n4- Coloque em um refratÃ¡rio o macarrÃ£o jÃ¡ cozido, jogue o molho por cima e coloque queijo ralado a gosto. <br />\r\n5- Leve ao forno por mais ou menos 20 minutos para gratinar. <br />',25,5,'Massas','11.jpg'),(12,'Creme de Nozes','3 xÃ­caras de chÃ¡ de leite <br />\r\n1/2 xÃ­cara de chÃ¡ de maizena <br />\r\n1 xÃ­cara de chÃ¡ de aÃ§Ãºcar <br />\r\n2 gemas <br />\r\n1 colher de cafÃ© de raspas de limÃ£o <br />\r\n1 colher de margarina <br />\r\n1/2 xÃ­cara de chÃ¡ de nozes moÃ­das <br />','1- Misture os 5 primeiros ingredientes e leve ao fogo, mexendo sempre atÃ© engrossar. <br />\r\n2- Junte a margarina e as nozes, misturando bem coloque em 6 taÃ§as (ou tigelas) e leve Ã  geladeira por 2 horas. <br />\r\n3- Sirva gelado. <br />',40,6,'Doces e Sobremesas','12.jpg'),(13,'Torta Gelada de PÃªssego da Bianca','3 xÃ­caras (chÃ¡) de farinha de trigo <br />\r\n4 colheres (sopa) de margarina sem sal <br />\r\n4 colheres (sopa) de aÃ§Ãºcar <br />\r\n2 gemas <br />\r\n4 colheres (sopa) de leite <br />\r\n1 lata de leite condensado <br />\r\n2 latas de leite (use a lata de leite condensado como medida) <br />\r\n3 colheres (sopa) de amido de milho <br />\r\n1 caixa de creme de leite <br />\r\n1 lata de pÃªssego <br />\r\n1 colher (sopa) de gelatina incolor <br />\r\n3 colheres (sopa) Ã¡gua (para hidratar a gelatina incolor) <br />\r\n1 caixa de gelatina de pÃªssego <br />\r\n250 ml de Ã¡gua <br />\r\n1 1/2 colheres (sopa) de amido de milho <br />','MASSA: <br />\r\n1- Misture todos os ingredientes, amasse bem, deixe descansar por 10 minutos. <br />\r\n2- Coloque a massa em uma forma mÃ©dia desmontÃ¡vel ou em um pirex (caso use pirex sÃ³ forrar o fundo). <br />\r\n3- Espalhe bem a massa forrando o fundo e os lados, fure com um garfo e leve para assar por 20 minutos. <br />\r\n4- Cuidado porque assa facilmente. <br />\r\n5- Deixe esfriar. <br /><br />\r\n\r\nRECHEIO: <br />\r\n1- Misture todos os ingredientes, menos o creme de leite. <br />\r\n2- Leve ao fogo mexendo sempre atÃ© engrossar, retire do fogo e misture o creme de leite e a gelatina incolor (jÃ¡ hidratada no micro-ondas). <br />\r\n3- Coloque sobre a massa , arrume os pÃªssegos em calda picados em cubos em cima do recheio. <br />\r\n4- Reserve. <br /><br />\r\n\r\nCOBERTURA: <br />\r\n1- Misture todos os ingredientes e leve ao fogo atÃ© engrossar. <br />\r\n2- Espalhe a cobertura por cima dos pÃªssegos picados. <br />\r\n3- Procure colocar igualmente por toda a torta para que fique uma cobertura uniforme, assim darÃ¡ melhor acabamento. <br />\r\n4- Leve para gelar por no mÃ­nimo 2 horas. <br />\r\n5- Depois Ã© sÃ³ se deliciar e receber os elogios. <br /><br />\r\n\r\nINFORMAÃ‡Ã•ES ADICIONAIS: <br />\r\nDica: Pode ser feita de abacaxi e de morango tambÃ©m, Ã© sÃ³ trocar as frutas e a gelatina com sabor correspondente. <br/>',90,25,'Bolos e Tortas','13.jpg'),(15,'Massa de Pastel','1 kg de farinha de trigo <br />\r\n1/2 xÃ­cara (chÃ¡) de Ã³leo <br />\r\n1 colher (sopa) sal <br />\r\n1 ovo <br />\r\n1/2 dose de pinga <br />\r\n1 colher (chÃ¡) vinagre <br />\r\n250 ml de Ã¡gua <br />','1- Misture os ingredientes em uma tigela e amasse com as mÃ£os. <br />\r\n2- Sove bem a massa sobre uma superfÃ­cie lisa enfarinhada. <br />\r\n3- Utilize um rolo para esticar a massa e deixÃ¡-la na espessura desejada. <br />\r\n4- Corte a massa no tamanho que quiser fazer os pastÃ©is. <br />\r\n5- Recheie e frite em Ã³leo bem quente. <br />\r\nObs: Pode ser recheada com salgado ou doce.. <br />',30,8,'Massas','15.jpg'),(16,'Chico Balanceado com Banana','2 xÃ­caras de aÃ§Ãºcar <br />\r\n5 bananas nanicas <br />\r\n1 lata de leite condensado <br />\r\nA mesma medida de leite <br />\r\n1 colher (sopa) de amido de milho <br />\r\n3 gemas <br />\r\n3 claras <br />\r\n6 colheres (sopa) de aÃ§Ãºcar <br />','1- Caramelize um refratÃ¡rio com as 2 xÃ­caras de aÃ§Ãºcar. <br />\r\n2- Reserve. <br />\r\n3- Leve ao fogo em uma panela o leite condensado, o leite, as gemas peneiradas e o amido de milho atÃ© comeÃ§ar a ferver. <br />\r\n4- Deixe amornar. <br />\r\n5- Pique as bananas, em pedaÃ§os diagonais, com mais ou menos 1 cm de espessura. <br />\r\n6- Disponha no refratÃ¡rio, sobre o caramelo frio, arrumando-as lado a lado. <br />\r\n7- Despeje o creme sobre as bananas. <br />\r\n8- Bata as claras em neve e acrescente, aos poucos, as 6 colheres de aÃ§Ãºcar. <br />\r\n9- FaÃ§a uma camada sobre o creme de leite condensado. <br />\r\n10- Leve ao forno para dourar o merengue. <br />\r\n11- Sirva gelado. <br /><br />\r\n\r\nINFORMAÃ‡Ã•ES ADICIONAIS: <br />\r\nSe vocÃª tiver maÃ§arico culinÃ¡rio, pode montar em porÃ§Ãµes individuais e dourar a clara com o maÃ§arico. Dica para quem nÃ£o quer usar claras em neve cruas: Bata as claras em neve, leve ao fogo 6 colheres de aÃ§Ãºcar cheias com 3 colheres de Ã¡gua, deixe atÃ© formar um caramelo bem clarinho (se tiver termÃ´metro deixe a 118Â°C). Depois derrame essa calda nas claras em neve, batendo na batedeira atÃ© esfriar. A calda quente vai cozinhar a clara e vai ficar um merengue bonito e brilhante, ideal para dourar no forno ou com maÃ§arico. <br />',45,6,'Doces e Sobremesas','16.jpg'),(19,'Maionese Temperada','1 colher (chÃ¡) de sal <br />\r\n2 ovos inteiros <br />\r\nSalsinha e cebolinha picadas <br />\r\n1 colher (sopa) de suco puro de limÃ£o <br />\r\n1 colher (chÃ¡) de mostarda <br />\r\nPimenta-do-reino a gosto <br />\r\n1 colher (chÃ¡) de tempero de ervas finas (opcional) <br />\r\n250 ml de Ã³leo de soja <br />','1- Bata no liquidificador o sal, o tempero, os ovos, o suco de limÃ£o e a mostarda. <br />\r\n2- Despeje o Ã³leo em fio e continue batendo por mais 2 minutos ou atÃ© obter um creme denso. <br />\r\n3- Adicione a salsa e a cebolinha e bata por mais alguns segundo, sempre adicionando o Ã³leo. <br />\r\n4- Bata atÃ© obter uma consistÃªncia firme e desligue o liquidificador. <br />\r\n5- Coloque a maionese em um pote e leve Ã  geladeira. <br />\r\n',10,5,'Saladas e Molhos','19.jpg');
/*!40000 ALTER TABLE `receitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'livro'
--

--
-- Dumping routines for database 'livro'
--
/*!50003 DROP PROCEDURE IF EXISTS `Criar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Criar`(id_admin int)
main: BEGIN

     create table receitas(	
		id_receita int not null auto_increment primary key,
		nome_receita varchar(2500),    
		ingredientes varchar(2500),    
		preparo text(2500),    
		tempo_preparo int(255),    
		porcoes int(255),    
		categoria set('Bolos e Tortas', 'Carnes', 'Saladas e Molhos', 'Massas', 'Doces e Sobremesas'),    
		img_receita varchar(2500)
	)default charset = utf8; 
    
    create table admin(
		id_admin int not null auto_increment primary key,
        nome varchar(250),
        email varchar(250) unique not null,
        senha varchar(250) not null
    )default charset = utf8;
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-13 15:28:44
