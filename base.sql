-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.26-0ubuntu0.16.04.1 - (Ubuntu)
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para laribolo
DROP DATABASE IF EXISTS `laribolo`;
CREATE DATABASE IF NOT EXISTS `laribolo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `laribolo`;

-- Copiando estrutura para tabela laribolo.categoria_manufaturado
DROP TABLE IF EXISTS `categoria_manufaturado`;
CREATE TABLE IF NOT EXISTS `categoria_manufaturado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.categoria_manufaturado: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `categoria_manufaturado` DISABLE KEYS */;
INSERT INTO `categoria_manufaturado` (`id`, `nome`) VALUES
	(1, 'Bolo de Pote Massa Clara');
INSERT INTO `categoria_manufaturado` (`id`, `nome`) VALUES
	(2, 'Bolo de Pote Massa Escura ');
/*!40000 ALTER TABLE `categoria_manufaturado` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.cidade
DROP TABLE IF EXISTS `cidade`;
CREATE TABLE IF NOT EXISTS `cidade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cidade` char(100) NOT NULL,
  `id_uf` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_uf.cidade-uf.id` (`id_uf`),
  CONSTRAINT `id_uf.cidade-uf.id` FOREIGN KEY (`id_uf`) REFERENCES `uf` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5565 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.cidade: ~5.520 rows (aproximadamente)
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1, 'Afonso Cláudio', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2, 'Água Doce do Norte', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3, 'Águia Branca', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4, 'Alegre', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5, 'Alfredo Chaves', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(6, 'Alto Rio Novo', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(7, 'Anchieta', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(8, 'Apiacá', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(9, 'Aracruz', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(10, 'Atilio Vivacqua', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(11, 'Baixo Guandu', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(12, 'Barra de São Francisco', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(13, 'Boa Esperança', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(14, 'Bom Jesus do Norte', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(15, 'Brejetuba', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(16, 'Cachoeiro de Itapemirim', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(17, 'Cariacica', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(18, 'Castelo', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(19, 'Colatina', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(20, 'Conceição da Barra', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(21, 'Conceição do Castelo', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(22, 'Divino de São Lourenço', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(23, 'Domingos Martins', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(24, 'Dores do Rio Preto', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(25, 'Ecoporanga', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(26, 'Fundão', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(27, 'Governador Lindenberg', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(28, 'Guaçuí', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(29, 'Guarapari', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(30, 'Ibatiba', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(31, 'Ibiraçu', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(32, 'Ibitirama', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(33, 'Iconha', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(34, 'Irupi', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(35, 'Itaguaçu', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(36, 'Itapemirim', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(37, 'Itarana', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(38, 'Iúna', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(39, 'Jaguaré', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(40, 'Jerônimo Monteiro', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(41, 'João Neiva', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(42, 'Laranja da Terra', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(43, 'Linhares', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(44, 'Mantenópolis', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(45, 'Marataízes', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(46, 'Marechal Floriano', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(47, 'Marilândia', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(48, 'Mimoso do Sul', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(49, 'Montanha', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(50, 'Mucurici', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(51, 'Muniz Freire', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(52, 'Muqui', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(53, 'Nova Venécia', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(54, 'Pancas', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(55, 'Pedro Canário', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(56, 'Pinheiros', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(57, 'Piúma', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(58, 'Ponto Belo', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(59, 'Presidente Kennedy', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(60, 'Rio Bananal', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(61, 'Rio Novo do Sul', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(62, 'Santa Leopoldina', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(63, 'Santa Maria de Jetibá', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(64, 'Santa Teresa', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(65, 'São Domingos do Norte', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(66, 'São Gabriel da Palha', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(67, 'São José do Calçado', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(68, 'São Mateus', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(69, 'São Roque do Canaã', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(70, 'Serra', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(71, 'Sooretama', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(72, 'Vargem Alta', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(73, 'Venda Nova do Imigrante', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(74, 'Viana', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(75, 'Vila Pavão', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(76, 'Vila Valério', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(77, 'Vila Velha', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(78, 'Vitória', 8);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(79, 'Acrelândia', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(80, 'Assis Brasil', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(81, 'Brasiléia', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(82, 'Bujari', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(83, 'Capixaba', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(84, 'Cruzeiro do Sul', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(85, 'Epitaciolândia', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(86, 'Feijó', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(87, 'Jordão', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(88, 'Mâncio Lima', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(89, 'Manoel Urbano', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(90, 'Marechal Thaumaturgo', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(91, 'Plácido de Castro', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(92, 'Porto Acre', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(93, 'Porto Walter', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(94, 'Rio Branco', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(95, 'Rodrigues Alves', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(96, 'Santa Rosa do Purus', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(97, 'Sena Madureira', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(98, 'Senador Guiomard', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(99, 'Tarauacá', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(100, 'Xapuri', 1);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(101, 'Água Branca', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(102, 'Anadia', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(103, 'Arapiraca', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(104, 'Atalaia', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(105, 'Barra de Santo Antônio', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(106, 'Barra de São Miguel', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(107, 'Batalha', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(108, 'Belém', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(109, 'Belo Monte', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(110, 'Boca da Mata', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(111, 'Branquinha', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(112, 'Cacimbinhas', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(113, 'Cajueiro', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(114, 'Campestre', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(115, 'Campo Alegre', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(116, 'Campo Grande', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(117, 'Canapi', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(118, 'Capela', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(119, 'Carneiros', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(120, 'Chã Preta', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(121, 'Coité do Nóia', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(122, 'Colônia Leopoldina', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(123, 'Coqueiro Seco', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(124, 'Coruripe', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(125, 'Craíbas', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(126, 'Delmiro Gouveia', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(127, 'Dois Riachos', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(128, 'Estrela de Alagoas', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(129, 'Feira Grande', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(130, 'Feliz Deserto', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(131, 'Flexeiras', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(132, 'Girau do Ponciano', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(133, 'Ibateguara', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(134, 'Igaci', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(135, 'Igreja Nova', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(136, 'Inhapi', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(137, 'Jacaré dos Homens', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(138, 'Jacuípe', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(139, 'Japaratinga', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(140, 'Jaramataia', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(141, 'Jequiá da Praia', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(142, 'Joaquim Gomes', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(143, 'Jundiá', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(144, 'Junqueiro', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(145, 'Lagoa da Canoa', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(146, 'Limoeiro de Anadia', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(147, 'Maceió', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(148, 'Major Isidoro', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(149, 'Mar Vermelho', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(150, 'Maragogi', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(151, 'Maravilha', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(152, 'Marechal Deodoro', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(153, 'Maribondo', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(154, 'Mata Grande', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(155, 'Matriz de Camaragibe', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(156, 'Messias', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(157, 'Minador do Negrão', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(158, 'Monteirópolis', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(159, 'Murici', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(160, 'Novo Lino', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(161, 'Olho d`Água das Flores', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(162, 'Olho d`Água do Casado', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(163, 'Olho d`Água Grande', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(164, 'Olivença', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(165, 'Ouro Branco', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(166, 'Palestina', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(167, 'Palmeira dos Índios', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(168, 'Pão de Açúcar', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(169, 'Pariconha', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(170, 'Paripueira', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(171, 'Passo de Camaragibe', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(172, 'Paulo Jacinto', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(173, 'Penedo', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(174, 'Piaçabuçu', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(175, 'Pilar', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(176, 'Pindoba', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(177, 'Piranhas', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(178, 'Poço das Trincheiras', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(179, 'Porto Calvo', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(180, 'Porto de Pedras', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(181, 'Porto Real do Colégio', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(182, 'Quebrangulo', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(183, 'Rio Largo', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(184, 'Roteiro', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(185, 'Santa Luzia do Norte', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(186, 'Santana do Ipanema', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(187, 'Santana do Mundaú', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(188, 'São Brás', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(189, 'São José da Laje', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(190, 'São José da Tapera', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(191, 'São Luís do Quitunde', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(192, 'São Miguel dos Campos', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(193, 'São Miguel dos Milagres', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(194, 'São Sebastião', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(195, 'Satuba', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(196, 'Senador Rui Palmeira', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(197, 'Tanque d`Arca', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(198, 'Taquarana', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(199, 'Teotônio Vilela', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(200, 'Traipu', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(201, 'União dos Palmares', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(202, 'Viçosa', 2);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(203, 'Amapá', 4);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(204, 'Calçoene', 4);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(205, 'Cutias', 4);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(206, 'Ferreira Gomes', 4);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(207, 'Itaubal', 4);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(208, 'Laranjal do Jari', 4);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(209, 'Macapá', 4);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(210, 'Mazagão', 4);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(211, 'Oiapoque', 4);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(212, 'Pedra Branca do Amaparí', 4);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(213, 'Porto Grande', 4);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(214, 'Pracuúba', 4);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(215, 'Santana', 4);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(216, 'Serra do Navio', 4);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(217, 'Tartarugalzinho', 4);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(218, 'Vitória do Jari', 4);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(219, 'Alvarães', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(220, 'Amaturá', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(221, 'Anamã', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(222, 'Anori', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(223, 'Apuí', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(224, 'Atalaia do Norte', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(225, 'Autazes', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(226, 'Barcelos', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(227, 'Barreirinha', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(228, 'Benjamin Constant', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(229, 'Beruri', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(230, 'Boa Vista do Ramos', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(231, 'Boca do Acre', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(232, 'Borba', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(233, 'Caapiranga', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(234, 'Canutama', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(235, 'Carauari', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(236, 'Careiro', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(237, 'Careiro da Várzea', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(238, 'Coari', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(239, 'Codajás', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(240, 'Eirunepé', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(241, 'Envira', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(242, 'Fonte Boa', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(243, 'Guajará', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(244, 'Humaitá', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(245, 'Ipixuna', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(246, 'Iranduba', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(247, 'Itacoatiara', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(248, 'Itamarati', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(249, 'Itapiranga', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(250, 'Japurá', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(251, 'Juruá', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(252, 'Jutaí', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(253, 'Lábrea', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(254, 'Manacapuru', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(255, 'Manaquiri', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(256, 'Manaus', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(257, 'Manicoré', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(258, 'Maraã', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(259, 'Maués', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(260, 'Nhamundá', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(261, 'Nova Olinda do Norte', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(262, 'Novo Airão', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(263, 'Novo Aripuanã', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(264, 'Parintins', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(265, 'Pauini', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(266, 'Presidente Figueiredo', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(267, 'Rio Preto da Eva', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(268, 'Santa Isabel do Rio Negro', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(269, 'Santo Antônio do Içá', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(270, 'São Gabriel da Cachoeira', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(271, 'São Paulo de Olivença', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(272, 'São Sebastião do Uatumã', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(273, 'Silves', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(274, 'Tabatinga', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(275, 'Tapauá', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(276, 'Tefé', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(277, 'Tonantins', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(278, 'Uarini', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(279, 'Urucará', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(280, 'Urucurituba', 3);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(281, 'Abaíra', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(282, 'Abaré', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(283, 'Acajutiba', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(284, 'Adustina', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(285, 'Água Fria', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(286, 'Aiquara', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(287, 'Alagoinhas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(288, 'Alcobaça', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(289, 'Almadina', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(290, 'Amargosa', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(291, 'Amélia Rodrigues', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(292, 'América Dourada', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(293, 'Anagé', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(294, 'Andaraí', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(295, 'Andorinha', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(296, 'Angical', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(297, 'Anguera', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(298, 'Antas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(299, 'Antônio Cardoso', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(300, 'Antônio Gonçalves', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(301, 'Aporá', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(302, 'Apuarema', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(303, 'Araças', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(304, 'Aracatu', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(305, 'Araci', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(306, 'Aramari', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(307, 'Arataca', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(308, 'Aratuípe', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(309, 'Aurelino Leal', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(310, 'Baianópolis', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(311, 'Baixa Grande', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(312, 'Banzaê', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(313, 'Barra', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(314, 'Barra da Estiva', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(315, 'Barra do Choça', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(316, 'Barra do Mendes', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(317, 'Barra do Rocha', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(318, 'Barreiras', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(319, 'Barro Alto', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(320, 'Barro Preto (antigo Gov. Lomanto Jr.)', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(321, 'Barrocas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(322, 'Belmonte', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(323, 'Belo Campo', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(324, 'Biritinga', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(325, 'Boa Nova', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(326, 'Boa Vista do Tupim', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(327, 'Bom Jesus da Lapa', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(328, 'Bom Jesus da Serra', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(329, 'Boninal', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(330, 'Bonito', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(331, 'Boquira', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(332, 'Botuporã', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(333, 'Brejões', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(334, 'Brejolândia', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(335, 'Brotas de Macaúbas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(336, 'Brumado', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(337, 'Buerarema', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(338, 'Buritirama', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(339, 'Caatiba', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(340, 'Cabaceiras do Paraguaçu', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(341, 'Cachoeira', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(342, 'Caculé', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(343, 'Caém', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(344, 'Caetanos', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(345, 'Caetité', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(346, 'Cafarnaum', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(347, 'Cairu', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(348, 'Caldeirão Grande', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(349, 'Camacan', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(350, 'Camaçari', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(351, 'Camamu', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(352, 'Campo Alegre de Lourdes', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(353, 'Campo Formoso', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(354, 'Canápolis', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(355, 'Canarana', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(356, 'Canavieiras', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(357, 'Candeal', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(358, 'Candeias', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(359, 'Candiba', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(360, 'Cândido Sales', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(361, 'Cansanção', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(362, 'Canudos', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(363, 'Capela do Alto Alegre', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(364, 'Capim Grosso', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(365, 'Caraíbas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(366, 'Caravelas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(367, 'Cardeal da Silva', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(368, 'Carinhanha', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(369, 'Casa Nova', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(370, 'Castro Alves', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(371, 'Catolândia', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(372, 'Catu', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(373, 'Caturama', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(374, 'Central', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(375, 'Chorrochó', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(376, 'Cícero Dantas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(377, 'Cipó', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(378, 'Coaraci', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(379, 'Cocos', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(380, 'Conceição da Feira', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(381, 'Conceição do Almeida', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(382, 'Conceição do Coité', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(383, 'Conceição do Jacuípe', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(384, 'Conde', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(385, 'Condeúba', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(386, 'Contendas do Sincorá', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(387, 'Coração de Maria', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(388, 'Cordeiros', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(389, 'Coribe', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(390, 'Coronel João Sá', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(391, 'Correntina', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(392, 'Cotegipe', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(393, 'Cravolândia', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(394, 'Crisópolis', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(395, 'Cristópolis', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(396, 'Cruz das Almas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(397, 'Curaçá', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(398, 'Dário Meira', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(399, 'Dias d`Ávila', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(400, 'Dom Basílio', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(401, 'Dom Macedo Costa', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(402, 'Elísio Medrado', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(403, 'Encruzilhada', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(404, 'Entre Rios', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(405, 'Érico Cardoso', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(406, 'Esplanada', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(407, 'Euclides da Cunha', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(408, 'Eunápolis', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(409, 'Fátima', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(410, 'Feira da Mata', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(411, 'Feira de Santana', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(412, 'Filadélfia', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(413, 'Firmino Alves', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(414, 'Floresta Azul', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(415, 'Formosa do Rio Preto', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(416, 'Gandu', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(417, 'Gavião', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(418, 'Gentio do Ouro', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(419, 'Glória', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(420, 'Gongogi', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(421, 'Governador Mangabeira', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(422, 'Guajeru', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(423, 'Guanambi', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(424, 'Guaratinga', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(425, 'Heliópolis', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(426, 'Iaçu', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(427, 'Ibiassucê', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(428, 'Ibicaraí', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(429, 'Ibicoara', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(430, 'Ibicuí', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(431, 'Ibipeba', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(432, 'Ibipitanga', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(433, 'Ibiquera', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(434, 'Ibirapitanga', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(435, 'Ibirapuã', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(436, 'Ibirataia', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(437, 'Ibitiara', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(438, 'Ibititá', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(439, 'Ibotirama', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(440, 'Ichu', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(441, 'Igaporã', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(442, 'Igrapiúna', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(443, 'Iguaí', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(444, 'Ilhéus', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(445, 'Inhambupe', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(446, 'Ipecaetá', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(447, 'Ipiaú', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(448, 'Ipirá', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(449, 'Ipupiara', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(450, 'Irajuba', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(451, 'Iramaia', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(452, 'Iraquara', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(453, 'Irará', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(454, 'Irecê', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(455, 'Itabela', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(456, 'Itaberaba', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(457, 'Itabuna', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(458, 'Itacaré', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(459, 'Itaeté', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(460, 'Itagi', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(461, 'Itagibá', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(462, 'Itagimirim', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(463, 'Itaguaçu da Bahia', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(464, 'Itaju do Colônia', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(465, 'Itajuípe', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(466, 'Itamaraju', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(467, 'Itamari', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(468, 'Itambé', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(469, 'Itanagra', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(470, 'Itanhém', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(471, 'Itaparica', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(472, 'Itapé', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(473, 'Itapebi', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(474, 'Itapetinga', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(475, 'Itapicuru', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(476, 'Itapitanga', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(477, 'Itaquara', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(478, 'Itarantim', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(479, 'Itatim', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(480, 'Itiruçu', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(481, 'Itiúba', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(482, 'Itororó', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(483, 'Ituaçu', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(484, 'Ituberá', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(485, 'Iuiú', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(486, 'Jaborandi', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(487, 'Jacaraci', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(488, 'Jacobina', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(489, 'Jaguaquara', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(490, 'Jaguarari', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(491, 'Jaguaripe', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(492, 'Jandaíra', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(493, 'Jequié', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(494, 'Jeremoabo', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(495, 'Jiquiriçá', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(496, 'Jitaúna', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(497, 'João Dourado', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(498, 'Juazeiro', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(499, 'Jucuruçu', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(500, 'Jussara', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(501, 'Jussari', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(502, 'Jussiape', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(503, 'Lafaiete Coutinho', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(504, 'Lagoa Real', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(505, 'Laje', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(506, 'Lajedão', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(507, 'Lajedinho', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(508, 'Lajedo do Tabocal', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(509, 'Lamarão', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(510, 'Lapão', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(511, 'Lauro de Freitas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(512, 'Lençóis', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(513, 'Licínio de Almeida', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(514, 'Livramento de Nossa Senhora', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(515, 'Luís Eduardo Magalhães', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(516, 'Macajuba', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(517, 'Macarani', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(518, 'Macaúbas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(519, 'Macururé', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(520, 'Madre de Deus', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(521, 'Maetinga', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(522, 'Maiquinique', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(523, 'Mairi', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(524, 'Malhada', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(525, 'Malhada de Pedras', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(526, 'Manoel Vitorino', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(527, 'Mansidão', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(528, 'Maracás', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(529, 'Maragogipe', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(530, 'Maraú', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(531, 'Marcionílio Souza', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(532, 'Mascote', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(533, 'Mata de São João', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(534, 'Matina', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(535, 'Medeiros Neto', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(536, 'Miguel Calmon', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(537, 'Milagres', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(538, 'Mirangaba', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(539, 'Mirante', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(540, 'Monte Santo', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(541, 'Morpará', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(542, 'Morro do Chapéu', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(543, 'Mortugaba', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(544, 'Mucugê', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(545, 'Mucuri', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(546, 'Mulungu do Morro', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(547, 'Mundo Novo', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(548, 'Muniz Ferreira', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(549, 'Muquém de São Francisco', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(550, 'Muritiba', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(551, 'Mutuípe', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(552, 'Nazaré', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(553, 'Nilo Peçanha', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(554, 'Nordestina', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(555, 'Nova Canaã', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(556, 'Nova Fátima', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(557, 'Nova Ibiá', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(558, 'Nova Itarana', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(559, 'Nova Redenção', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(560, 'Nova Soure', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(561, 'Nova Viçosa', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(562, 'Novo Horizonte', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(563, 'Novo Triunfo', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(564, 'Olindina', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(565, 'Oliveira dos Brejinhos', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(566, 'Ouriçangas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(567, 'Ourolândia', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(568, 'Palmas de Monte Alto', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(569, 'Palmeiras', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(570, 'Paramirim', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(571, 'Paratinga', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(572, 'Paripiranga', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(573, 'Pau Brasil', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(574, 'Paulo Afonso', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(575, 'Pé de Serra', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(576, 'Pedrão', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(577, 'Pedro Alexandre', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(578, 'Piatã', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(579, 'Pilão Arcado', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(580, 'Pindaí', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(581, 'Pindobaçu', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(582, 'Pintadas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(583, 'Piraí do Norte', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(584, 'Piripá', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(585, 'Piritiba', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(586, 'Planaltino', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(587, 'Planalto', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(588, 'Poções', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(589, 'Pojuca', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(590, 'Ponto Novo', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(591, 'Porto Seguro', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(592, 'Potiraguá', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(593, 'Prado', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(594, 'Presidente Dutra', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(595, 'Presidente Jânio Quadros', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(596, 'Presidente Tancredo Neves', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(597, 'Queimadas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(598, 'Quijingue', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(599, 'Quixabeira', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(600, 'Rafael Jambeiro', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(601, 'Remanso', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(602, 'Retirolândia', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(603, 'Riachão das Neves', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(604, 'Riachão do Jacuípe', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(605, 'Riacho de Santana', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(606, 'Ribeira do Amparo', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(607, 'Ribeira do Pombal', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(608, 'Ribeirão do Largo', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(609, 'Rio de Contas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(610, 'Rio do Antônio', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(611, 'Rio do Pires', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(612, 'Rio Real', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(613, 'Rodelas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(614, 'Ruy Barbosa', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(615, 'Salinas da Margarida', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(616, 'Salvador', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(617, 'Santa Bárbara', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(618, 'Santa Brígida', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(619, 'Santa Cruz Cabrália', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(620, 'Santa Cruz da Vitória', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(621, 'Santa Inês', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(622, 'Santa Luzia', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(623, 'Santa Maria da Vitória', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(624, 'Santa Rita de Cássia', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(625, 'Santa Teresinha', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(626, 'Santaluz', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(627, 'Santana', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(628, 'Santanópolis', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(629, 'Santo Amaro', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(630, 'Santo Antônio de Jesus', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(631, 'Santo Estêvão', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(632, 'São Desidério', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(633, 'São Domingos', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(634, 'São Felipe', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(635, 'São Félix', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(636, 'São Félix do Coribe', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(637, 'São Francisco do Conde', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(638, 'São Gabriel', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(639, 'São Gonçalo dos Campos', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(640, 'São José da Vitória', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(641, 'São José do Jacuípe', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(642, 'São Miguel das Matas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(643, 'São Sebastião do Passé', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(644, 'Sapeaçu', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(645, 'Sátiro Dias', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(646, 'Saubara', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(647, 'Saúde', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(648, 'Seabra', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(649, 'Sebastião Laranjeiras', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(650, 'Senhor do Bonfim', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(651, 'Sento Sé', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(652, 'Serra do Ramalho', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(653, 'Serra Dourada', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(654, 'Serra Preta', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(655, 'Serrinha', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(656, 'Serrolândia', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(657, 'Simões Filho', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(658, 'Sítio do Mato', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(659, 'Sítio do Quinto', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(660, 'Sobradinho', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(661, 'Souto Soares', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(662, 'Tabocas do Brejo Velho', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(663, 'Tanhaçu', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(664, 'Tanque Novo', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(665, 'Tanquinho', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(666, 'Taperoá', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(667, 'Tapiramutá', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(668, 'Teixeira de Freitas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(669, 'Teodoro Sampaio', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(670, 'Teofilândia', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(671, 'Teolândia', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(672, 'Terra Nova', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(673, 'Tremedal', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(674, 'Tucano', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(675, 'Uauá', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(676, 'Ubaíra', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(677, 'Ubaitaba', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(678, 'Ubatã', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(679, 'Uibaí', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(680, 'Umburanas', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(681, 'Una', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(682, 'Urandi', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(683, 'Uruçuca', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(684, 'Utinga', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(685, 'Valença', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(686, 'Valente', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(687, 'Várzea da Roça', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(688, 'Várzea do Poço', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(689, 'Várzea Nova', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(690, 'Varzedo', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(691, 'Vera Cruz', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(692, 'Vereda', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(693, 'Vitória da Conquista', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(694, 'Wagner', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(695, 'Wanderley', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(696, 'Wenceslau Guimarães', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(697, 'Xique-Xique', 5);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(698, 'Abaiara', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(699, 'Acarape', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(700, 'Acaraú', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(701, 'Acopiara', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(702, 'Aiuaba', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(703, 'Alcântaras', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(704, 'Altaneira', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(705, 'Alto Santo', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(706, 'Amontada', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(707, 'Antonina do Norte', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(708, 'Apuiarés', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(709, 'Aquiraz', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(710, 'Aracati', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(711, 'Aracoiaba', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(712, 'Ararendá', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(713, 'Araripe', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(714, 'Aratuba', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(715, 'Arneiroz', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(716, 'Assaré', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(717, 'Aurora', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(718, 'Baixio', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(719, 'Banabuiú', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(720, 'Barbalha', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(721, 'Barreira', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(722, 'Barro', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(723, 'Barroquinha', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(724, 'Baturité', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(725, 'Beberibe', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(726, 'Bela Cruz', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(727, 'Boa Viagem', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(728, 'Brejo Santo', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(729, 'Camocim', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(730, 'Campos Sales', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(731, 'Canindé', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(732, 'Capistrano', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(733, 'Caridade', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(734, 'Cariré', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(735, 'Caririaçu', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(736, 'Cariús', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(737, 'Carnaubal', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(738, 'Cascavel', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(739, 'Catarina', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(740, 'Catunda', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(741, 'Caucaia', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(742, 'Cedro', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(743, 'Chaval', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(744, 'Choró', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(745, 'Chorozinho', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(746, 'Coreaú', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(747, 'Crateús', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(748, 'Crato', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(749, 'Croatá', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(750, 'Cruz', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(751, 'Deputado Irapuan Pinheiro', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(752, 'Ererê', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(753, 'Eusébio', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(754, 'Farias Brito', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(755, 'Forquilha', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(756, 'Fortaleza', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(757, 'Fortim', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(758, 'Frecheirinha', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(759, 'General Sampaio', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(760, 'Graça', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(761, 'Granja', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(762, 'Granjeiro', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(763, 'Groaíras', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(764, 'Guaiúba', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(765, 'Guaraciaba do Norte', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(766, 'Guaramiranga', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(767, 'Hidrolândia', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(768, 'Horizonte', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(769, 'Ibaretama', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(770, 'Ibiapina', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(771, 'Ibicuitinga', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(772, 'Icapuí', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(773, 'Icó', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(774, 'Iguatu', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(775, 'Independência', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(776, 'Ipaporanga', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(777, 'Ipaumirim', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(778, 'Ipu', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(779, 'Ipueiras', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(780, 'Iracema', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(781, 'Irauçuba', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(782, 'Itaiçaba', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(783, 'Itaitinga', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(784, 'Itapagé', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(785, 'Itapipoca', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(786, 'Itapiúna', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(787, 'Itarema', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(788, 'Itatira', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(789, 'Jaguaretama', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(790, 'Jaguaribara', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(791, 'Jaguaribe', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(792, 'Jaguaruana', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(793, 'Jardim', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(794, 'Jati', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(795, 'Jijoca de Jericoacoara', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(796, 'Juazeiro do Norte', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(797, 'Jucás', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(798, 'Lavras da Mangabeira', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(799, 'Limoeiro do Norte', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(800, 'Madalena', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(801, 'Maracanaú', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(802, 'Maranguape', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(803, 'Marco', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(804, 'Martinópole', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(805, 'Massapê', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(806, 'Mauriti', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(807, 'Meruoca', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(808, 'Milagres', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(809, 'Milhã', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(810, 'Miraíma', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(811, 'Missão Velha', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(812, 'Mombaça', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(813, 'Monsenhor Tabosa', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(814, 'Morada Nova', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(815, 'Moraújo', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(816, 'Morrinhos', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(817, 'Mucambo', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(818, 'Mulungu', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(819, 'Nova Olinda', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(820, 'Nova Russas', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(821, 'Novo Oriente', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(822, 'Ocara', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(823, 'Orós', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(824, 'Pacajus', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(825, 'Pacatuba', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(826, 'Pacoti', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(827, 'Pacujá', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(828, 'Palhano', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(829, 'Palmácia', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(830, 'Paracuru', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(831, 'Paraipaba', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(832, 'Parambu', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(833, 'Paramoti', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(834, 'Pedra Branca', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(835, 'Penaforte', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(836, 'Pentecoste', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(837, 'Pereiro', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(838, 'Pindoretama', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(839, 'Piquet Carneiro', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(840, 'Pires Ferreira', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(841, 'Poranga', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(842, 'Porteiras', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(843, 'Potengi', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(844, 'Potiretama', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(845, 'Quiterianópolis', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(846, 'Quixadá', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(847, 'Quixelô', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(848, 'Quixeramobim', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(849, 'Quixeré', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(850, 'Redenção', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(851, 'Reriutaba', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(852, 'Russas', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(853, 'Saboeiro', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(854, 'Salitre', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(855, 'Santa Quitéria', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(856, 'Santana do Acaraú', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(857, 'Santana do Cariri', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(858, 'São Benedito', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(859, 'São Gonçalo do Amarante', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(860, 'São João do Jaguaribe', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(861, 'São Luís do Curu', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(862, 'Senador Pompeu', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(863, 'Senador Sá', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(864, 'Sobral', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(865, 'Solonópole', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(866, 'Tabuleiro do Norte', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(867, 'Tamboril', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(868, 'Tarrafas', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(869, 'Tauá', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(870, 'Tejuçuoca', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(871, 'Tianguá', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(872, 'Trairi', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(873, 'Tururu', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(874, 'Ubajara', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(875, 'Umari', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(876, 'Umirim', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(877, 'Uruburetama', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(878, 'Uruoca', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(879, 'Varjota', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(880, 'Várzea Alegre', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(881, 'Viçosa do Ceará', 6);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(882, 'Brasília', 7);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(883, 'Abadia de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(884, 'Abadiânia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(885, 'Acreúna', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(886, 'Adelândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(887, 'Água Fria de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(888, 'Água Limpa', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(889, 'Águas Lindas de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(890, 'Alexânia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(891, 'Aloândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(892, 'Alto Horizonte', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(893, 'Alto Paraíso de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(894, 'Alvorada do Norte', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(895, 'Amaralina', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(896, 'Americano do Brasil', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(897, 'Amorinópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(898, 'Anápolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(899, 'Anhanguera', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(900, 'Anicuns', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(901, 'Aparecida de Goiânia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(902, 'Aparecida do Rio Doce', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(903, 'Aporé', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(904, 'Araçu', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(905, 'Aragarças', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(906, 'Aragoiânia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(907, 'Araguapaz', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(908, 'Arenópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(909, 'Aruanã', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(910, 'Aurilândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(911, 'Avelinópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(912, 'Baliza', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(913, 'Barro Alto', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(914, 'Bela Vista de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(915, 'Bom Jardim de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(916, 'Bom Jesus de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(917, 'Bonfinópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(918, 'Bonópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(919, 'Brazabrantes', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(920, 'Britânia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(921, 'Buriti Alegre', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(922, 'Buriti de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(923, 'Buritinópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(924, 'Cabeceiras', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(925, 'Cachoeira Alta', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(926, 'Cachoeira de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(927, 'Cachoeira Dourada', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(928, 'Caçu', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(929, 'Caiapônia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(930, 'Caldas Novas', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(931, 'Caldazinha', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(932, 'Campestre de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(933, 'Campinaçu', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(934, 'Campinorte', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(935, 'Campo Alegre de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(936, 'Campo Limpo de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(937, 'Campos Belos', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(938, 'Campos Verdes', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(939, 'Carmo do Rio Verde', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(940, 'Castelândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(941, 'Catalão', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(942, 'Caturaí', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(943, 'Cavalcante', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(944, 'Ceres', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(945, 'Cezarina', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(946, 'Chapadão do Céu', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(947, 'Cidade Ocidental', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(948, 'Cocalzinho de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(949, 'Colinas do Sul', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(950, 'Córrego do Ouro', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(951, 'Corumbá de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(952, 'Corumbaíba', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(953, 'Cristalina', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(954, 'Cristianópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(955, 'Crixás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(956, 'Cromínia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(957, 'Cumari', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(958, 'Damianópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(959, 'Damolândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(960, 'Davinópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(961, 'Diorama', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(962, 'Divinópolis de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(963, 'Doverlândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(964, 'Edealina', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(965, 'Edéia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(966, 'Estrela do Norte', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(967, 'Faina', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(968, 'Fazenda Nova', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(969, 'Firminópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(970, 'Flores de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(971, 'Formosa', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(972, 'Formoso', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(973, 'Gameleira de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(974, 'Goianápolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(975, 'Goiandira', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(976, 'Goianésia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(977, 'Goiânia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(978, 'Goianira', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(979, 'Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(980, 'Goiatuba', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(981, 'Gouvelândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(982, 'Guapó', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(983, 'Guaraíta', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(984, 'Guarani de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(985, 'Guarinos', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(986, 'Heitoraí', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(987, 'Hidrolândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(988, 'Hidrolina', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(989, 'Iaciara', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(990, 'Inaciolândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(991, 'Indiara', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(992, 'Inhumas', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(993, 'Ipameri', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(994, 'Ipiranga de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(995, 'Iporá', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(996, 'Israelândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(997, 'Itaberaí', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(998, 'Itaguari', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(999, 'Itaguaru', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1000, 'Itajá', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1001, 'Itapaci', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1002, 'Itapirapuã', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1003, 'Itapuranga', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1004, 'Itarumã', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1005, 'Itauçu', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1006, 'Itumbiara', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1007, 'Ivolândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1008, 'Jandaia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1009, 'Jaraguá', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1010, 'Jataí', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1011, 'Jaupaci', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1012, 'Jesúpolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1013, 'Joviânia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1014, 'Jussara', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1015, 'Lagoa Santa', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1016, 'Leopoldo de Bulhões', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1017, 'Luziânia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1018, 'Mairipotaba', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1019, 'Mambaí', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1020, 'Mara Rosa', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1021, 'Marzagão', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1022, 'Matrinchã', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1023, 'Maurilândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1024, 'Mimoso de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1025, 'Minaçu', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1026, 'Mineiros', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1027, 'Moiporá', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1028, 'Monte Alegre de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1029, 'Montes Claros de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1030, 'Montividiu', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1031, 'Montividiu do Norte', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1032, 'Morrinhos', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1033, 'Morro Agudo de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1034, 'Mossâmedes', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1035, 'Mozarlândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1036, 'Mundo Novo', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1037, 'Mutunópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1038, 'Nazário', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1039, 'Nerópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1040, 'Niquelândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1041, 'Nova América', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1042, 'Nova Aurora', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1043, 'Nova Crixás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1044, 'Nova Glória', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1045, 'Nova Iguaçu de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1046, 'Nova Roma', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1047, 'Nova Veneza', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1048, 'Novo Brasil', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1049, 'Novo Gama', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1050, 'Novo Planalto', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1051, 'Orizona', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1052, 'Ouro Verde de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1053, 'Ouvidor', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1054, 'Padre Bernardo', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1055, 'Palestina de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1056, 'Palmeiras de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1057, 'Palmelo', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1058, 'Palminópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1059, 'Panamá', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1060, 'Paranaiguara', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1061, 'Paraúna', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1062, 'Perolândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1063, 'Petrolina de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1064, 'Pilar de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1065, 'Piracanjuba', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1066, 'Piranhas', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1067, 'Pirenópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1068, 'Pires do Rio', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1069, 'Planaltina', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1070, 'Pontalina', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1071, 'Porangatu', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1072, 'Porteirão', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1073, 'Portelândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1074, 'Posse', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1075, 'Professor Jamil', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1076, 'Quirinópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1077, 'Rialma', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1078, 'Rianápolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1079, 'Rio Quente', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1080, 'Rio Verde', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1081, 'Rubiataba', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1082, 'Sanclerlândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1083, 'Santa Bárbara de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1084, 'Santa Cruz de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1085, 'Santa Fé de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1086, 'Santa Helena de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1087, 'Santa Isabel', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1088, 'Santa Rita do Araguaia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1089, 'Santa Rita do Novo Destino', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1090, 'Santa Rosa de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1091, 'Santa Tereza de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1092, 'Santa Terezinha de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1093, 'Santo Antônio da Barra', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1094, 'Santo Antônio de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1095, 'Santo Antônio do Descoberto', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1096, 'São Domingos', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1097, 'São Francisco de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1098, 'São João d`Aliança', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1099, 'São João da Paraúna', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1100, 'São Luís de Montes Belos', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1101, 'São Luíz do Norte', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1102, 'São Miguel do Araguaia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1103, 'São Miguel do Passa Quatro', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1104, 'São Patrício', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1105, 'São Simão', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1106, 'Senador Canedo', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1107, 'Serranópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1108, 'Silvânia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1109, 'Simolândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1110, 'Sítio d`Abadia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1111, 'Taquaral de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1112, 'Teresina de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1113, 'Terezópolis de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1114, 'Três Ranchos', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1115, 'Trindade', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1116, 'Trombas', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1117, 'Turvânia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1118, 'Turvelândia', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1119, 'Uirapuru', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1120, 'Uruaçu', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1121, 'Uruana', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1122, 'Urutaí', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1123, 'Valparaíso de Goiás', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1124, 'Varjão', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1125, 'Vianópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1126, 'Vicentinópolis', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1127, 'Vila Boa', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1128, 'Vila Propício', 9);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1129, 'Açailândia', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1130, 'Afonso Cunha', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1131, 'Água Doce do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1132, 'Alcântara', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1133, 'Aldeias Altas', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1134, 'Altamira do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1135, 'Alto Alegre do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1136, 'Alto Alegre do Pindaré', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1137, 'Alto Parnaíba', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1138, 'Amapá do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1139, 'Amarante do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1140, 'Anajatuba', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1141, 'Anapurus', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1142, 'Apicum-Açu', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1143, 'Araguanã', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1144, 'Araioses', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1145, 'Arame', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1146, 'Arari', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1147, 'Axixá', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1148, 'Bacabal', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1149, 'Bacabeira', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1150, 'Bacuri', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1151, 'Bacurituba', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1152, 'Balsas', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1153, 'Barão de Grajaú', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1154, 'Barra do Corda', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1155, 'Barreirinhas', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1156, 'Bela Vista do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1157, 'Belágua', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1158, 'Benedito Leite', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1159, 'Bequimão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1160, 'Bernardo do Mearim', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1161, 'Boa Vista do Gurupi', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1162, 'Bom Jardim', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1163, 'Bom Jesus das Selvas', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1164, 'Bom Lugar', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1165, 'Brejo', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1166, 'Brejo de Areia', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1167, 'Buriti', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1168, 'Buriti Bravo', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1169, 'Buriticupu', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1170, 'Buritirana', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1171, 'Cachoeira Grande', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1172, 'Cajapió', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1173, 'Cajari', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1174, 'Campestre do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1175, 'Cândido Mendes', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1176, 'Cantanhede', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1177, 'Capinzal do Norte', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1178, 'Carolina', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1179, 'Carutapera', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1180, 'Caxias', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1181, 'Cedral', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1182, 'Central do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1183, 'Centro do Guilherme', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1184, 'Centro Novo do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1185, 'Chapadinha', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1186, 'Cidelândia', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1187, 'Codó', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1188, 'Coelho Neto', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1189, 'Colinas', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1190, 'Conceição do Lago-Açu', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1191, 'Coroatá', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1192, 'Cururupu', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1193, 'Davinópolis', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1194, 'Dom Pedro', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1195, 'Duque Bacelar', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1196, 'Esperantinópolis', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1197, 'Estreito', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1198, 'Feira Nova do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1199, 'Fernando Falcão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1200, 'Formosa da Serra Negra', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1201, 'Fortaleza dos Nogueiras', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1202, 'Fortuna', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1203, 'Godofredo Viana', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1204, 'Gonçalves Dias', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1205, 'Governador Archer', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1206, 'Governador Edison Lobão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1207, 'Governador Eugênio Barros', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1208, 'Governador Luiz Rocha', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1209, 'Governador Newton Bello', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1210, 'Governador Nunes Freire', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1211, 'Graça Aranha', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1212, 'Grajaú', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1213, 'Guimarães', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1214, 'Humberto de Campos', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1215, 'Icatu', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1216, 'Igarapé do Meio', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1217, 'Igarapé Grande', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1218, 'Imperatriz', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1219, 'Itaipava do Grajaú', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1220, 'Itapecuru Mirim', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1221, 'Itinga do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1222, 'Jatobá', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1223, 'Jenipapo dos Vieiras', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1224, 'João Lisboa', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1225, 'Joselândia', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1226, 'Junco do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1227, 'Lago da Pedra', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1228, 'Lago do Junco', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1229, 'Lago dos Rodrigues', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1230, 'Lago Verde', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1231, 'Lagoa do Mato', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1232, 'Lagoa Grande do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1233, 'Lajeado Novo', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1234, 'Lima Campos', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1235, 'Loreto', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1236, 'Luís Domingues', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1237, 'Magalhães de Almeida', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1238, 'Maracaçumé', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1239, 'Marajá do Sena', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1240, 'Maranhãozinho', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1241, 'Mata Roma', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1242, 'Matinha', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1243, 'Matões', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1244, 'Matões do Norte', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1245, 'Milagres do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1246, 'Mirador', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1247, 'Miranda do Norte', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1248, 'Mirinzal', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1249, 'Monção', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1250, 'Montes Altos', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1251, 'Morros', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1252, 'Nina Rodrigues', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1253, 'Nova Colinas', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1254, 'Nova Iorque', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1255, 'Nova Olinda do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1256, 'Olho d`Água das Cunhãs', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1257, 'Olinda Nova do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1258, 'Paço do Lumiar', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1259, 'Palmeirândia', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1260, 'Paraibano', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1261, 'Parnarama', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1262, 'Passagem Franca', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1263, 'Pastos Bons', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1264, 'Paulino Neves', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1265, 'Paulo Ramos', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1266, 'Pedreiras', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1267, 'Pedro do Rosário', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1268, 'Penalva', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1269, 'Peri Mirim', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1270, 'Peritoró', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1271, 'Pindaré-Mirim', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1272, 'Pinheiro', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1273, 'Pio XII', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1274, 'Pirapemas', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1275, 'Poção de Pedras', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1276, 'Porto Franco', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1277, 'Porto Rico do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1278, 'Presidente Dutra', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1279, 'Presidente Juscelino', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1280, 'Presidente Médici', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1281, 'Presidente Sarney', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1282, 'Presidente Vargas', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1283, 'Primeira Cruz', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1284, 'Raposa', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1285, 'Riachão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1286, 'Ribamar Fiquene', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1287, 'Rosário', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1288, 'Sambaíba', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1289, 'Santa Filomena do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1290, 'Santa Helena', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1291, 'Santa Inês', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1292, 'Santa Luzia', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1293, 'Santa Luzia do Paruá', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1294, 'Santa Quitéria do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1295, 'Santa Rita', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1296, 'Santana do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1297, 'Santo Amaro do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1298, 'Santo Antônio dos Lopes', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1299, 'São Benedito do Rio Preto', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1300, 'São Bento', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1301, 'São Bernardo', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1302, 'São Domingos do Azeitão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1303, 'São Domingos do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1304, 'São Félix de Balsas', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1305, 'São Francisco do Brejão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1306, 'São Francisco do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1307, 'São João Batista', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1308, 'São João do Carú', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1309, 'São João do Paraíso', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1310, 'São João do Soter', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1311, 'São João dos Patos', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1312, 'São José de Ribamar', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1313, 'São José dos Basílios', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1314, 'São Luís', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1315, 'São Luís Gonzaga do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1316, 'São Mateus do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1317, 'São Pedro da Água Branca', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1318, 'São Pedro dos Crentes', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1319, 'São Raimundo das Mangabeiras', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1320, 'São Raimundo do Doca Bezerra', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1321, 'São Roberto', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1322, 'São Vicente Ferrer', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1323, 'Satubinha', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1324, 'Senador Alexandre Costa', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1325, 'Senador La Rocque', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1326, 'Serrano do Maranhão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1327, 'Sítio Novo', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1328, 'Sucupira do Norte', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1329, 'Sucupira do Riachão', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1330, 'Tasso Fragoso', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1331, 'Timbiras', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1332, 'Timon', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1333, 'Trizidela do Vale', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1334, 'Tufilândia', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1335, 'Tuntum', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1336, 'Turiaçu', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1337, 'Turilândia', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1338, 'Tutóia', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1339, 'Urbano Santos', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1340, 'Vargem Grande', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1341, 'Viana', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1342, 'Vila Nova dos Martírios', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1343, 'Vitória do Mearim', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1344, 'Vitorino Freire', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1345, 'Zé Doca', 10);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1346, 'Acorizal', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1347, 'Água Boa', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1348, 'Alta Floresta', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1349, 'Alto Araguaia', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1350, 'Alto Boa Vista', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1351, 'Alto Garças', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1352, 'Alto Paraguai', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1353, 'Alto Taquari', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1354, 'Apiacás', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1355, 'Araguaiana', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1356, 'Araguainha', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1357, 'Araputanga', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1358, 'Arenápolis', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1359, 'Aripuanã', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1360, 'Barão de Melgaço', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1361, 'Barra do Bugres', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1362, 'Barra do Garças', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1363, 'Bom Jesus do Araguaia', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1364, 'Brasnorte', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1365, 'Cáceres', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1366, 'Campinápolis', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1367, 'Campo Novo do Parecis', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1368, 'Campo Verde', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1369, 'Campos de Júlio', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1370, 'Canabrava do Norte', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1371, 'Canarana', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1372, 'Carlinda', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1373, 'Castanheira', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1374, 'Chapada dos Guimarães', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1375, 'Cláudia', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1376, 'Cocalinho', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1377, 'Colíder', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1378, 'Colniza', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1379, 'Comodoro', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1380, 'Confresa', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1381, 'Conquista d`Oeste', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1382, 'Cotriguaçu', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1383, 'Cuiabá', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1384, 'Curvelândia', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1385, 'Curvelândia', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1386, 'Denise', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1387, 'Diamantino', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1388, 'Dom Aquino', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1389, 'Feliz Natal', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1390, 'Figueirópolis d`Oeste', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1391, 'Gaúcha do Norte', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1392, 'General Carneiro', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1393, 'Glória d`Oeste', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1394, 'Guarantã do Norte', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1395, 'Guiratinga', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1396, 'Indiavaí', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1397, 'Ipiranga do Norte', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1398, 'Itanhangá', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1399, 'Itaúba', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1400, 'Itiquira', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1401, 'Jaciara', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1402, 'Jangada', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1403, 'Jauru', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1404, 'Juara', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1405, 'Juína', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1406, 'Juruena', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1407, 'Juscimeira', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1408, 'Lambari d`Oeste', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1409, 'Lucas do Rio Verde', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1410, 'Luciára', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1411, 'Marcelândia', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1412, 'Matupá', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1413, 'Mirassol d`Oeste', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1414, 'Nobres', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1415, 'Nortelândia', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1416, 'Nossa Senhora do Livramento', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1417, 'Nova Bandeirantes', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1418, 'Nova Brasilândia', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1419, 'Nova Canaã do Norte', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1420, 'Nova Guarita', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1421, 'Nova Lacerda', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1422, 'Nova Marilândia', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1423, 'Nova Maringá', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1424, 'Nova Monte verde', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1425, 'Nova Mutum', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1426, 'Nova Olímpia', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1427, 'Nova Santa Helena', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1428, 'Nova Ubiratã', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1429, 'Nova Xavantina', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1430, 'Novo Horizonte do Norte', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1431, 'Novo Mundo', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1432, 'Novo Santo Antônio', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1433, 'Novo São Joaquim', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1434, 'Paranaíta', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1435, 'Paranatinga', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1436, 'Pedra Preta', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1437, 'Peixoto de Azevedo', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1438, 'Planalto da Serra', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1439, 'Poconé', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1440, 'Pontal do Araguaia', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1441, 'Ponte Branca', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1442, 'Pontes e Lacerda', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1443, 'Porto Alegre do Norte', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1444, 'Porto dos Gaúchos', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1445, 'Porto Esperidião', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1446, 'Porto Estrela', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1447, 'Poxoréo', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1448, 'Primavera do Leste', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1449, 'Querência', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1450, 'Reserva do Cabaçal', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1451, 'Ribeirão Cascalheira', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1452, 'Ribeirãozinho', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1453, 'Rio Branco', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1454, 'Rondolândia', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1455, 'Rondonópolis', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1456, 'Rosário Oeste', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1457, 'Salto do Céu', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1458, 'Santa Carmem', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1459, 'Santa Cruz do Xingu', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1460, 'Santa Rita do Trivelato', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1461, 'Santa Terezinha', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1462, 'Santo Afonso', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1463, 'Santo Antônio do Leste', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1464, 'Santo Antônio do Leverger', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1465, 'São Félix do Araguaia', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1466, 'São José do Povo', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1467, 'São José do Rio Claro', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1468, 'São José do Xingu', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1469, 'São José dos Quatro Marcos', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1470, 'São Pedro da Cipa', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1471, 'Sapezal', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1472, 'Serra Nova Dourada', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1473, 'Sinop', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1474, 'Sorriso', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1475, 'Tabaporã', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1476, 'Tangará da Serra', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1477, 'Tapurah', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1478, 'Terra Nova do Norte', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1479, 'Tesouro', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1480, 'Torixoréu', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1481, 'União do Sul', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1482, 'Vale de São Domingos', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1483, 'Várzea Grande', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1484, 'Vera', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1485, 'Vila Bela da Santíssima Trindade', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1486, 'Vila Rica', 13);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1487, 'Água Clara', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1488, 'Alcinópolis', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1489, 'Amambaí', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1490, 'Anastácio', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1491, 'Anaurilândia', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1492, 'Angélica', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1493, 'Antônio João', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1494, 'Aparecida do Taboado', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1495, 'Aquidauana', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1496, 'Aral Moreira', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1497, 'Bandeirantes', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1498, 'Bataguassu', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1499, 'Bataiporã', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1500, 'Bela Vista', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1501, 'Bodoquena', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1502, 'Bonito', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1503, 'Brasilândia', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1504, 'Caarapó', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1505, 'Camapuã', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1506, 'Campo Grande', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1507, 'Caracol', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1508, 'Cassilândia', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1509, 'Chapadão do Sul', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1510, 'Corguinho', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1511, 'Coronel Sapucaia', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1512, 'Corumbá', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1513, 'Costa Rica', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1514, 'Coxim', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1515, 'Deodápolis', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1516, 'Dois Irmãos do Buriti', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1517, 'Douradina', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1518, 'Dourados', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1519, 'Eldorado', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1520, 'Fátima do Sul', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1521, 'Figueirão', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1522, 'Glória de Dourados', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1523, 'Guia Lopes da Laguna', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1524, 'Iguatemi', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1525, 'Inocência', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1526, 'Itaporã', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1527, 'Itaquiraí', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1528, 'Ivinhema', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1529, 'Japorã', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1530, 'Jaraguari', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1531, 'Jardim', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1532, 'Jateí', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1533, 'Juti', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1534, 'Ladário', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1535, 'Laguna Carapã', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1536, 'Maracaju', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1537, 'Miranda', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1538, 'Mundo Novo', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1539, 'Naviraí', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1540, 'Nioaque', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1541, 'Nova Alvorada do Sul', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1542, 'Nova Andradina', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1543, 'Novo Horizonte do Sul', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1544, 'Paranaíba', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1545, 'Paranhos', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1546, 'Pedro Gomes', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1547, 'Ponta Porã', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1548, 'Porto Murtinho', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1549, 'Ribas do Rio Pardo', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1550, 'Rio Brilhante', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1551, 'Rio Negro', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1552, 'Rio Verde de Mato Grosso', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1553, 'Rochedo', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1554, 'Santa Rita do Pardo', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1555, 'São Gabriel do Oeste', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1556, 'Selvíria', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1557, 'Sete Quedas', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1558, 'Sidrolândia', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1559, 'Sonora', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1560, 'Tacuru', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1561, 'Taquarussu', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1562, 'Terenos', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1563, 'Três Lagoas', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1564, 'Vicentina', 12);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1565, 'Abadia dos Dourados', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1566, 'Abaeté', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1567, 'Abre Campo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1568, 'Acaiaca', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1569, 'Açucena', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1570, 'Água Boa', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1571, 'Água Comprida', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1572, 'Aguanil', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1573, 'Águas Formosas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1574, 'Águas Vermelhas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1575, 'Aimorés', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1576, 'Aiuruoca', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1577, 'Alagoa', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1578, 'Albertina', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1579, 'Além Paraíba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1580, 'Alfenas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1581, 'Alfredo Vasconcelos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1582, 'Almenara', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1583, 'Alpercata', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1584, 'Alpinópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1585, 'Alterosa', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1586, 'Alto Caparaó', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1587, 'Alto Jequitibá', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1588, 'Alto Rio Doce', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1589, 'Alvarenga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1590, 'Alvinópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1591, 'Alvorada de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1592, 'Amparo do Serra', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1593, 'Andradas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1594, 'Andrelândia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1595, 'Angelândia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1596, 'Antônio Carlos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1597, 'Antônio Dias', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1598, 'Antônio Prado de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1599, 'Araçaí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1600, 'Aracitaba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1601, 'Araçuaí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1602, 'Araguari', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1603, 'Arantina', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1604, 'Araponga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1605, 'Araporã', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1606, 'Arapuá', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1607, 'Araújos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1608, 'Araxá', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1609, 'Arceburgo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1610, 'Arcos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1611, 'Areado', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1612, 'Argirita', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1613, 'Aricanduva', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1614, 'Arinos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1615, 'Astolfo Dutra', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1616, 'Ataléia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1617, 'Augusto de Lima', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1618, 'Baependi', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1619, 'Baldim', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1620, 'Bambuí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1621, 'Bandeira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1622, 'Bandeira do Sul', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1623, 'Barão de Cocais', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1624, 'Barão de Monte Alto', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1625, 'Barbacena', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1626, 'Barra Longa', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1627, 'Barroso', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1628, 'Bela Vista de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1629, 'Belmiro Braga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1630, 'Belo Horizonte', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1631, 'Belo Oriente', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1632, 'Belo Vale', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1633, 'Berilo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1634, 'Berizal', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1635, 'Bertópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1636, 'Betim', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1637, 'Bias Fortes', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1638, 'Bicas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1639, 'Biquinhas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1640, 'Boa Esperança', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1641, 'Bocaina de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1642, 'Bocaiúva', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1643, 'Bom Despacho', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1644, 'Bom Jardim de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1645, 'Bom Jesus da Penha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1646, 'Bom Jesus do Amparo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1647, 'Bom Jesus do Galho', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1648, 'Bom Repouso', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1649, 'Bom Sucesso', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1650, 'Bonfim', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1651, 'Bonfinópolis de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1652, 'Bonito de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1653, 'Borda da Mata', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1654, 'Botelhos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1655, 'Botumirim', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1656, 'Brás Pires', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1657, 'Brasilândia de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1658, 'Brasília de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1659, 'Brasópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1660, 'Braúnas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1661, 'Brumadinho', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1662, 'Bueno Brandão', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1663, 'Buenópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1664, 'Bugre', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1665, 'Buritis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1666, 'Buritizeiro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1667, 'Cabeceira Grande', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1668, 'Cabo Verde', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1669, 'Cachoeira da Prata', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1670, 'Cachoeira de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1671, 'Cachoeira de Pajeú', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1672, 'Cachoeira Dourada', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1673, 'Caetanópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1674, 'Caeté', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1675, 'Caiana', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1676, 'Cajuri', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1677, 'Caldas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1678, 'Camacho', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1679, 'Camanducaia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1680, 'Cambuí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1681, 'Cambuquira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1682, 'Campanário', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1683, 'Campanha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1684, 'Campestre', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1685, 'Campina Verde', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1686, 'Campo Azul', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1687, 'Campo Belo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1688, 'Campo do Meio', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1689, 'Campo Florido', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1690, 'Campos Altos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1691, 'Campos Gerais', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1692, 'Cana Verde', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1693, 'Canaã', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1694, 'Canápolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1695, 'Candeias', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1696, 'Cantagalo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1697, 'Caparaó', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1698, 'Capela Nova', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1699, 'Capelinha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1700, 'Capetinga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1701, 'Capim Branco', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1702, 'Capinópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1703, 'Capitão Andrade', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1704, 'Capitão Enéas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1705, 'Capitólio', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1706, 'Caputira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1707, 'Caraí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1708, 'Caranaíba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1709, 'Carandaí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1710, 'Carangola', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1711, 'Caratinga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1712, 'Carbonita', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1713, 'Careaçu', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1714, 'Carlos Chagas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1715, 'Carmésia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1716, 'Carmo da Cachoeira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1717, 'Carmo da Mata', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1718, 'Carmo de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1719, 'Carmo do Cajuru', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1720, 'Carmo do Paranaíba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1721, 'Carmo do Rio Claro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1722, 'Carmópolis de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1723, 'Carneirinho', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1724, 'Carrancas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1725, 'Carvalhópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1726, 'Carvalhos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1727, 'Casa Grande', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1728, 'Cascalho Rico', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1729, 'Cássia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1730, 'Cataguases', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1731, 'Catas Altas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1732, 'Catas Altas da Noruega', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1733, 'Catuji', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1734, 'Catuti', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1735, 'Caxambu', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1736, 'Cedro do Abaeté', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1737, 'Central de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1738, 'Centralina', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1739, 'Chácara', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1740, 'Chalé', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1741, 'Chapada do Norte', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1742, 'Chapada Gaúcha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1743, 'Chiador', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1744, 'Cipotânea', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1745, 'Claraval', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1746, 'Claro dos Poções', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1747, 'Cláudio', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1748, 'Coimbra', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1749, 'Coluna', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1750, 'Comendador Gomes', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1751, 'Comercinho', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1752, 'Conceição da Aparecida', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1753, 'Conceição da Barra de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1754, 'Conceição das Alagoas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1755, 'Conceição das Pedras', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1756, 'Conceição de Ipanema', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1757, 'Conceição do Mato Dentro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1758, 'Conceição do Pará', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1759, 'Conceição do Rio Verde', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1760, 'Conceição dos Ouros', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1761, 'Cônego Marinho', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1762, 'Confins', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1763, 'Congonhal', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1764, 'Congonhas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1765, 'Congonhas do Norte', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1766, 'Conquista', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1767, 'Conselheiro Lafaiete', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1768, 'Conselheiro Pena', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1769, 'Consolação', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1770, 'Contagem', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1771, 'Coqueiral', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1772, 'Coração de Jesus', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1773, 'Cordisburgo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1774, 'Cordislândia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1775, 'Corinto', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1776, 'Coroaci', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1777, 'Coromandel', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1778, 'Coronel Fabriciano', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1779, 'Coronel Murta', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1780, 'Coronel Pacheco', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1781, 'Coronel Xavier Chaves', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1782, 'Córrego Danta', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1783, 'Córrego do Bom Jesus', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1784, 'Córrego Fundo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1785, 'Córrego Novo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1786, 'Couto de Magalhães de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1787, 'Crisólita', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1788, 'Cristais', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1789, 'Cristália', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1790, 'Cristiano Otoni', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1791, 'Cristina', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1792, 'Crucilândia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1793, 'Cruzeiro da Fortaleza', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1794, 'Cruzília', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1795, 'Cuparaque', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1796, 'Curral de Dentro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1797, 'Curvelo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1798, 'Datas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1799, 'Delfim Moreira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1800, 'Delfinópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1801, 'Delta', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1802, 'Descoberto', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1803, 'Desterro de Entre Rios', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1804, 'Desterro do Melo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1805, 'Diamantina', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1806, 'Diogo de Vasconcelos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1807, 'Dionísio', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1808, 'Divinésia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1809, 'Divino', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1810, 'Divino das Laranjeiras', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1811, 'Divinolândia de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1812, 'Divinópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1813, 'Divisa Alegre', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1814, 'Divisa Nova', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1815, 'Divisópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1816, 'Dom Bosco', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1817, 'Dom Cavati', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1818, 'Dom Joaquim', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1819, 'Dom Silvério', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1820, 'Dom Viçoso', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1821, 'Dona Eusébia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1822, 'Dores de Campos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1823, 'Dores de Guanhães', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1824, 'Dores do Indaiá', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1825, 'Dores do Turvo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1826, 'Doresópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1827, 'Douradoquara', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1828, 'Durandé', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1829, 'Elói Mendes', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1830, 'Engenheiro Caldas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1831, 'Engenheiro Navarro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1832, 'Entre Folhas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1833, 'Entre Rios de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1834, 'Ervália', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1835, 'Esmeraldas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1836, 'Espera Feliz', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1837, 'Espinosa', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1838, 'Espírito Santo do Dourado', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1839, 'Estiva', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1840, 'Estrela Dalva', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1841, 'Estrela do Indaiá', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1842, 'Estrela do Sul', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1843, 'Eugenópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1844, 'Ewbank da Câmara', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1845, 'Extrema', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1846, 'Fama', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1847, 'Faria Lemos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1848, 'Felício dos Santos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1849, 'Felisburgo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1850, 'Felixlândia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1851, 'Fernandes Tourinho', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1852, 'Ferros', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1853, 'Fervedouro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1854, 'Florestal', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1855, 'Formiga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1856, 'Formoso', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1857, 'Fortaleza de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1858, 'Fortuna de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1859, 'Francisco Badaró', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1860, 'Francisco Dumont', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1861, 'Francisco Sá', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1862, 'Franciscópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1863, 'Frei Gaspar', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1864, 'Frei Inocêncio', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1865, 'Frei Lagonegro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1866, 'Fronteira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1867, 'Fronteira dos Vales', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1868, 'Fruta de Leite', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1869, 'Frutal', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1870, 'Funilândia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1871, 'Galiléia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1872, 'Gameleiras', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1873, 'Glaucilândia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1874, 'Goiabeira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1875, 'Goianá', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1876, 'Gonçalves', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1877, 'Gonzaga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1878, 'Gouveia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1879, 'Governador Valadares', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1880, 'Grão Mogol', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1881, 'Grupiara', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1882, 'Guanhães', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1883, 'Guapé', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1884, 'Guaraciaba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1885, 'Guaraciama', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1886, 'Guaranésia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1887, 'Guarani', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1888, 'Guarará', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1889, 'Guarda-Mor', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1890, 'Guaxupé', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1891, 'Guidoval', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1892, 'Guimarânia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1893, 'Guiricema', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1894, 'Gurinhatã', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1895, 'Heliodora', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1896, 'Iapu', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1897, 'Ibertioga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1898, 'Ibiá', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1899, 'Ibiaí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1900, 'Ibiracatu', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1901, 'Ibiraci', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1902, 'Ibirité', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1903, 'Ibitiúra de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1904, 'Ibituruna', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1905, 'Icaraí de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1906, 'Igarapé', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1907, 'Igaratinga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1908, 'Iguatama', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1909, 'Ijaci', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1910, 'Ilicínea', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1911, 'Imbé de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1912, 'Inconfidentes', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1913, 'Indaiabira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1914, 'Indianópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1915, 'Ingaí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1916, 'Inhapim', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1917, 'Inhaúma', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1918, 'Inimutaba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1919, 'Ipaba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1920, 'Ipanema', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1921, 'Ipatinga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1922, 'Ipiaçu', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1923, 'Ipuiúna', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1924, 'Iraí de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1925, 'Itabira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1926, 'Itabirinha de Mantena', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1927, 'Itabirito', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1928, 'Itacambira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1929, 'Itacarambi', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1930, 'Itaguara', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1931, 'Itaipé', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1932, 'Itajubá', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1933, 'Itamarandiba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1934, 'Itamarati de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1935, 'Itambacuri', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1936, 'Itambé do Mato Dentro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1937, 'Itamogi', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1938, 'Itamonte', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1939, 'Itanhandu', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1940, 'Itanhomi', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1941, 'Itaobim', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1942, 'Itapagipe', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1943, 'Itapecerica', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1944, 'Itapeva', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1945, 'Itatiaiuçu', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1946, 'Itaú de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1947, 'Itaúna', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1948, 'Itaverava', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1949, 'Itinga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1950, 'Itueta', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1951, 'Ituiutaba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1952, 'Itumirim', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1953, 'Iturama', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1954, 'Itutinga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1955, 'Jaboticatubas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1956, 'Jacinto', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1957, 'Jacuí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1958, 'Jacutinga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1959, 'Jaguaraçu', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1960, 'Jaíba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1961, 'Jampruca', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1962, 'Janaúba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1963, 'Januária', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1964, 'Japaraíba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1965, 'Japonvar', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1966, 'Jeceaba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1967, 'Jenipapo de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1968, 'Jequeri', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1969, 'Jequitaí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1970, 'Jequitibá', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1971, 'Jequitinhonha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1972, 'Jesuânia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1973, 'Joaíma', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1974, 'Joanésia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1975, 'João Monlevade', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1976, 'João Pinheiro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1977, 'Joaquim Felício', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1978, 'Jordânia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1979, 'José Gonçalves de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1980, 'José Raydan', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1981, 'Josenópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1982, 'Juatuba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1983, 'Juiz de Fora', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1984, 'Juramento', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1985, 'Juruaia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1986, 'Juvenília', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1987, 'Ladainha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1988, 'Lagamar', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1989, 'Lagoa da Prata', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1990, 'Lagoa dos Patos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1991, 'Lagoa Dourada', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1992, 'Lagoa Formosa', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1993, 'Lagoa Grande', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1994, 'Lagoa Santa', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1995, 'Lajinha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1996, 'Lambari', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1997, 'Lamim', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1998, 'Laranjal', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(1999, 'Lassance', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2000, 'Lavras', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2001, 'Leandro Ferreira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2002, 'Leme do Prado', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2003, 'Leopoldina', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2004, 'Liberdade', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2005, 'Lima Duarte', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2006, 'Limeira do Oeste', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2007, 'Lontra', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2008, 'Luisburgo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2009, 'Luislândia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2010, 'Luminárias', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2011, 'Luz', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2012, 'Machacalis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2013, 'Machado', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2014, 'Madre de Deus de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2015, 'Malacacheta', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2016, 'Mamonas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2017, 'Manga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2018, 'Manhuaçu', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2019, 'Manhumirim', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2020, 'Mantena', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2021, 'Mar de Espanha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2022, 'Maravilhas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2023, 'Maria da Fé', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2024, 'Mariana', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2025, 'Marilac', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2026, 'Mário Campos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2027, 'Maripá de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2028, 'Marliéria', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2029, 'Marmelópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2030, 'Martinho Campos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2031, 'Martins Soares', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2032, 'Mata Verde', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2033, 'Materlândia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2034, 'Mateus Leme', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2035, 'Mathias Lobato', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2036, 'Matias Barbosa', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2037, 'Matias Cardoso', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2038, 'Matipó', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2039, 'Mato Verde', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2040, 'Matozinhos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2041, 'Matutina', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2042, 'Medeiros', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2043, 'Medina', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2044, 'Mendes Pimentel', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2045, 'Mercês', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2046, 'Mesquita', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2047, 'Minas Novas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2048, 'Minduri', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2049, 'Mirabela', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2050, 'Miradouro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2051, 'Miraí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2052, 'Miravânia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2053, 'Moeda', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2054, 'Moema', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2055, 'Monjolos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2056, 'Monsenhor Paulo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2057, 'Montalvânia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2058, 'Monte Alegre de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2059, 'Monte Azul', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2060, 'Monte Belo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2061, 'Monte Carmelo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2062, 'Monte Formoso', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2063, 'Monte Santo de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2064, 'Monte Sião', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2065, 'Montes Claros', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2066, 'Montezuma', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2067, 'Morada Nova de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2068, 'Morro da Garça', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2069, 'Morro do Pilar', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2070, 'Munhoz', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2071, 'Muriaé', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2072, 'Mutum', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2073, 'Muzambinho', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2074, 'Nacip Raydan', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2075, 'Nanuque', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2076, 'Naque', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2077, 'Natalândia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2078, 'Natércia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2079, 'Nazareno', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2080, 'Nepomuceno', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2081, 'Ninheira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2082, 'Nova Belém', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2083, 'Nova Era', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2084, 'Nova Lima', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2085, 'Nova Módica', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2086, 'Nova Ponte', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2087, 'Nova Porteirinha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2088, 'Nova Resende', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2089, 'Nova Serrana', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2090, 'Nova União', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2091, 'Novo Cruzeiro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2092, 'Novo Oriente de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2093, 'Novorizonte', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2094, 'Olaria', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2095, 'Olhos-d`Água', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2096, 'Olímpio Noronha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2097, 'Oliveira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2098, 'Oliveira Fortes', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2099, 'Onça de Pitangui', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2100, 'Oratórios', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2101, 'Orizânia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2102, 'Ouro Branco', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2103, 'Ouro Fino', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2104, 'Ouro Preto', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2105, 'Ouro Verde de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2106, 'Padre Carvalho', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2107, 'Padre Paraíso', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2108, 'Pai Pedro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2109, 'Paineiras', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2110, 'Pains', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2111, 'Paiva', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2112, 'Palma', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2113, 'Palmópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2114, 'Papagaios', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2115, 'Pará de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2116, 'Paracatu', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2117, 'Paraguaçu', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2118, 'Paraisópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2119, 'Paraopeba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2120, 'Passa Quatro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2121, 'Passa Tempo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2122, 'Passabém', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2123, 'Passa-Vinte', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2124, 'Passos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2125, 'Patis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2126, 'Patos de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2127, 'Patrocínio', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2128, 'Patrocínio do Muriaé', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2129, 'Paula Cândido', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2130, 'Paulistas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2131, 'Pavão', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2132, 'Peçanha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2133, 'Pedra Azul', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2134, 'Pedra Bonita', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2135, 'Pedra do Anta', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2136, 'Pedra do Indaiá', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2137, 'Pedra Dourada', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2138, 'Pedralva', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2139, 'Pedras de Maria da Cruz', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2140, 'Pedrinópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2141, 'Pedro Leopoldo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2142, 'Pedro Teixeira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2143, 'Pequeri', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2144, 'Pequi', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2145, 'Perdigão', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2146, 'Perdizes', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2147, 'Perdões', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2148, 'Periquito', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2149, 'Pescador', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2150, 'Piau', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2151, 'Piedade de Caratinga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2152, 'Piedade de Ponte Nova', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2153, 'Piedade do Rio Grande', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2154, 'Piedade dos Gerais', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2155, 'Pimenta', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2156, 'Pingo-d`Água', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2157, 'Pintópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2158, 'Piracema', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2159, 'Pirajuba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2160, 'Piranga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2161, 'Piranguçu', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2162, 'Piranguinho', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2163, 'Pirapetinga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2164, 'Pirapora', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2165, 'Piraúba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2166, 'Pitangui', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2167, 'Piumhi', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2168, 'Planura', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2169, 'Poço Fundo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2170, 'Poços de Caldas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2171, 'Pocrane', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2172, 'Pompéu', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2173, 'Ponte Nova', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2174, 'Ponto Chique', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2175, 'Ponto dos Volantes', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2176, 'Porteirinha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2177, 'Porto Firme', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2178, 'Poté', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2179, 'Pouso Alegre', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2180, 'Pouso Alto', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2181, 'Prados', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2182, 'Prata', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2183, 'Pratápolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2184, 'Pratinha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2185, 'Presidente Bernardes', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2186, 'Presidente Juscelino', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2187, 'Presidente Kubitschek', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2188, 'Presidente Olegário', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2189, 'Prudente de Morais', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2190, 'Quartel Geral', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2191, 'Queluzito', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2192, 'Raposos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2193, 'Raul Soares', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2194, 'Recreio', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2195, 'Reduto', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2196, 'Resende Costa', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2197, 'Resplendor', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2198, 'Ressaquinha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2199, 'Riachinho', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2200, 'Riacho dos Machados', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2201, 'Ribeirão das Neves', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2202, 'Ribeirão Vermelho', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2203, 'Rio Acima', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2204, 'Rio Casca', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2205, 'Rio do Prado', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2206, 'Rio Doce', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2207, 'Rio Espera', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2208, 'Rio Manso', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2209, 'Rio Novo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2210, 'Rio Paranaíba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2211, 'Rio Pardo de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2212, 'Rio Piracicaba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2213, 'Rio Pomba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2214, 'Rio Preto', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2215, 'Rio Vermelho', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2216, 'Ritápolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2217, 'Rochedo de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2218, 'Rodeiro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2219, 'Romaria', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2220, 'Rosário da Limeira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2221, 'Rubelita', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2222, 'Rubim', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2223, 'Sabará', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2224, 'Sabinópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2225, 'Sacramento', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2226, 'Salinas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2227, 'Salto da Divisa', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2228, 'Santa Bárbara', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2229, 'Santa Bárbara do Leste', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2230, 'Santa Bárbara do Monte Verde', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2231, 'Santa Bárbara do Tugúrio', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2232, 'Santa Cruz de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2233, 'Santa Cruz de Salinas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2234, 'Santa Cruz do Escalvado', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2235, 'Santa Efigênia de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2236, 'Santa Fé de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2237, 'Santa Helena de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2238, 'Santa Juliana', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2239, 'Santa Luzia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2240, 'Santa Margarida', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2241, 'Santa Maria de Itabira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2242, 'Santa Maria do Salto', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2243, 'Santa Maria do Suaçuí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2244, 'Santa Rita de Caldas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2245, 'Santa Rita de Ibitipoca', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2246, 'Santa Rita de Jacutinga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2247, 'Santa Rita de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2248, 'Santa Rita do Itueto', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2249, 'Santa Rita do Sapucaí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2250, 'Santa Rosa da Serra', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2251, 'Santa Vitória', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2252, 'Santana da Vargem', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2253, 'Santana de Cataguases', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2254, 'Santana de Pirapama', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2255, 'Santana do Deserto', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2256, 'Santana do Garambéu', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2257, 'Santana do Jacaré', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2258, 'Santana do Manhuaçu', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2259, 'Santana do Paraíso', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2260, 'Santana do Riacho', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2261, 'Santana dos Montes', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2262, 'Santo Antônio do Amparo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2263, 'Santo Antônio do Aventureiro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2264, 'Santo Antônio do Grama', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2265, 'Santo Antônio do Itambé', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2266, 'Santo Antônio do Jacinto', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2267, 'Santo Antônio do Monte', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2268, 'Santo Antônio do Retiro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2269, 'Santo Antônio do Rio Abaixo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2270, 'Santo Hipólito', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2271, 'Santos Dumont', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2272, 'São Bento Abade', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2273, 'São Brás do Suaçuí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2274, 'São Domingos das Dores', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2275, 'São Domingos do Prata', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2276, 'São Félix de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2277, 'São Francisco', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2278, 'São Francisco de Paula', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2279, 'São Francisco de Sales', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2280, 'São Francisco do Glória', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2281, 'São Geraldo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2282, 'São Geraldo da Piedade', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2283, 'São Geraldo do Baixio', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2284, 'São Gonçalo do Abaeté', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2285, 'São Gonçalo do Pará', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2286, 'São Gonçalo do Rio Abaixo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2287, 'São Gonçalo do Rio Preto', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2288, 'São Gonçalo do Sapucaí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2289, 'São Gotardo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2290, 'São João Batista do Glória', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2291, 'São João da Lagoa', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2292, 'São João da Mata', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2293, 'São João da Ponte', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2294, 'São João das Missões', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2295, 'São João del Rei', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2296, 'São João do Manhuaçu', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2297, 'São João do Manteninha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2298, 'São João do Oriente', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2299, 'São João do Pacuí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2300, 'São João do Paraíso', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2301, 'São João Evangelista', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2302, 'São João Nepomuceno', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2303, 'São Joaquim de Bicas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2304, 'São José da Barra', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2305, 'São José da Lapa', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2306, 'São José da Safira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2307, 'São José da Varginha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2308, 'São José do Alegre', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2309, 'São José do Divino', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2310, 'São José do Goiabal', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2311, 'São José do Jacuri', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2312, 'São José do Mantimento', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2313, 'São Lourenço', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2314, 'São Miguel do Anta', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2315, 'São Pedro da União', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2316, 'São Pedro do Suaçuí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2317, 'São Pedro dos Ferros', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2318, 'São Romão', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2319, 'São Roque de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2320, 'São Sebastião da Bela Vista', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2321, 'São Sebastião da Vargem Alegre', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2322, 'São Sebastião do Anta', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2323, 'São Sebastião do Maranhão', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2324, 'São Sebastião do Oeste', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2325, 'São Sebastião do Paraíso', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2326, 'São Sebastião do Rio Preto', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2327, 'São Sebastião do Rio Verde', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2328, 'São Thomé das Letras', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2329, 'São Tiago', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2330, 'São Tomás de Aquino', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2331, 'São Vicente de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2332, 'Sapucaí-Mirim', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2333, 'Sardoá', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2334, 'Sarzedo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2335, 'Sem-Peixe', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2336, 'Senador Amaral', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2337, 'Senador Cortes', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2338, 'Senador Firmino', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2339, 'Senador José Bento', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2340, 'Senador Modestino Gonçalves', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2341, 'Senhora de Oliveira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2342, 'Senhora do Porto', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2343, 'Senhora dos Remédios', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2344, 'Sericita', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2345, 'Seritinga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2346, 'Serra Azul de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2347, 'Serra da Saudade', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2348, 'Serra do Salitre', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2349, 'Serra dos Aimorés', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2350, 'Serrania', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2351, 'Serranópolis de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2352, 'Serranos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2353, 'Serro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2354, 'Sete Lagoas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2355, 'Setubinha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2356, 'Silveirânia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2357, 'Silvianópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2358, 'Simão Pereira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2359, 'Simonésia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2360, 'Sobrália', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2361, 'Soledade de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2362, 'Tabuleiro', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2363, 'Taiobeiras', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2364, 'Taparuba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2365, 'Tapira', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2366, 'Tapiraí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2367, 'Taquaraçu de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2368, 'Tarumirim', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2369, 'Teixeiras', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2370, 'Teófilo Otoni', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2371, 'Timóteo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2372, 'Tiradentes', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2373, 'Tiros', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2374, 'Tocantins', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2375, 'Tocos do Moji', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2376, 'Toledo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2377, 'Tombos', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2378, 'Três Corações', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2379, 'Três Marias', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2380, 'Três Pontas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2381, 'Tumiritinga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2382, 'Tupaciguara', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2383, 'Turmalina', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2384, 'Turvolândia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2385, 'Ubá', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2386, 'Ubaí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2387, 'Ubaporanga', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2388, 'Uberaba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2389, 'Uberlândia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2390, 'Umburatiba', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2391, 'Unaí', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2392, 'União de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2393, 'Uruana de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2394, 'Urucânia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2395, 'Urucuia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2396, 'Vargem Alegre', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2397, 'Vargem Bonita', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2398, 'Vargem Grande do Rio Pardo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2399, 'Varginha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2400, 'Varjão de Minas', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2401, 'Várzea da Palma', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2402, 'Varzelândia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2403, 'Vazante', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2404, 'Verdelândia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2405, 'Veredinha', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2406, 'Veríssimo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2407, 'Vermelho Novo', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2408, 'Vespasiano', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2409, 'Viçosa', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2410, 'Vieiras', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2411, 'Virgem da Lapa', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2412, 'Virgínia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2413, 'Virginópolis', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2414, 'Virgolândia', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2415, 'Visconde do Rio Branco', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2416, 'Volta Grande', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2417, 'Wenceslau Braz', 11);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2418, 'Abaetetuba', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2419, 'Abel Figueiredo', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2420, 'Acará', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2421, 'Afuá', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2422, 'Água Azul do Norte', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2423, 'Alenquer', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2424, 'Almeirim', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2425, 'Altamira', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2426, 'Anajás', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2427, 'Ananindeua', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2428, 'Anapu', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2429, 'Augusto Corrêa', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2430, 'Aurora do Pará', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2431, 'Aveiro', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2432, 'Bagre', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2433, 'Baião', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2434, 'Bannach', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2435, 'Barcarena', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2436, 'Belém', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2437, 'Belterra', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2438, 'Benevides', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2439, 'Bom Jesus do Tocantins', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2440, 'Bonito', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2441, 'Bragança', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2442, 'Brasil Novo', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2443, 'Brejo Grande do Araguaia', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2444, 'Breu Branco', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2445, 'Breves', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2446, 'Bujaru', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2447, 'Cachoeira do Arari', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2448, 'Cachoeira do Piriá', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2449, 'Cametá', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2450, 'Canaã dos Carajás', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2451, 'Capanema', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2452, 'Capitão Poço', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2453, 'Castanhal', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2454, 'Chaves', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2455, 'Colares', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2456, 'Conceição do Araguaia', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2457, 'Concórdia do Pará', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2458, 'Cumaru do Norte', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2459, 'Curionópolis', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2460, 'Curralinho', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2461, 'Curuá', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2462, 'Curuçá', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2463, 'Dom Eliseu', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2464, 'Eldorado dos Carajás', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2465, 'Faro', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2466, 'Floresta do Araguaia', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2467, 'Garrafão do Norte', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2468, 'Goianésia do Pará', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2469, 'Gurupá', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2470, 'Igarapé-Açu', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2471, 'Igarapé-Miri', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2472, 'Inhangapi', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2473, 'Ipixuna do Pará', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2474, 'Irituia', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2475, 'Itaituba', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2476, 'Itupiranga', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2477, 'Jacareacanga', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2478, 'Jacundá', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2479, 'Juruti', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2480, 'Limoeiro do Ajuru', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2481, 'Mãe do Rio', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2482, 'Magalhães Barata', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2483, 'Marabá', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2484, 'Maracanã', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2485, 'Marapanim', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2486, 'Marituba', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2487, 'Medicilândia', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2488, 'Melgaço', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2489, 'Mocajuba', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2490, 'Moju', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2491, 'Monte Alegre', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2492, 'Muaná', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2493, 'Nova Esperança do Piriá', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2494, 'Nova Ipixuna', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2495, 'Nova Timboteua', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2496, 'Novo Progresso', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2497, 'Novo Repartimento', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2498, 'Óbidos', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2499, 'Oeiras do Pará', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2500, 'Oriximiná', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2501, 'Ourém', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2502, 'Ourilândia do Norte', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2503, 'Pacajá', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2504, 'Palestina do Pará', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2505, 'Paragominas', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2506, 'Parauapebas', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2507, 'Pau d`Arco', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2508, 'Peixe-Boi', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2509, 'Piçarra', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2510, 'Placas', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2511, 'Ponta de Pedras', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2512, 'Portel', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2513, 'Porto de Moz', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2514, 'Prainha', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2515, 'Primavera', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2516, 'Quatipuru', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2517, 'Redenção', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2518, 'Rio Maria', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2519, 'Rondon do Pará', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2520, 'Rurópolis', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2521, 'Salinópolis', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2522, 'Salvaterra', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2523, 'Santa Bárbara do Pará', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2524, 'Santa Cruz do Arari', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2525, 'Santa Isabel do Pará', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2526, 'Santa Luzia do Pará', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2527, 'Santa Maria das Barreiras', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2528, 'Santa Maria do Pará', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2529, 'Santana do Araguaia', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2530, 'Santarém', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2531, 'Santarém Novo', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2532, 'Santo Antônio do Tauá', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2533, 'São Caetano de Odivelas', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2534, 'São Domingos do Araguaia', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2535, 'São Domingos do Capim', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2536, 'São Félix do Xingu', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2537, 'São Francisco do Pará', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2538, 'São Geraldo do Araguaia', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2539, 'São João da Ponta', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2540, 'São João de Pirabas', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2541, 'São João do Araguaia', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2542, 'São Miguel do Guamá', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2543, 'São Sebastião da Boa Vista', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2544, 'Sapucaia', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2545, 'Senador José Porfírio', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2546, 'Soure', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2547, 'Tailândia', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2548, 'Terra Alta', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2549, 'Terra Santa', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2550, 'Tomé-Açu', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2551, 'Tracuateua', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2552, 'Trairão', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2553, 'Tucumã', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2554, 'Tucuruí', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2555, 'Ulianópolis', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2556, 'Uruará', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2557, 'Vigia', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2558, 'Viseu', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2559, 'Vitória do Xingu', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2560, 'Xinguara', 14);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2561, 'Água Branca', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2562, 'Aguiar', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2563, 'Alagoa Grande', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2564, 'Alagoa Nova', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2565, 'Alagoinha', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2566, 'Alcantil', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2567, 'Algodão de Jandaíra', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2568, 'Alhandra', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2569, 'Amparo', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2570, 'Aparecida', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2571, 'Araçagi', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2572, 'Arara', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2573, 'Araruna', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2574, 'Areia', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2575, 'Areia de Baraúnas', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2576, 'Areial', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2577, 'Aroeiras', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2578, 'Assunção', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2579, 'Baía da Traição', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2580, 'Bananeiras', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2581, 'Baraúna', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2582, 'Barra de Santa Rosa', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2583, 'Barra de Santana', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2584, 'Barra de São Miguel', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2585, 'Bayeux', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2586, 'Belém', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2587, 'Belém do Brejo do Cruz', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2588, 'Bernardino Batista', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2589, 'Boa Ventura', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2590, 'Boa Vista', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2591, 'Bom Jesus', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2592, 'Bom Sucesso', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2593, 'Bonito de Santa Fé', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2594, 'Boqueirão', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2595, 'Borborema', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2596, 'Brejo do Cruz', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2597, 'Brejo dos Santos', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2598, 'Caaporã', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2599, 'Cabaceiras', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2600, 'Cabedelo', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2601, 'Cachoeira dos Índios', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2602, 'Cacimba de Areia', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2603, 'Cacimba de Dentro', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2604, 'Cacimbas', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2605, 'Caiçara', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2606, 'Cajazeiras', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2607, 'Cajazeirinhas', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2608, 'Caldas Brandão', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2609, 'Camalaú', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2610, 'Campina Grande', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2611, 'Campo de Santana', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2612, 'Capim', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2613, 'Caraúbas', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2614, 'Carrapateira', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2615, 'Casserengue', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2616, 'Catingueira', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2617, 'Catolé do Rocha', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2618, 'Caturité', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2619, 'Conceição', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2620, 'Condado', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2621, 'Conde', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2622, 'Congo', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2623, 'Coremas', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2624, 'Coxixola', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2625, 'Cruz do Espírito Santo', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2626, 'Cubati', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2627, 'Cuité', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2628, 'Cuité de Mamanguape', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2629, 'Cuitegi', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2630, 'Curral de Cima', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2631, 'Curral Velho', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2632, 'Damião', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2633, 'Desterro', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2634, 'Diamante', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2635, 'Dona Inês', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2636, 'Duas Estradas', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2637, 'Emas', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2638, 'Esperança', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2639, 'Fagundes', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2640, 'Frei Martinho', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2641, 'Gado Bravo', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2642, 'Guarabira', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2643, 'Gurinhém', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2644, 'Gurjão', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2645, 'Ibiara', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2646, 'Igaracy', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2647, 'Imaculada', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2648, 'Ingá', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2649, 'Itabaiana', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2650, 'Itaporanga', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2651, 'Itapororoca', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2652, 'Itatuba', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2653, 'Jacaraú', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2654, 'Jericó', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2655, 'João Pessoa', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2656, 'Juarez Távora', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2657, 'Juazeirinho', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2658, 'Junco do Seridó', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2659, 'Juripiranga', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2660, 'Juru', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2661, 'Lagoa', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2662, 'Lagoa de Dentro', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2663, 'Lagoa Seca', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2664, 'Lastro', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2665, 'Livramento', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2666, 'Logradouro', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2667, 'Lucena', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2668, 'Mãe d`Água', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2669, 'Malta', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2670, 'Mamanguape', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2671, 'Manaíra', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2672, 'Marcação', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2673, 'Mari', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2674, 'Marizópolis', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2675, 'Massaranduba', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2676, 'Mataraca', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2677, 'Matinhas', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2678, 'Mato Grosso', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2679, 'Maturéia', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2680, 'Mogeiro', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2681, 'Montadas', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2682, 'Monte Horebe', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2683, 'Monteiro', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2684, 'Mulungu', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2685, 'Natuba', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2686, 'Nazarezinho', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2687, 'Nova Floresta', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2688, 'Nova Olinda', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2689, 'Nova Palmeira', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2690, 'Olho d`Água', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2691, 'Olivedos', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2692, 'Ouro Velho', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2693, 'Parari', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2694, 'Passagem', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2695, 'Patos', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2696, 'Paulista', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2697, 'Pedra Branca', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2698, 'Pedra Lavrada', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2699, 'Pedras de Fogo', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2700, 'Pedro Régis', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2701, 'Piancó', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2702, 'Picuí', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2703, 'Pilar', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2704, 'Pilões', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2705, 'Pilõezinhos', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2706, 'Pirpirituba', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2707, 'Pitimbu', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2708, 'Pocinhos', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2709, 'Poço Dantas', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2710, 'Poço de José de Moura', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2711, 'Pombal', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2712, 'Prata', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2713, 'Princesa Isabel', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2714, 'Puxinanã', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2715, 'Queimadas', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2716, 'Quixabá', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2717, 'Remígio', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2718, 'Riachão', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2719, 'Riachão do Bacamarte', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2720, 'Riachão do Poço', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2721, 'Riacho de Santo Antônio', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2722, 'Riacho dos Cavalos', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2723, 'Rio Tinto', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2724, 'Salgadinho', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2725, 'Salgado de São Félix', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2726, 'Santa Cecília', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2727, 'Santa Cruz', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2728, 'Santa Helena', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2729, 'Santa Inês', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2730, 'Santa Luzia', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2731, 'Santa Rita', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2732, 'Santa Teresinha', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2733, 'Santana de Mangueira', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2734, 'Santana dos Garrotes', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2735, 'Santarém', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2736, 'Santo André', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2737, 'São Bentinho', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2738, 'São Bento', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2739, 'São Domingos de Pombal', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2740, 'São Domingos do Cariri', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2741, 'São Francisco', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2742, 'São João do Cariri', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2743, 'São João do Rio do Peixe', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2744, 'São João do Tigre', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2745, 'São José da Lagoa Tapada', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2746, 'São José de Caiana', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2747, 'São José de Espinharas', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2748, 'São José de Piranhas', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2749, 'São José de Princesa', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2750, 'São José do Bonfim', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2751, 'São José do Brejo do Cruz', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2752, 'São José do Sabugi', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2753, 'São José dos Cordeiros', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2754, 'São José dos Ramos', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2755, 'São Mamede', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2756, 'São Miguel de Taipu', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2757, 'São Sebastião de Lagoa de Roça', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2758, 'São Sebastião do Umbuzeiro', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2759, 'Sapé', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2760, 'Seridó', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2761, 'Serra Branca', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2762, 'Serra da Raiz', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2763, 'Serra Grande', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2764, 'Serra Redonda', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2765, 'Serraria', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2766, 'Sertãozinho', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2767, 'Sobrado', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2768, 'Solânea', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2769, 'Soledade', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2770, 'Sossêgo', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2771, 'Sousa', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2772, 'Sumé', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2773, 'Taperoá', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2774, 'Tavares', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2775, 'Teixeira', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2776, 'Tenório', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2777, 'Triunfo', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2778, 'Uiraúna', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2779, 'Umbuzeiro', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2780, 'Várzea', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2781, 'Vieirópolis', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2782, 'Vista Serrana', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2783, 'Zabelê', 15);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2784, 'Abatiá', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2785, 'Adrianópolis', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2786, 'Agudos do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2787, 'Almirante Tamandaré', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2788, 'Altamira do Paraná', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2789, 'Alto Paraíso', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2790, 'Alto Paraná', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2791, 'Alto Piquiri', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2792, 'Altônia', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2793, 'Alvorada do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2794, 'Amaporã', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2795, 'Ampére', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2796, 'Anahy', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2797, 'Andirá', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2798, 'Ângulo', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2799, 'Antonina', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2800, 'Antônio Olinto', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2801, 'Apucarana', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2802, 'Arapongas', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2803, 'Arapoti', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2804, 'Arapuã', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2805, 'Araruna', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2806, 'Araucária', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2807, 'Ariranha do Ivaí', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2808, 'Assaí', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2809, 'Assis Chateaubriand', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2810, 'Astorga', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2811, 'Atalaia', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2812, 'Balsa Nova', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2813, 'Bandeirantes', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2814, 'Barbosa Ferraz', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2815, 'Barra do Jacaré', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2816, 'Barracão', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2817, 'Bela Vista da Caroba', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2818, 'Bela Vista do Paraíso', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2819, 'Bituruna', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2820, 'Boa Esperança', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2821, 'Boa Esperança do Iguaçu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2822, 'Boa Ventura de São Roque', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2823, 'Boa Vista da Aparecida', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2824, 'Bocaiúva do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2825, 'Bom Jesus do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2826, 'Bom Sucesso', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2827, 'Bom Sucesso do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2828, 'Borrazópolis', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2829, 'Braganey', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2830, 'Brasilândia do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2831, 'Cafeara', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2832, 'Cafelândia', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2833, 'Cafezal do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2834, 'Califórnia', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2835, 'Cambará', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2836, 'Cambé', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2837, 'Cambira', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2838, 'Campina da Lagoa', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2839, 'Campina do Simão', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2840, 'Campina Grande do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2841, 'Campo Bonito', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2842, 'Campo do Tenente', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2843, 'Campo Largo', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2844, 'Campo Magro', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2845, 'Campo Mourão', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2846, 'Cândido de Abreu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2847, 'Candói', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2848, 'Cantagalo', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2849, 'Capanema', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2850, 'Capitão Leônidas Marques', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2851, 'Carambeí', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2852, 'Carlópolis', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2853, 'Cascavel', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2854, 'Castro', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2855, 'Catanduvas', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2856, 'Centenário do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2857, 'Cerro Azul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2858, 'Céu Azul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2859, 'Chopinzinho', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2860, 'Cianorte', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2861, 'Cidade Gaúcha', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2862, 'Clevelândia', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2863, 'Colombo', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2864, 'Colorado', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2865, 'Congonhinhas', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2866, 'Conselheiro Mairinck', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2867, 'Contenda', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2868, 'Corbélia', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2869, 'Cornélio Procópio', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2870, 'Coronel Domingos Soares', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2871, 'Coronel Vivida', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2872, 'Corumbataí do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2873, 'Cruz Machado', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2874, 'Cruzeiro do Iguaçu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2875, 'Cruzeiro do Oeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2876, 'Cruzeiro do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2877, 'Cruzmaltina', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2878, 'Curitiba', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2879, 'Curiúva', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2880, 'Diamante d`Oeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2881, 'Diamante do Norte', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2882, 'Diamante do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2883, 'Dois Vizinhos', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2884, 'Douradina', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2885, 'Doutor Camargo', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2886, 'Doutor Ulysses', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2887, 'Enéas Marques', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2888, 'Engenheiro Beltrão', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2889, 'Entre Rios do Oeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2890, 'Esperança Nova', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2891, 'Espigão Alto do Iguaçu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2892, 'Farol', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2893, 'Faxinal', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2894, 'Fazenda Rio Grande', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2895, 'Fênix', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2896, 'Fernandes Pinheiro', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2897, 'Figueira', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2898, 'Flor da Serra do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2899, 'Floraí', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2900, 'Floresta', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2901, 'Florestópolis', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2902, 'Flórida', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2903, 'Formosa do Oeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2904, 'Foz do Iguaçu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2905, 'Foz do Jordão', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2906, 'Francisco Alves', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2907, 'Francisco Beltrão', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2908, 'General Carneiro', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2909, 'Godoy Moreira', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2910, 'Goioerê', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2911, 'Goioxim', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2912, 'Grandes Rios', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2913, 'Guaíra', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2914, 'Guairaçá', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2915, 'Guamiranga', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2916, 'Guapirama', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2917, 'Guaporema', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2918, 'Guaraci', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2919, 'Guaraniaçu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2920, 'Guarapuava', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2921, 'Guaraqueçaba', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2922, 'Guaratuba', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2923, 'Honório Serpa', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2924, 'Ibaiti', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2925, 'Ibema', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2926, 'Ibiporã', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2927, 'Icaraíma', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2928, 'Iguaraçu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2929, 'Iguatu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2930, 'Imbaú', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2931, 'Imbituva', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2932, 'Inácio Martins', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2933, 'Inajá', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2934, 'Indianópolis', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2935, 'Ipiranga', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2936, 'Iporã', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2937, 'Iracema do Oeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2938, 'Irati', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2939, 'Iretama', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2940, 'Itaguajé', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2941, 'Itaipulândia', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2942, 'Itambaracá', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2943, 'Itambé', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2944, 'Itapejara d`Oeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2945, 'Itaperuçu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2946, 'Itaúna do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2947, 'Ivaí', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2948, 'Ivaiporã', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2949, 'Ivaté', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2950, 'Ivatuba', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2951, 'Jaboti', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2952, 'Jacarezinho', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2953, 'Jaguapitã', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2954, 'Jaguariaíva', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2955, 'Jandaia do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2956, 'Janiópolis', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2957, 'Japira', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2958, 'Japurá', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2959, 'Jardim Alegre', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2960, 'Jardim Olinda', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2961, 'Jataizinho', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2962, 'Jesuítas', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2963, 'Joaquim Távora', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2964, 'Jundiaí do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2965, 'Juranda', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2966, 'Jussara', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2967, 'Kaloré', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2968, 'Lapa', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2969, 'Laranjal', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2970, 'Laranjeiras do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2971, 'Leópolis', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2972, 'Lidianópolis', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2973, 'Lindoeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2974, 'Loanda', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2975, 'Lobato', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2976, 'Londrina', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2977, 'Luiziana', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2978, 'Lunardelli', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2979, 'Lupionópolis', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2980, 'Mallet', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2981, 'Mamborê', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2982, 'Mandaguaçu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2983, 'Mandaguari', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2984, 'Mandirituba', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2985, 'Manfrinópolis', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2986, 'Mangueirinha', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2987, 'Manoel Ribas', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2988, 'Marechal Cândido Rondon', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2989, 'Maria Helena', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2990, 'Marialva', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2991, 'Marilândia do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2992, 'Marilena', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2993, 'Mariluz', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2994, 'Maringá', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2995, 'Mariópolis', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2996, 'Maripá', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2997, 'Marmeleiro', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2998, 'Marquinho', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(2999, 'Marumbi', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3000, 'Matelândia', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3001, 'Matinhos', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3002, 'Mato Rico', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3003, 'Mauá da Serra', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3004, 'Medianeira', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3005, 'Mercedes', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3006, 'Mirador', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3007, 'Miraselva', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3008, 'Missal', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3009, 'Moreira Sales', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3010, 'Morretes', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3011, 'Munhoz de Melo', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3012, 'Nossa Senhora das Graças', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3013, 'Nova Aliança do Ivaí', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3014, 'Nova América da Colina', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3015, 'Nova Aurora', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3016, 'Nova Cantu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3017, 'Nova Esperança', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3018, 'Nova Esperança do Sudoeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3019, 'Nova Fátima', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3020, 'Nova Laranjeiras', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3021, 'Nova Londrina', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3022, 'Nova Olímpia', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3023, 'Nova Prata do Iguaçu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3024, 'Nova Santa Bárbara', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3025, 'Nova Santa Rosa', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3026, 'Nova Tebas', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3027, 'Novo Itacolomi', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3028, 'Ortigueira', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3029, 'Ourizona', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3030, 'Ouro Verde do Oeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3031, 'Paiçandu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3032, 'Palmas', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3033, 'Palmeira', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3034, 'Palmital', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3035, 'Palotina', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3036, 'Paraíso do Norte', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3037, 'Paranacity', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3038, 'Paranaguá', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3039, 'Paranapoema', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3040, 'Paranavaí', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3041, 'Pato Bragado', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3042, 'Pato Branco', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3043, 'Paula Freitas', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3044, 'Paulo Frontin', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3045, 'Peabiru', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3046, 'Perobal', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3047, 'Pérola', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3048, 'Pérola d`Oeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3049, 'Piên', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3050, 'Pinhais', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3051, 'Pinhal de São Bento', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3052, 'Pinhalão', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3053, 'Pinhão', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3054, 'Piraí do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3055, 'Piraquara', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3056, 'Pitanga', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3057, 'Pitangueiras', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3058, 'Planaltina do Paraná', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3059, 'Planalto', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3060, 'Ponta Grossa', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3061, 'Pontal do Paraná', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3062, 'Porecatu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3063, 'Porto Amazonas', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3064, 'Porto Barreiro', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3065, 'Porto Rico', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3066, 'Porto Vitória', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3067, 'Prado Ferreira', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3068, 'Pranchita', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3069, 'Presidente Castelo Branco', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3070, 'Primeiro de Maio', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3071, 'Prudentópolis', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3072, 'Quarto Centenário', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3073, 'Quatiguá', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3074, 'Quatro Barras', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3075, 'Quatro Pontes', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3076, 'Quedas do Iguaçu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3077, 'Querência do Norte', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3078, 'Quinta do Sol', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3079, 'Quitandinha', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3080, 'Ramilândia', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3081, 'Rancho Alegre', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3082, 'Rancho Alegre d`Oeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3083, 'Realeza', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3084, 'Rebouças', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3085, 'Renascença', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3086, 'Reserva', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3087, 'Reserva do Iguaçu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3088, 'Ribeirão Claro', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3089, 'Ribeirão do Pinhal', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3090, 'Rio Azul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3091, 'Rio Bom', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3092, 'Rio Bonito do Iguaçu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3093, 'Rio Branco do Ivaí', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3094, 'Rio Branco do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3095, 'Rio Negro', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3096, 'Rolândia', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3097, 'Roncador', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3098, 'Rondon', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3099, 'Rosário do Ivaí', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3100, 'Sabáudia', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3101, 'Salgado Filho', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3102, 'Salto do Itararé', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3103, 'Salto do Lontra', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3104, 'Santa Amélia', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3105, 'Santa Cecília do Pavão', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3106, 'Santa Cruz de Monte Castelo', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3107, 'Santa Fé', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3108, 'Santa Helena', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3109, 'Santa Inês', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3110, 'Santa Isabel do Ivaí', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3111, 'Santa Izabel do Oeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3112, 'Santa Lúcia', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3113, 'Santa Maria do Oeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3114, 'Santa Mariana', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3115, 'Santa Mônica', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3116, 'Santa Tereza do Oeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3117, 'Santa Terezinha de Itaipu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3118, 'Santana do Itararé', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3119, 'Santo Antônio da Platina', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3120, 'Santo Antônio do Caiuá', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3121, 'Santo Antônio do Paraíso', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3122, 'Santo Antônio do Sudoeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3123, 'Santo Inácio', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3124, 'São Carlos do Ivaí', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3125, 'São Jerônimo da Serra', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3126, 'São João', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3127, 'São João do Caiuá', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3128, 'São João do Ivaí', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3129, 'São João do Triunfo', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3130, 'São Jorge d`Oeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3131, 'São Jorge do Ivaí', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3132, 'São Jorge do Patrocínio', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3133, 'São José da Boa Vista', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3134, 'São José das Palmeiras', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3135, 'São José dos Pinhais', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3136, 'São Manoel do Paraná', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3137, 'São Mateus do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3138, 'São Miguel do Iguaçu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3139, 'São Pedro do Iguaçu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3140, 'São Pedro do Ivaí', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3141, 'São Pedro do Paraná', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3142, 'São Sebastião da Amoreira', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3143, 'São Tomé', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3144, 'Sapopema', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3145, 'Sarandi', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3146, 'Saudade do Iguaçu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3147, 'Sengés', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3148, 'Serranópolis do Iguaçu', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3149, 'Sertaneja', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3150, 'Sertanópolis', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3151, 'Siqueira Campos', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3152, 'Sulina', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3153, 'Tamarana', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3154, 'Tamboara', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3155, 'Tapejara', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3156, 'Tapira', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3157, 'Teixeira Soares', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3158, 'Telêmaco Borba', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3159, 'Terra Boa', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3160, 'Terra Rica', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3161, 'Terra Roxa', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3162, 'Tibagi', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3163, 'Tijucas do Sul', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3164, 'Toledo', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3165, 'Tomazina', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3166, 'Três Barras do Paraná', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3167, 'Tunas do Paraná', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3168, 'Tuneiras do Oeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3169, 'Tupãssi', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3170, 'Turvo', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3171, 'Ubiratã', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3172, 'Umuarama', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3173, 'União da Vitória', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3174, 'Uniflor', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3175, 'Uraí', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3176, 'Ventania', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3177, 'Vera Cruz do Oeste', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3178, 'Verê', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3179, 'Virmond', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3180, 'Vitorino', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3181, 'Wenceslau Braz', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3182, 'Xambrê', 18);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3183, 'Abreu e Lima', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3184, 'Afogados da Ingazeira', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3185, 'Afrânio', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3186, 'Agrestina', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3187, 'Água Preta', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3188, 'Águas Belas', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3189, 'Alagoinha', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3190, 'Aliança', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3191, 'Altinho', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3192, 'Amaraji', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3193, 'Angelim', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3194, 'Araçoiaba', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3195, 'Araripina', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3196, 'Arcoverde', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3197, 'Barra de Guabiraba', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3198, 'Barreiros', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3199, 'Belém de Maria', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3200, 'Belém de São Francisco', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3201, 'Belo Jardim', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3202, 'Betânia', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3203, 'Bezerros', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3204, 'Bodocó', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3205, 'Bom Conselho', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3206, 'Bom Jardim', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3207, 'Bonito', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3208, 'Brejão', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3209, 'Brejinho', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3210, 'Brejo da Madre de Deus', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3211, 'Buenos Aires', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3212, 'Buíque', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3213, 'Cabo de Santo Agostinho', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3214, 'Cabrobó', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3215, 'Cachoeirinha', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3216, 'Caetés', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3217, 'Calçado', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3218, 'Calumbi', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3219, 'Camaragibe', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3220, 'Camocim de São Félix', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3221, 'Camutanga', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3222, 'Canhotinho', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3223, 'Capoeiras', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3224, 'Carnaíba', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3225, 'Carnaubeira da Penha', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3226, 'Carpina', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3227, 'Caruaru', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3228, 'Casinhas', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3229, 'Catende', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3230, 'Cedro', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3231, 'Chã de Alegria', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3232, 'Chã Grande', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3233, 'Condado', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3234, 'Correntes', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3235, 'Cortês', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3236, 'Cumaru', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3237, 'Cupira', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3238, 'Custódia', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3239, 'Dormentes', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3240, 'Escada', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3241, 'Exu', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3242, 'Feira Nova', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3243, 'Fernando de Noronha', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3244, 'Ferreiros', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3245, 'Flores', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3246, 'Floresta', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3247, 'Frei Miguelinho', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3248, 'Gameleira', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3249, 'Garanhuns', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3250, 'Glória do Goitá', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3251, 'Goiana', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3252, 'Granito', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3253, 'Gravatá', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3254, 'Iati', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3255, 'Ibimirim', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3256, 'Ibirajuba', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3257, 'Igarassu', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3258, 'Iguaraci', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3259, 'Ilha de Itamaracá', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3260, 'Inajá', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3261, 'Ingazeira', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3262, 'Ipojuca', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3263, 'Ipubi', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3264, 'Itacuruba', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3265, 'Itaíba', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3266, 'Itambé', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3267, 'Itapetim', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3268, 'Itapissuma', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3269, 'Itaquitinga', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3270, 'Jaboatão dos Guararapes', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3271, 'Jaqueira', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3272, 'Jataúba', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3273, 'Jatobá', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3274, 'João Alfredo', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3275, 'Joaquim Nabuco', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3276, 'Jucati', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3277, 'Jupi', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3278, 'Jurema', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3279, 'Lagoa do Carro', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3280, 'Lagoa do Itaenga', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3281, 'Lagoa do Ouro', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3282, 'Lagoa dos Gatos', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3283, 'Lagoa Grande', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3284, 'Lajedo', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3285, 'Limoeiro', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3286, 'Macaparana', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3287, 'Machados', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3288, 'Manari', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3289, 'Maraial', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3290, 'Mirandiba', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3291, 'Moreilândia', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3292, 'Moreno', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3293, 'Nazaré da Mata', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3294, 'Olinda', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3295, 'Orobó', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3296, 'Orocó', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3297, 'Ouricuri', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3298, 'Palmares', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3299, 'Palmeirina', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3300, 'Panelas', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3301, 'Paranatama', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3302, 'Parnamirim', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3303, 'Passira', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3304, 'Paudalho', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3305, 'Paulista', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3306, 'Pedra', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3307, 'Pesqueira', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3308, 'Petrolândia', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3309, 'Petrolina', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3310, 'Poção', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3311, 'Pombos', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3312, 'Primavera', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3313, 'Quipapá', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3314, 'Quixaba', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3315, 'Recife', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3316, 'Riacho das Almas', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3317, 'Ribeirão', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3318, 'Rio Formoso', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3319, 'Sairé', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3320, 'Salgadinho', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3321, 'Salgueiro', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3322, 'Saloá', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3323, 'Sanharó', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3324, 'Santa Cruz', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3325, 'Santa Cruz da Baixa Verde', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3326, 'Santa Cruz do Capibaribe', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3327, 'Santa Filomena', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3328, 'Santa Maria da Boa Vista', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3329, 'Santa Maria do Cambucá', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3330, 'Santa Terezinha', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3331, 'São Benedito do Sul', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3332, 'São Bento do Una', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3333, 'São Caitano', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3334, 'São João', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3335, 'São Joaquim do Monte', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3336, 'São José da Coroa Grande', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3337, 'São José do Belmonte', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3338, 'São José do Egito', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3339, 'São Lourenço da Mata', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3340, 'São Vicente Ferrer', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3341, 'Serra Talhada', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3342, 'Serrita', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3343, 'Sertânia', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3344, 'Sirinhaém', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3345, 'Solidão', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3346, 'Surubim', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3347, 'Tabira', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3348, 'Tacaimbó', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3349, 'Tacaratu', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3350, 'Tamandaré', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3351, 'Taquaritinga do Norte', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3352, 'Terezinha', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3353, 'Terra Nova', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3354, 'Timbaúba', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3355, 'Toritama', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3356, 'Tracunhaém', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3357, 'Trindade', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3358, 'Triunfo', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3359, 'Tupanatinga', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3360, 'Tuparetama', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3361, 'Venturosa', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3362, 'Verdejante', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3363, 'Vertente do Lério', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3364, 'Vertentes', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3365, 'Vicência', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3366, 'Vitória de Santo Antão', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3367, 'Xexéu', 16);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3368, 'Acauã', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3369, 'Agricolândia', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3370, 'Água Branca', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3371, 'Alagoinha do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3372, 'Alegrete do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3373, 'Alto Longá', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3374, 'Altos', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3375, 'Alvorada do Gurguéia', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3376, 'Amarante', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3377, 'Angical do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3378, 'Anísio de Abreu', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3379, 'Antônio Almeida', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3380, 'Aroazes', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3381, 'Aroeiras do Itaim', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3382, 'Arraial', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3383, 'Assunção do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3384, 'Avelino Lopes', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3385, 'Baixa Grande do Ribeiro', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3386, 'Barra d`Alcântara', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3387, 'Barras', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3388, 'Barreiras do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3389, 'Barro Duro', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3390, 'Batalha', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3391, 'Bela Vista do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3392, 'Belém do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3393, 'Beneditinos', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3394, 'Bertolínia', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3395, 'Betânia do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3396, 'Boa Hora', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3397, 'Bocaina', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3398, 'Bom Jesus', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3399, 'Bom Princípio do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3400, 'Bonfim do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3401, 'Boqueirão do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3402, 'Brasileira', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3403, 'Brejo do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3404, 'Buriti dos Lopes', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3405, 'Buriti dos Montes', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3406, 'Cabeceiras do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3407, 'Cajazeiras do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3408, 'Cajueiro da Praia', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3409, 'Caldeirão Grande do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3410, 'Campinas do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3411, 'Campo Alegre do Fidalgo', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3412, 'Campo Grande do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3413, 'Campo Largo do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3414, 'Campo Maior', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3415, 'Canavieira', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3416, 'Canto do Buriti', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3417, 'Capitão de Campos', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3418, 'Capitão Gervásio Oliveira', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3419, 'Caracol', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3420, 'Caraúbas do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3421, 'Caridade do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3422, 'Castelo do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3423, 'Caxingó', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3424, 'Cocal', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3425, 'Cocal de Telha', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3426, 'Cocal dos Alves', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3427, 'Coivaras', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3428, 'Colônia do Gurguéia', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3429, 'Colônia do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3430, 'Conceição do Canindé', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3431, 'Coronel José Dias', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3432, 'Corrente', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3433, 'Cristalândia do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3434, 'Cristino Castro', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3435, 'Curimatá', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3436, 'Currais', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3437, 'Curral Novo do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3438, 'Curralinhos', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3439, 'Demerval Lobão', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3440, 'Dirceu Arcoverde', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3441, 'Dom Expedito Lopes', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3442, 'Dom Inocêncio', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3443, 'Domingos Mourão', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3444, 'Elesbão Veloso', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3445, 'Eliseu Martins', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3446, 'Esperantina', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3447, 'Fartura do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3448, 'Flores do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3449, 'Floresta do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3450, 'Floriano', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3451, 'Francinópolis', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3452, 'Francisco Ayres', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3453, 'Francisco Macedo', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3454, 'Francisco Santos', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3455, 'Fronteiras', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3456, 'Geminiano', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3457, 'Gilbués', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3458, 'Guadalupe', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3459, 'Guaribas', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3460, 'Hugo Napoleão', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3461, 'Ilha Grande', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3462, 'Inhuma', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3463, 'Ipiranga do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3464, 'Isaías Coelho', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3465, 'Itainópolis', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3466, 'Itaueira', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3467, 'Jacobina do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3468, 'Jaicós', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3469, 'Jardim do Mulato', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3470, 'Jatobá do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3471, 'Jerumenha', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3472, 'João Costa', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3473, 'Joaquim Pires', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3474, 'Joca Marques', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3475, 'José de Freitas', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3476, 'Juazeiro do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3477, 'Júlio Borges', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3478, 'Jurema', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3479, 'Lagoa Alegre', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3480, 'Lagoa de São Francisco', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3481, 'Lagoa do Barro do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3482, 'Lagoa do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3483, 'Lagoa do Sítio', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3484, 'Lagoinha do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3485, 'Landri Sales', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3486, 'Luís Correia', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3487, 'Luzilândia', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3488, 'Madeiro', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3489, 'Manoel Emídio', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3490, 'Marcolândia', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3491, 'Marcos Parente', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3492, 'Massapê do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3493, 'Matias Olímpio', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3494, 'Miguel Alves', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3495, 'Miguel Leão', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3496, 'Milton Brandão', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3497, 'Monsenhor Gil', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3498, 'Monsenhor Hipólito', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3499, 'Monte Alegre do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3500, 'Morro Cabeça no Tempo', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3501, 'Morro do Chapéu do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3502, 'Murici dos Portelas', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3503, 'Nazaré do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3504, 'Nossa Senhora de Nazaré', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3505, 'Nossa Senhora dos Remédios', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3506, 'Nova Santa Rita', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3507, 'Novo Oriente do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3508, 'Novo Santo Antônio', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3509, 'Oeiras', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3510, 'Olho d`Água do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3511, 'Padre Marcos', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3512, 'Paes Landim', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3513, 'Pajeú do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3514, 'Palmeira do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3515, 'Palmeirais', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3516, 'Paquetá', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3517, 'Parnaguá', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3518, 'Parnaíba', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3519, 'Passagem Franca do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3520, 'Patos do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3521, 'Pau d`Arco do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3522, 'Paulistana', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3523, 'Pavussu', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3524, 'Pedro II', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3525, 'Pedro Laurentino', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3526, 'Picos', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3527, 'Pimenteiras', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3528, 'Pio IX', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3529, 'Piracuruca', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3530, 'Piripiri', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3531, 'Porto', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3532, 'Porto Alegre do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3533, 'Prata do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3534, 'Queimada Nova', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3535, 'Redenção do Gurguéia', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3536, 'Regeneração', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3537, 'Riacho Frio', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3538, 'Ribeira do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3539, 'Ribeiro Gonçalves', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3540, 'Rio Grande do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3541, 'Santa Cruz do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3542, 'Santa Cruz dos Milagres', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3543, 'Santa Filomena', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3544, 'Santa Luz', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3545, 'Santa Rosa do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3546, 'Santana do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3547, 'Santo Antônio de Lisboa', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3548, 'Santo Antônio dos Milagres', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3549, 'Santo Inácio do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3550, 'São Braz do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3551, 'São Félix do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3552, 'São Francisco de Assis do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3553, 'São Francisco do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3554, 'São Gonçalo do Gurguéia', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3555, 'São Gonçalo do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3556, 'São João da Canabrava', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3557, 'São João da Fronteira', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3558, 'São João da Serra', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3559, 'São João da Varjota', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3560, 'São João do Arraial', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3561, 'São João do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3562, 'São José do Divino', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3563, 'São José do Peixe', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3564, 'São José do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3565, 'São Julião', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3566, 'São Lourenço do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3567, 'São Luis do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3568, 'São Miguel da Baixa Grande', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3569, 'São Miguel do Fidalgo', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3570, 'São Miguel do Tapuio', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3571, 'São Pedro do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3572, 'São Raimundo Nonato', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3573, 'Sebastião Barros', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3574, 'Sebastião Leal', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3575, 'Sigefredo Pacheco', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3576, 'Simões', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3577, 'Simplício Mendes', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3578, 'Socorro do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3579, 'Sussuapara', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3580, 'Tamboril do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3581, 'Tanque do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3582, 'Teresina', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3583, 'União', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3584, 'Uruçuí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3585, 'Valença do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3586, 'Várzea Branca', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3587, 'Várzea Grande', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3588, 'Vera Mendes', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3589, 'Vila Nova do Piauí', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3590, 'Wall Ferraz', 17);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3591, 'Angra dos Reis', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3592, 'Aperibé', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3593, 'Araruama', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3594, 'Areal', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3595, 'Armação dos Búzios', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3596, 'Arraial do Cabo', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3597, 'Barra do Piraí', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3598, 'Barra Mansa', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3599, 'Belford Roxo', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3600, 'Bom Jardim', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3601, 'Bom Jesus do Itabapoana', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3602, 'Cabo Frio', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3603, 'Cachoeiras de Macacu', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3604, 'Cambuci', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3605, 'Campos dos Goytacazes', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3606, 'Cantagalo', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3607, 'Carapebus', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3608, 'Cardoso Moreira', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3609, 'Carmo', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3610, 'Casimiro de Abreu', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3611, 'Comendador Levy Gasparian', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3612, 'Conceição de Macabu', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3613, 'Cordeiro', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3614, 'Duas Barras', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3615, 'Duque de Caxias', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3616, 'Engenheiro Paulo de Frontin', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3617, 'Guapimirim', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3618, 'Iguaba Grande', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3619, 'Itaboraí', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3620, 'Itaguaí', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3621, 'Italva', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3622, 'Itaocara', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3623, 'Itaperuna', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3624, 'Itatiaia', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3625, 'Japeri', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3626, 'Laje do Muriaé', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3627, 'Macaé', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3628, 'Macuco', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3629, 'Magé', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3630, 'Mangaratiba', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3631, 'Maricá', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3632, 'Mendes', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3633, 'Mesquita', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3634, 'Miguel Pereira', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3635, 'Miracema', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3636, 'Natividade', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3637, 'Nilópolis', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3638, 'Niterói', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3639, 'Nova Friburgo', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3640, 'Nova Iguaçu', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3641, 'Paracambi', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3642, 'Paraíba do Sul', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3643, 'Parati', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3644, 'Paty do Alferes', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3645, 'Petrópolis', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3646, 'Pinheiral', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3647, 'Piraí', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3648, 'Porciúncula', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3649, 'Porto Real', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3650, 'Quatis', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3651, 'Queimados', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3652, 'Quissamã', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3653, 'Resende', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3654, 'Rio Bonito', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3655, 'Rio Claro', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3656, 'Rio das Flores', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3657, 'Rio das Ostras', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3658, 'Rio de Janeiro', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3659, 'Santa Maria Madalena', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3660, 'Santo Antônio de Pádua', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3661, 'São Fidélis', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3662, 'São Francisco de Itabapoana', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3663, 'São Gonçalo', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3664, 'São João da Barra', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3665, 'São João de Meriti', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3666, 'São José de Ubá', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3667, 'São José do Vale do Rio Pret', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3668, 'São Pedro da Aldeia', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3669, 'São Sebastião do Alto', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3670, 'Sapucaia', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3671, 'Saquarema', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3672, 'Seropédica', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3673, 'Silva Jardim', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3674, 'Sumidouro', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3675, 'Tanguá', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3676, 'Teresópolis', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3677, 'Trajano de Morais', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3678, 'Três Rios', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3679, 'Valença', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3680, 'Varre-Sai', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3681, 'Vassouras', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3682, 'Volta Redonda', 19);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3683, 'Acari', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3684, 'Açu', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3685, 'Afonso Bezerra', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3686, 'Água Nova', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3687, 'Alexandria', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3688, 'Almino Afonso', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3689, 'Alto do Rodrigues', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3690, 'Angicos', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3691, 'Antônio Martins', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3692, 'Apodi', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3693, 'Areia Branca', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3694, 'Arês', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3695, 'Augusto Severo', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3696, 'Baía Formosa', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3697, 'Baraúna', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3698, 'Barcelona', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3699, 'Bento Fernandes', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3700, 'Bodó', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3701, 'Bom Jesus', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3702, 'Brejinho', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3703, 'Caiçara do Norte', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3704, 'Caiçara do Rio do Vento', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3705, 'Caicó', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3706, 'Campo Redondo', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3707, 'Canguaretama', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3708, 'Caraúbas', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3709, 'Carnaúba dos Dantas', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3710, 'Carnaubais', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3711, 'Ceará-Mirim', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3712, 'Cerro Corá', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3713, 'Coronel Ezequiel', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3714, 'Coronel João Pessoa', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3715, 'Cruzeta', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3716, 'Currais Novos', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3717, 'Doutor Severiano', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3718, 'Encanto', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3719, 'Equador', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3720, 'Espírito Santo', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3721, 'Extremoz', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3722, 'Felipe Guerra', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3723, 'Fernando Pedroza', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3724, 'Florânia', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3725, 'Francisco Dantas', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3726, 'Frutuoso Gomes', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3727, 'Galinhos', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3728, 'Goianinha', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3729, 'Governador Dix-Sept Rosado', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3730, 'Grossos', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3731, 'Guamaré', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3732, 'Ielmo Marinho', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3733, 'Ipanguaçu', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3734, 'Ipueira', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3735, 'Itajá', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3736, 'Itaú', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3737, 'Jaçanã', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3738, 'Jandaíra', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3739, 'Janduís', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3740, 'Januário Cicco', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3741, 'Japi', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3742, 'Jardim de Angicos', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3743, 'Jardim de Piranhas', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3744, 'Jardim do Seridó', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3745, 'João Câmara', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3746, 'João Dias', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3747, 'José da Penha', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3748, 'Jucurutu', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3749, 'Jundiá', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3750, 'Lagoa d`Anta', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3751, 'Lagoa de Pedras', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3752, 'Lagoa de Velhos', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3753, 'Lagoa Nova', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3754, 'Lagoa Salgada', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3755, 'Lajes', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3756, 'Lajes Pintadas', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3757, 'Lucrécia', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3758, 'Luís Gomes', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3759, 'Macaíba', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3760, 'Macau', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3761, 'Major Sales', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3762, 'Marcelino Vieira', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3763, 'Martins', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3764, 'Maxaranguape', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3765, 'Messias Targino', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3766, 'Montanhas', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3767, 'Monte Alegre', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3768, 'Monte das Gameleiras', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3769, 'Mossoró', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3770, 'Natal', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3771, 'Nísia Floresta', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3772, 'Nova Cruz', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3773, 'Olho-d`Água do Borges', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3774, 'Ouro Branco', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3775, 'Paraná', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3776, 'Paraú', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3777, 'Parazinho', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3778, 'Parelhas', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3779, 'Parnamirim', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3780, 'Passa e Fica', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3781, 'Passagem', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3782, 'Patu', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3783, 'Pau dos Ferros', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3784, 'Pedra Grande', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3785, 'Pedra Preta', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3786, 'Pedro Avelino', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3787, 'Pedro Velho', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3788, 'Pendências', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3789, 'Pilões', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3790, 'Poço Branco', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3791, 'Portalegre', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3792, 'Porto do Mangue', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3793, 'Presidente Juscelino', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3794, 'Pureza', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3795, 'Rafael Fernandes', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3796, 'Rafael Godeiro', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3797, 'Riacho da Cruz', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3798, 'Riacho de Santana', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3799, 'Riachuelo', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3800, 'Rio do Fogo', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3801, 'Rodolfo Fernandes', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3802, 'Ruy Barbosa', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3803, 'Santa Cruz', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3804, 'Santa Maria', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3805, 'Santana do Matos', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3806, 'Santana do Seridó', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3807, 'Santo Antônio', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3808, 'São Bento do Norte', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3809, 'São Bento do Trairí', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3810, 'São Fernando', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3811, 'São Francisco do Oeste', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3812, 'São Gonçalo do Amarante', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3813, 'São João do Sabugi', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3814, 'São José de Mipibu', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3815, 'São José do Campestre', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3816, 'São José do Seridó', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3817, 'São Miguel', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3818, 'São Miguel do Gostoso', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3819, 'São Paulo do Potengi', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3820, 'São Pedro', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3821, 'São Rafael', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3822, 'São Tomé', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3823, 'São Vicente', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3824, 'Senador Elói de Souza', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3825, 'Senador Georgino Avelino', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3826, 'Serra de São Bento', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3827, 'Serra do Mel', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3828, 'Serra Negra do Norte', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3829, 'Serrinha', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3830, 'Serrinha dos Pintos', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3831, 'Severiano Melo', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3832, 'Sítio Novo', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3833, 'Taboleiro Grande', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3834, 'Taipu', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3835, 'Tangará', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3836, 'Tenente Ananias', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3837, 'Tenente Laurentino Cruz', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3838, 'Tibau', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3839, 'Tibau do Sul', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3840, 'Timbaúba dos Batistas', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3841, 'Touros', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3842, 'Triunfo Potiguar', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3843, 'Umarizal', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3844, 'Upanema', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3845, 'Várzea', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3846, 'Venha-Ver', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3847, 'Vera Cruz', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3848, 'Viçosa', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3849, 'Vila Flor', 20);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3850, 'Aceguá', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3851, 'Água Santa', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3852, 'Agudo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3853, 'Ajuricaba', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3854, 'Alecrim', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3855, 'Alegrete', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3856, 'Alegria', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3857, 'Almirante Tamandaré do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3858, 'Alpestre', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3859, 'Alto Alegre', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3860, 'Alto Feliz', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3861, 'Alvorada', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3862, 'Amaral Ferrador', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3863, 'Ametista do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3864, 'André da Rocha', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3865, 'Anta Gorda', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3866, 'Antônio Prado', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3867, 'Arambaré', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3868, 'Araricá', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3869, 'Aratiba', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3870, 'Arroio do Meio', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3871, 'Arroio do Padre', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3872, 'Arroio do Sal', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3873, 'Arroio do Tigre', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3874, 'Arroio dos Ratos', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3875, 'Arroio Grande', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3876, 'Arvorezinha', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3877, 'Augusto Pestana', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3878, 'Áurea', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3879, 'Bagé', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3880, 'Balneário Pinhal', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3881, 'Barão', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3882, 'Barão de Cotegipe', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3883, 'Barão do Triunfo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3884, 'Barra do Guarita', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3885, 'Barra do Quaraí', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3886, 'Barra do Ribeiro', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3887, 'Barra do Rio Azul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3888, 'Barra Funda', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3889, 'Barracão', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3890, 'Barros Cassal', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3891, 'Benjamin Constant do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3892, 'Bento Gonçalves', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3893, 'Boa Vista das Missões', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3894, 'Boa Vista do Buricá', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3895, 'Boa Vista do Cadeado', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3896, 'Boa Vista do Incra', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3897, 'Boa Vista do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3898, 'Bom Jesus', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3899, 'Bom Princípio', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3900, 'Bom Progresso', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3901, 'Bom Retiro do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3902, 'Boqueirão do Leão', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3903, 'Bossoroca', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3904, 'Bozano', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3905, 'Braga', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3906, 'Brochier', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3907, 'Butiá', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3908, 'Caçapava do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3909, 'Cacequi', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3910, 'Cachoeira do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3911, 'Cachoeirinha', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3912, 'Cacique Doble', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3913, 'Caibaté', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3914, 'Caiçara', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3915, 'Camaquã', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3916, 'Camargo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3917, 'Cambará do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3918, 'Campestre da Serra', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3919, 'Campina das Missões', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3920, 'Campinas do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3921, 'Campo Bom', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3922, 'Campo Novo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3923, 'Campos Borges', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3924, 'Candelária', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3925, 'Cândido Godói', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3926, 'Candiota', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3927, 'Canela', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3928, 'Canguçu', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3929, 'Canoas', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3930, 'Canudos do Vale', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3931, 'Capão Bonito do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3932, 'Capão da Canoa', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3933, 'Capão do Cipó', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3934, 'Capão do Leão', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3935, 'Capela de Santana', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3936, 'Capitão', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3937, 'Capivari do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3938, 'Caraá', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3939, 'Carazinho', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3940, 'Carlos Barbosa', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3941, 'Carlos Gomes', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3942, 'Casca', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3943, 'Caseiros', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3944, 'Catuípe', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3945, 'Caxias do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3946, 'Centenário', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3947, 'Cerrito', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3948, 'Cerro Branco', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3949, 'Cerro Grande', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3950, 'Cerro Grande do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3951, 'Cerro Largo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3952, 'Chapada', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3953, 'Charqueadas', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3954, 'Charrua', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3955, 'Chiapeta', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3956, 'Chuí', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3957, 'Chuvisca', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3958, 'Cidreira', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3959, 'Ciríaco', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3960, 'Colinas', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3961, 'Colorado', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3962, 'Condor', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3963, 'Constantina', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3964, 'Coqueiro Baixo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3965, 'Coqueiros do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3966, 'Coronel Barros', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3967, 'Coronel Bicaco', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3968, 'Coronel Pilar', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3969, 'Cotiporã', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3970, 'Coxilha', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3971, 'Crissiumal', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3972, 'Cristal', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3973, 'Cristal do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3974, 'Cruz Alta', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3975, 'Cruzaltense', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3976, 'Cruzeiro do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3977, 'David Canabarro', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3978, 'Derrubadas', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3979, 'Dezesseis de Novembro', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3980, 'Dilermando de Aguiar', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3981, 'Dois Irmãos', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3982, 'Dois Irmãos das Missões', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3983, 'Dois Lajeados', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3984, 'Dom Feliciano', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3985, 'Dom Pedrito', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3986, 'Dom Pedro de Alcântara', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3987, 'Dona Francisca', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3988, 'Doutor Maurício Cardoso', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3989, 'Doutor Ricardo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3990, 'Eldorado do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3991, 'Encantado', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3992, 'Encruzilhada do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3993, 'Engenho Velho', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3994, 'Entre Rios do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3995, 'Entre-Ijuís', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3996, 'Erebango', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3997, 'Erechim', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3998, 'Ernestina', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(3999, 'Erval Grande', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4000, 'Erval Seco', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4001, 'Esmeralda', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4002, 'Esperança do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4003, 'Espumoso', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4004, 'Estação', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4005, 'Estância Velha', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4006, 'Esteio', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4007, 'Estrela', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4008, 'Estrela Velha', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4009, 'Eugênio de Castro', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4010, 'Fagundes Varela', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4011, 'Farroupilha', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4012, 'Faxinal do Soturno', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4013, 'Faxinalzinho', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4014, 'Fazenda Vilanova', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4015, 'Feliz', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4016, 'Flores da Cunha', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4017, 'Floriano Peixoto', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4018, 'Fontoura Xavier', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4019, 'Formigueiro', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4020, 'Forquetinha', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4021, 'Fortaleza dos Valos', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4022, 'Frederico Westphalen', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4023, 'Garibaldi', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4024, 'Garruchos', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4025, 'Gaurama', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4026, 'General Câmara', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4027, 'Gentil', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4028, 'Getúlio Vargas', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4029, 'Giruá', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4030, 'Glorinha', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4031, 'Gramado', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4032, 'Gramado dos Loureiros', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4033, 'Gramado Xavier', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4034, 'Gravataí', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4035, 'Guabiju', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4036, 'Guaíba', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4037, 'Guaporé', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4038, 'Guarani das Missões', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4039, 'Harmonia', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4040, 'Herval', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4041, 'Herveiras', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4042, 'Horizontina', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4043, 'Hulha Negra', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4044, 'Humaitá', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4045, 'Ibarama', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4046, 'Ibiaçá', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4047, 'Ibiraiaras', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4048, 'Ibirapuitã', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4049, 'Ibirubá', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4050, 'Igrejinha', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4051, 'Ijuí', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4052, 'Ilópolis', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4053, 'Imbé', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4054, 'Imigrante', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4055, 'Independência', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4056, 'Inhacorá', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4057, 'Ipê', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4058, 'Ipiranga do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4059, 'Iraí', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4060, 'Itaara', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4061, 'Itacurubi', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4062, 'Itapuca', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4063, 'Itaqui', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4064, 'Itati', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4065, 'Itatiba do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4066, 'Ivorá', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4067, 'Ivoti', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4068, 'Jaboticaba', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4069, 'Jacuizinho', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4070, 'Jacutinga', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4071, 'Jaguarão', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4072, 'Jaguari', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4073, 'Jaquirana', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4074, 'Jari', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4075, 'Jóia', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4076, 'Júlio de Castilhos', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4077, 'Lagoa Bonita do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4078, 'Lagoa dos Três Cantos', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4079, 'Lagoa Vermelha', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4080, 'Lagoão', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4081, 'Lajeado', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4082, 'Lajeado do Bugre', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4083, 'Lavras do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4084, 'Liberato Salzano', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4085, 'Lindolfo Collor', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4086, 'Linha Nova', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4087, 'Maçambara', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4088, 'Machadinho', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4089, 'Mampituba', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4090, 'Manoel Viana', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4091, 'Maquiné', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4092, 'Maratá', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4093, 'Marau', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4094, 'Marcelino Ramos', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4095, 'Mariana Pimentel', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4096, 'Mariano Moro', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4097, 'Marques de Souza', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4098, 'Mata', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4099, 'Mato Castelhano', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4100, 'Mato Leitão', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4101, 'Mato Queimado', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4102, 'Maximiliano de Almeida', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4103, 'Minas do Leão', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4104, 'Miraguaí', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4105, 'Montauri', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4106, 'Monte Alegre dos Campos', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4107, 'Monte Belo do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4108, 'Montenegro', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4109, 'Mormaço', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4110, 'Morrinhos do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4111, 'Morro Redondo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4112, 'Morro Reuter', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4113, 'Mostardas', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4114, 'Muçum', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4115, 'Muitos Capões', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4116, 'Muliterno', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4117, 'Não-Me-Toque', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4118, 'Nicolau Vergueiro', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4119, 'Nonoai', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4120, 'Nova Alvorada', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4121, 'Nova Araçá', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4122, 'Nova Bassano', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4123, 'Nova Boa Vista', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4124, 'Nova Bréscia', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4125, 'Nova Candelária', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4126, 'Nova Esperança do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4127, 'Nova Hartz', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4128, 'Nova Pádua', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4129, 'Nova Palma', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4130, 'Nova Petrópolis', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4131, 'Nova Prata', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4132, 'Nova Ramada', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4133, 'Nova Roma do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4134, 'Nova Santa Rita', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4135, 'Novo Barreiro', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4136, 'Novo Cabrais', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4137, 'Novo Hamburgo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4138, 'Novo Machado', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4139, 'Novo Tiradentes', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4140, 'Novo Xingu', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4141, 'Osório', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4142, 'Paim Filho', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4143, 'Palmares do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4144, 'Palmeira das Missões', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4145, 'Palmitinho', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4146, 'Panambi', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4147, 'Pantano Grande', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4148, 'Paraí', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4149, 'Paraíso do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4150, 'Pareci Novo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4151, 'Parobé', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4152, 'Passa Sete', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4153, 'Passo do Sobrado', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4154, 'Passo Fundo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4155, 'Paulo Bento', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4156, 'Paverama', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4157, 'Pedras Altas', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4158, 'Pedro Osório', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4159, 'Pejuçara', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4160, 'Pelotas', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4161, 'Picada Café', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4162, 'Pinhal', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4163, 'Pinhal da Serra', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4164, 'Pinhal Grande', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4165, 'Pinheirinho do Vale', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4166, 'Pinheiro Machado', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4167, 'Pirapó', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4168, 'Piratini', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4169, 'Planalto', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4170, 'Poço das Antas', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4171, 'Pontão', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4172, 'Ponte Preta', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4173, 'Portão', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4174, 'Porto Alegre', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4175, 'Porto Lucena', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4176, 'Porto Mauá', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4177, 'Porto Vera Cruz', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4178, 'Porto Xavier', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4179, 'Pouso Novo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4180, 'Presidente Lucena', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4181, 'Progresso', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4182, 'Protásio Alves', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4183, 'Putinga', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4184, 'Quaraí', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4185, 'Quatro Irmãos', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4186, 'Quevedos', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4187, 'Quinze de Novembro', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4188, 'Redentora', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4189, 'Relvado', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4190, 'Restinga Seca', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4191, 'Rio dos Índios', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4192, 'Rio Grande', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4193, 'Rio Pardo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4194, 'Riozinho', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4195, 'Roca Sales', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4196, 'Rodeio Bonito', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4197, 'Rolador', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4198, 'Rolante', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4199, 'Ronda Alta', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4200, 'Rondinha', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4201, 'Roque Gonzales', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4202, 'Rosário do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4203, 'Sagrada Família', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4204, 'Saldanha Marinho', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4205, 'Salto do Jacuí', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4206, 'Salvador das Missões', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4207, 'Salvador do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4208, 'Sananduva', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4209, 'Santa Bárbara do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4210, 'Santa Cecília do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4211, 'Santa Clara do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4212, 'Santa Cruz do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4213, 'Santa Margarida do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4214, 'Santa Maria', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4215, 'Santa Maria do Herval', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4216, 'Santa Rosa', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4217, 'Santa Tereza', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4218, 'Santa Vitória do Palmar', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4219, 'Santana da Boa Vista', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4220, 'Santana do Livramento', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4221, 'Santiago', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4222, 'Santo Ângelo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4223, 'Santo Antônio da Patrulha', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4224, 'Santo Antônio das Missões', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4225, 'Santo Antônio do Palma', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4226, 'Santo Antônio do Planalto', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4227, 'Santo Augusto', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4228, 'Santo Cristo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4229, 'Santo Expedito do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4230, 'São Borja', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4231, 'São Domingos do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4232, 'São Francisco de Assis', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4233, 'São Francisco de Paula', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4234, 'São Gabriel', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4235, 'São Jerônimo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4236, 'São João da Urtiga', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4237, 'São João do Polêsine', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4238, 'São Jorge', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4239, 'São José das Missões', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4240, 'São José do Herval', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4241, 'São José do Hortêncio', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4242, 'São José do Inhacorá', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4243, 'São José do Norte', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4244, 'São José do Ouro', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4245, 'São José do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4246, 'São José dos Ausentes', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4247, 'São Leopoldo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4248, 'São Lourenço do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4249, 'São Luiz Gonzaga', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4250, 'São Marcos', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4251, 'São Martinho', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4252, 'São Martinho da Serra', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4253, 'São Miguel das Missões', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4254, 'São Nicolau', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4255, 'São Paulo das Missões', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4256, 'São Pedro da Serra', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4257, 'São Pedro das Missões', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4258, 'São Pedro do Butiá', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4259, 'São Pedro do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4260, 'São Sebastião do Caí', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4261, 'São Sepé', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4262, 'São Valentim', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4263, 'São Valentim do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4264, 'São Valério do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4265, 'São Vendelino', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4266, 'São Vicente do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4267, 'Sapiranga', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4268, 'Sapucaia do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4269, 'Sarandi', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4270, 'Seberi', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4271, 'Sede Nova', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4272, 'Segredo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4273, 'Selbach', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4274, 'Senador Salgado Filho', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4275, 'Sentinela do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4276, 'Serafina Corrêa', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4277, 'Sério', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4278, 'Sertão', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4279, 'Sertão Santana', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4280, 'Sete de Setembro', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4281, 'Severiano de Almeida', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4282, 'Silveira Martins', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4283, 'Sinimbu', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4284, 'Sobradinho', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4285, 'Soledade', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4286, 'Tabaí', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4287, 'Tapejara', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4288, 'Tapera', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4289, 'Tapes', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4290, 'Taquara', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4291, 'Taquari', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4292, 'Taquaruçu do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4293, 'Tavares', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4294, 'Tenente Portela', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4295, 'Terra de Areia', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4296, 'Teutônia', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4297, 'Tio Hugo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4298, 'Tiradentes do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4299, 'Toropi', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4300, 'Torres', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4301, 'Tramandaí', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4302, 'Travesseiro', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4303, 'Três Arroios', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4304, 'Três Cachoeiras', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4305, 'Três Coroas', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4306, 'Três de Maio', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4307, 'Três Forquilhas', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4308, 'Três Palmeiras', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4309, 'Três Passos', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4310, 'Trindade do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4311, 'Triunfo', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4312, 'Tucunduva', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4313, 'Tunas', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4314, 'Tupanci do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4315, 'Tupanciretã', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4316, 'Tupandi', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4317, 'Tuparendi', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4318, 'Turuçu', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4319, 'Ubiretama', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4320, 'União da Serra', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4321, 'Unistalda', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4322, 'Uruguaiana', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4323, 'Vacaria', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4324, 'Vale do Sol', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4325, 'Vale Real', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4326, 'Vale Verde', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4327, 'Vanini', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4328, 'Venâncio Aires', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4329, 'Vera Cruz', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4330, 'Veranópolis', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4331, 'Vespasiano Correa', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4332, 'Viadutos', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4333, 'Viamão', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4334, 'Vicente Dutra', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4335, 'Victor Graeff', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4336, 'Vila Flores', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4337, 'Vila Lângaro', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4338, 'Vila Maria', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4339, 'Vila Nova do Sul', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4340, 'Vista Alegre', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4341, 'Vista Alegre do Prata', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4342, 'Vista Gaúcha', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4343, 'Vitória das Missões', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4344, 'Westfália', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4345, 'Xangri-lá', 23);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4346, 'Alta Floresta d`Oeste', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4347, 'Alto Alegre dos Parecis', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4348, 'Alto Paraíso', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4349, 'Alvorada d`Oeste', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4350, 'Ariquemes', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4351, 'Buritis', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4352, 'Cabixi', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4353, 'Cacaulândia', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4354, 'Cacoal', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4355, 'Campo Novo de Rondônia', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4356, 'Candeias do Jamari', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4357, 'Castanheiras', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4358, 'Cerejeiras', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4359, 'Chupinguaia', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4360, 'Colorado do Oeste', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4361, 'Corumbiara', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4362, 'Costa Marques', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4363, 'Cujubim', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4364, 'Espigão d`Oeste', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4365, 'Governador Jorge Teixeira', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4366, 'Guajará-Mirim', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4367, 'Itapuã do Oeste', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4368, 'Jaru', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4369, 'Ji-Paraná', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4370, 'Machadinho d`Oeste', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4371, 'Ministro Andreazza', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4372, 'Mirante da Serra', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4373, 'Monte Negro', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4374, 'Nova Brasilândia d`Oeste', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4375, 'Nova Mamoré', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4376, 'Nova União', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4377, 'Novo Horizonte do Oeste', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4378, 'Ouro Preto do Oeste', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4379, 'Parecis', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4380, 'Pimenta Bueno', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4381, 'Pimenteiras do Oeste', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4382, 'Porto Velho', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4383, 'Presidente Médici', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4384, 'Primavera de Rondônia', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4385, 'Rio Crespo', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4386, 'Rolim de Moura', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4387, 'Santa Luzia d`Oeste', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4388, 'São Felipe d`Oeste', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4389, 'São Francisco do Guaporé', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4390, 'São Miguel do Guaporé', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4391, 'Seringueiras', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4392, 'Teixeirópolis', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4393, 'Theobroma', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4394, 'Urupá', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4395, 'Vale do Anari', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4396, 'Vale do Paraíso', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4397, 'Vilhena', 21);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4398, 'Alto Alegre', 22);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4399, 'Amajari', 22);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4400, 'Boa Vista', 22);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4401, 'Bonfim', 22);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4402, 'Cantá', 22);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4403, 'Caracaraí', 22);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4404, 'Caroebe', 22);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4405, 'Iracema', 22);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4406, 'Mucajaí', 22);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4407, 'Normandia', 22);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4408, 'Pacaraima', 22);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4409, 'Rorainópolis', 22);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4410, 'São João da Baliza', 22);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4411, 'São Luiz', 22);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4412, 'Uiramutã', 22);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4413, 'Abdon Batista', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4414, 'Abelardo Luz', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4415, 'Agrolândia', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4416, 'Agronômica', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4417, 'Água Doce', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4418, 'Águas de Chapecó', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4419, 'Águas Frias', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4420, 'Águas Mornas', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4421, 'Alfredo Wagner', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4422, 'Alto Bela Vista', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4423, 'Anchieta', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4424, 'Angelina', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4425, 'Anita Garibaldi', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4426, 'Anitápolis', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4427, 'Antônio Carlos', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4428, 'Apiúna', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4429, 'Arabutã', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4430, 'Araquari', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4431, 'Araranguá', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4432, 'Armazém', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4433, 'Arroio Trinta', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4434, 'Arvoredo', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4435, 'Ascurra', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4436, 'Atalanta', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4437, 'Aurora', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4438, 'Balneário Arroio do Silva', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4439, 'Balneário Barra do Sul', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4440, 'Balneário Camboriú', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4441, 'Balneário Gaivota', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4442, 'Bandeirante', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4443, 'Barra Bonita', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4444, 'Barra Velha', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4445, 'Bela Vista do Toldo', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4446, 'Belmonte', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4447, 'Benedito Novo', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4448, 'Biguaçu', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4449, 'Blumenau', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4450, 'Bocaina do Sul', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4451, 'Bom Jardim da Serra', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4452, 'Bom Jesus', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4453, 'Bom Jesus do Oeste', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4454, 'Bom Retiro', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4455, 'Bombinhas', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4456, 'Botuverá', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4457, 'Braço do Norte', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4458, 'Braço do Trombudo', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4459, 'Brunópolis', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4460, 'Brusque', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4461, 'Caçador', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4462, 'Caibi', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4463, 'Calmon', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4464, 'Camboriú', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4465, 'Campo Alegre', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4466, 'Campo Belo do Sul', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4467, 'Campo Erê', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4468, 'Campos Novos', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4469, 'Canelinha', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4470, 'Canoinhas', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4471, 'Capão Alto', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4472, 'Capinzal', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4473, 'Capivari de Baixo', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4474, 'Catanduvas', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4475, 'Caxambu do Sul', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4476, 'Celso Ramos', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4477, 'Cerro Negro', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4478, 'Chapadão do Lageado', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4479, 'Chapecó', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4480, 'Cocal do Sul', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4481, 'Concórdia', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4482, 'Cordilheira Alta', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4483, 'Coronel Freitas', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4484, 'Coronel Martins', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4485, 'Correia Pinto', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4486, 'Corupá', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4487, 'Criciúma', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4488, 'Cunha Porã', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4489, 'Cunhataí', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4490, 'Curitibanos', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4491, 'Descanso', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4492, 'Dionísio Cerqueira', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4493, 'Dona Emma', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4494, 'Doutor Pedrinho', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4495, 'Entre Rios', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4496, 'Ermo', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4497, 'Erval Velho', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4498, 'Faxinal dos Guedes', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4499, 'Flor do Sertão', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4500, 'Florianópolis', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4501, 'Formosa do Sul', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4502, 'Forquilhinha', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4503, 'Fraiburgo', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4504, 'Frei Rogério', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4505, 'Galvão', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4506, 'Garopaba', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4507, 'Garuva', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4508, 'Gaspar', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4509, 'Governador Celso Ramos', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4510, 'Grão Pará', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4511, 'Gravatal', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4512, 'Guabiruba', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4513, 'Guaraciaba', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4514, 'Guaramirim', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4515, 'Guarujá do Sul', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4516, 'Guatambú', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4517, 'Herval d`Oeste', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4518, 'Ibiam', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4519, 'Ibicaré', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4520, 'Ibirama', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4521, 'Içara', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4522, 'Ilhota', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4523, 'Imaruí', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4524, 'Imbituba', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4525, 'Imbuia', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4526, 'Indaial', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4527, 'Iomerê', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4528, 'Ipira', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4529, 'Iporã do Oeste', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4530, 'Ipuaçu', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4531, 'Ipumirim', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4532, 'Iraceminha', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4533, 'Irani', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4534, 'Irati', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4535, 'Irineópolis', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4536, 'Itá', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4537, 'Itaiópolis', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4538, 'Itajaí', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4539, 'Itapema', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4540, 'Itapiranga', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4541, 'Itapoá', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4542, 'Ituporanga', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4543, 'Jaborá', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4544, 'Jacinto Machado', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4545, 'Jaguaruna', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4546, 'Jaraguá do Sul', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4547, 'Jardinópolis', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4548, 'Joaçaba', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4549, 'Joinville', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4550, 'José Boiteux', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4551, 'Jupiá', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4552, 'Lacerdópolis', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4553, 'Lages', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4554, 'Laguna', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4555, 'Lajeado Grande', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4556, 'Laurentino', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4557, 'Lauro Muller', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4558, 'Lebon Régis', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4559, 'Leoberto Leal', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4560, 'Lindóia do Sul', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4561, 'Lontras', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4562, 'Luiz Alves', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4563, 'Luzerna', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4564, 'Macieira', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4565, 'Mafra', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4566, 'Major Gercino', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4567, 'Major Vieira', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4568, 'Maracajá', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4569, 'Maravilha', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4570, 'Marema', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4571, 'Massaranduba', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4572, 'Matos Costa', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4573, 'Meleiro', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4574, 'Mirim Doce', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4575, 'Modelo', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4576, 'Mondaí', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4577, 'Monte Carlo', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4578, 'Monte Castelo', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4579, 'Morro da Fumaça', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4580, 'Morro Grande', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4581, 'Navegantes', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4582, 'Nova Erechim', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4583, 'Nova Itaberaba', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4584, 'Nova Trento', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4585, 'Nova Veneza', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4586, 'Novo Horizonte', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4587, 'Orleans', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4588, 'Otacílio Costa', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4589, 'Ouro', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4590, 'Ouro Verde', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4591, 'Paial', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4592, 'Painel', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4593, 'Palhoça', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4594, 'Palma Sola', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4595, 'Palmeira', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4596, 'Palmitos', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4597, 'Papanduva', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4598, 'Paraíso', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4599, 'Passo de Torres', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4600, 'Passos Maia', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4601, 'Paulo Lopes', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4602, 'Pedras Grandes', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4603, 'Penha', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4604, 'Peritiba', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4605, 'Petrolândia', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4606, 'Piçarras', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4607, 'Pinhalzinho', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4608, 'Pinheiro Preto', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4609, 'Piratuba', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4610, 'Planalto Alegre', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4611, 'Pomerode', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4612, 'Ponte Alta', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4613, 'Ponte Alta do Norte', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4614, 'Ponte Serrada', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4615, 'Porto Belo', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4616, 'Porto União', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4617, 'Pouso Redondo', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4618, 'Praia Grande', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4619, 'Presidente Castelo Branco', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4620, 'Presidente Getúlio', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4621, 'Presidente Nereu', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4622, 'Princesa', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4623, 'Quilombo', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4624, 'Rancho Queimado', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4625, 'Rio das Antas', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4626, 'Rio do Campo', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4627, 'Rio do Oeste', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4628, 'Rio do Sul', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4629, 'Rio dos Cedros', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4630, 'Rio Fortuna', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4631, 'Rio Negrinho', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4632, 'Rio Rufino', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4633, 'Riqueza', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4634, 'Rodeio', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4635, 'Romelândia', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4636, 'Salete', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4637, 'Saltinho', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4638, 'Salto Veloso', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4639, 'Sangão', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4640, 'Santa Cecília', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4641, 'Santa Helena', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4642, 'Santa Rosa de Lima', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4643, 'Santa Rosa do Sul', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4644, 'Santa Terezinha', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4645, 'Santa Terezinha do Progresso', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4646, 'Santiago do Sul', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4647, 'Santo Amaro da Imperatriz', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4648, 'São Bento do Sul', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4649, 'São Bernardino', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4650, 'São Bonifácio', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4651, 'São Carlos', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4652, 'São Cristovão do Sul', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4653, 'São Domingos', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4654, 'São Francisco do Sul', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4655, 'São João Batista', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4656, 'São João do Itaperiú', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4657, 'São João do Oeste', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4658, 'São João do Sul', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4659, 'São Joaquim', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4660, 'São José', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4661, 'São José do Cedro', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4662, 'São José do Cerrito', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4663, 'São Lourenço do Oeste', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4664, 'São Ludgero', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4665, 'São Martinho', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4666, 'São Miguel da Boa Vista', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4667, 'São Miguel do Oeste', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4668, 'São Pedro de Alcântara', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4669, 'Saudades', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4670, 'Schroeder', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4671, 'Seara', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4672, 'Serra Alta', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4673, 'Siderópolis', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4674, 'Sombrio', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4675, 'Sul Brasil', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4676, 'Taió', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4677, 'Tangará', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4678, 'Tigrinhos', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4679, 'Tijucas', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4680, 'Timbé do Sul', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4681, 'Timbó', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4682, 'Timbó Grande', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4683, 'Três Barras', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4684, 'Treviso', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4685, 'Treze de Maio', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4686, 'Treze Tílias', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4687, 'Trombudo Central', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4688, 'Tubarão', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4689, 'Tunápolis', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4690, 'Turvo', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4691, 'União do Oeste', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4692, 'Urubici', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4693, 'Urupema', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4694, 'Urussanga', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4695, 'Vargeão', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4696, 'Vargem', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4697, 'Vargem Bonita', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4698, 'Vidal Ramos', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4699, 'Videira', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4700, 'Vitor Meireles', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4701, 'Witmarsum', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4702, 'Xanxerê', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4703, 'Xavantina', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4704, 'Xaxim', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4705, 'Zortéa', 24);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4706, 'Adamantina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4707, 'Adolfo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4708, 'Aguaí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4709, 'Águas da Prata', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4710, 'Águas de Lindóia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4711, 'Águas de Santa Bárbara', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4712, 'Águas de São Pedro', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4713, 'Agudos', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4714, 'Alambari', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4715, 'Alfredo Marcondes', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4716, 'Altair', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4717, 'Altinópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4718, 'Alto Alegre', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4719, 'Alumínio', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4720, 'Álvares Florence', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4721, 'Álvares Machado', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4722, 'Álvaro de Carvalho', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4723, 'Alvinlândia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4724, 'Americana', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4725, 'Américo Brasiliense', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4726, 'Américo de Campos', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4727, 'Amparo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4728, 'Analândia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4729, 'Andradina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4730, 'Angatuba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4731, 'Anhembi', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4732, 'Anhumas', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4733, 'Aparecida', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4734, 'Aparecida d`Oeste', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4735, 'Apiaí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4736, 'Araçariguama', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4737, 'Araçatuba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4738, 'Araçoiaba da Serra', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4739, 'Aramina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4740, 'Arandu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4741, 'Arapeí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4742, 'Araraquara', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4743, 'Araras', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4744, 'Arco-Íris', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4745, 'Arealva', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4746, 'Areias', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4747, 'Areiópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4748, 'Ariranha', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4749, 'Artur Nogueira', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4750, 'Arujá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4751, 'Aspásia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4752, 'Assis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4753, 'Atibaia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4754, 'Auriflama', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4755, 'Avaí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4756, 'Avanhandava', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4757, 'Avaré', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4758, 'Bady Bassitt', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4759, 'Balbinos', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4760, 'Bálsamo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4761, 'Bananal', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4762, 'Barão de Antonina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4763, 'Barbosa', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4764, 'Bariri', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4765, 'Barra Bonita', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4766, 'Barra do Chapéu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4767, 'Barra do Turvo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4768, 'Barretos', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4769, 'Barrinha', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4770, 'Barueri', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4771, 'Bastos', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4772, 'Batatais', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4773, 'Bauru', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4774, 'Bebedouro', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4775, 'Bento de Abreu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4776, 'Bernardino de Campos', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4777, 'Bertioga', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4778, 'Bilac', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4779, 'Birigui', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4780, 'Biritiba-Mirim', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4781, 'Boa Esperança do Sul', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4782, 'Bocaina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4783, 'Bofete', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4784, 'Boituva', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4785, 'Bom Jesus dos Perdões', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4786, 'Bom Sucesso de Itararé', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4787, 'Borá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4788, 'Boracéia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4789, 'Borborema', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4790, 'Borebi', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4791, 'Botucatu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4792, 'Bragança Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4793, 'Braúna', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4794, 'Brejo Alegre', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4795, 'Brodowski', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4796, 'Brotas', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4797, 'Buri', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4798, 'Buritama', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4799, 'Buritizal', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4800, 'Cabrália Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4801, 'Cabreúva', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4802, 'Caçapava', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4803, 'Cachoeira Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4804, 'Caconde', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4805, 'Cafelândia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4806, 'Caiabu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4807, 'Caieiras', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4808, 'Caiuá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4809, 'Cajamar', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4810, 'Cajati', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4811, 'Cajobi', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4812, 'Cajuru', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4813, 'Campina do Monte Alegre', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4814, 'Campinas', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4815, 'Campo Limpo Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4816, 'Campos do Jordão', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4817, 'Campos Novos Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4818, 'Cananéia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4819, 'Canas', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4820, 'Cândido Mota', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4821, 'Cândido Rodrigues', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4822, 'Canitar', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4823, 'Capão Bonito', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4824, 'Capela do Alto', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4825, 'Capivari', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4826, 'Caraguatatuba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4827, 'Carapicuíba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4828, 'Cardoso', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4829, 'Casa Branca', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4830, 'Cássia dos Coqueiros', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4831, 'Castilho', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4832, 'Catanduva', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4833, 'Catiguá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4834, 'Cedral', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4835, 'Cerqueira César', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4836, 'Cerquilho', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4837, 'Cesário Lange', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4838, 'Charqueada', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4839, 'Chavantes', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4840, 'Clementina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4841, 'Colina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4842, 'Colômbia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4843, 'Conchal', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4844, 'Conchas', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4845, 'Cordeirópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4846, 'Coroados', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4847, 'Coronel Macedo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4848, 'Corumbataí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4849, 'Cosmópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4850, 'Cosmorama', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4851, 'Cotia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4852, 'Cravinhos', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4853, 'Cristais Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4854, 'Cruzália', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4855, 'Cruzeiro', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4856, 'Cubatão', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4857, 'Cunha', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4858, 'Descalvado', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4859, 'Diadema', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4860, 'Dirce Reis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4861, 'Divinolândia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4862, 'Dobrada', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4863, 'Dois Córregos', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4864, 'Dolcinópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4865, 'Dourado', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4866, 'Dracena', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4867, 'Duartina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4868, 'Dumont', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4869, 'Echaporã', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4870, 'Eldorado', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4871, 'Elias Fausto', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4872, 'Elisiário', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4873, 'Embaúba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4874, 'Embu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4875, 'Embu-Guaçu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4876, 'Emilianópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4877, 'Engenheiro Coelho', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4878, 'Espírito Santo do Pinhal', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4879, 'Espírito Santo do Turvo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4880, 'Estiva Gerbi', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4881, 'Estrela d`Oeste', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4882, 'Estrela do Norte', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4883, 'Euclides da Cunha Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4884, 'Fartura', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4885, 'Fernando Prestes', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4886, 'Fernandópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4887, 'Fernão', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4888, 'Ferraz de Vasconcelos', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4889, 'Flora Rica', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4890, 'Floreal', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4891, 'Flórida Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4892, 'Florínia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4893, 'Franca', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4894, 'Francisco Morato', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4895, 'Franco da Rocha', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4896, 'Gabriel Monteiro', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4897, 'Gália', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4898, 'Garça', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4899, 'Gastão Vidigal', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4900, 'Gavião Peixoto', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4901, 'General Salgado', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4902, 'Getulina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4903, 'Glicério', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4904, 'Guaiçara', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4905, 'Guaimbê', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4906, 'Guaíra', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4907, 'Guapiaçu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4908, 'Guapiara', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4909, 'Guará', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4910, 'Guaraçaí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4911, 'Guaraci', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4912, 'Guarani d`Oeste', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4913, 'Guarantã', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4914, 'Guararapes', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4915, 'Guararema', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4916, 'Guaratinguetá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4917, 'Guareí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4918, 'Guariba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4919, 'Guarujá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4920, 'Guarulhos', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4921, 'Guatapará', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4922, 'Guzolândia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4923, 'Herculândia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4924, 'Holambra', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4925, 'Hortolândia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4926, 'Iacanga', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4927, 'Iacri', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4928, 'Iaras', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4929, 'Ibaté', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4930, 'Ibirá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4931, 'Ibirarema', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4932, 'Ibitinga', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4933, 'Ibiúna', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4934, 'Icém', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4935, 'Iepê', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4936, 'Igaraçu do Tietê', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4937, 'Igarapava', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4938, 'Igaratá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4939, 'Iguape', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4940, 'Ilha Comprida', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4941, 'Ilha Solteira', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4942, 'Ilhabela', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4943, 'Indaiatuba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4944, 'Indiana', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4945, 'Indiaporã', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4946, 'Inúbia Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4947, 'Ipaussu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4948, 'Iperó', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4949, 'Ipeúna', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4950, 'Ipiguá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4951, 'Iporanga', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4952, 'Ipuã', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4953, 'Iracemápolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4954, 'Irapuã', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4955, 'Irapuru', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4956, 'Itaberá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4957, 'Itaí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4958, 'Itajobi', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4959, 'Itaju', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4960, 'Itanhaém', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4961, 'Itaóca', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4962, 'Itapecerica da Serra', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4963, 'Itapetininga', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4964, 'Itapeva', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4965, 'Itapevi', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4966, 'Itapira', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4967, 'Itapirapuã Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4968, 'Itápolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4969, 'Itaporanga', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4970, 'Itapuí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4971, 'Itapura', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4972, 'Itaquaquecetuba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4973, 'Itararé', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4974, 'Itariri', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4975, 'Itatiba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4976, 'Itatinga', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4977, 'Itirapina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4978, 'Itirapuã', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4979, 'Itobi', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4980, 'Itu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4981, 'Itupeva', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4982, 'Ituverava', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4983, 'Jaborandi', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4984, 'Jaboticabal', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4985, 'Jacareí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4986, 'Jaci', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4987, 'Jacupiranga', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4988, 'Jaguariúna', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4989, 'Jales', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4990, 'Jambeiro', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4991, 'Jandira', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4992, 'Jardinópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4993, 'Jarinu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4994, 'Jaú', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4995, 'Jeriquara', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4996, 'Joanópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4997, 'João Ramalho', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4998, 'José Bonifácio', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(4999, 'Júlio Mesquita', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5000, 'Jumirim', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5001, 'Jundiaí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5002, 'Junqueirópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5003, 'Juquiá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5004, 'Juquitiba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5005, 'Lagoinha', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5006, 'Laranjal Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5007, 'Lavínia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5008, 'Lavrinhas', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5009, 'Leme', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5010, 'Lençóis Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5011, 'Limeira', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5012, 'Lindóia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5013, 'Lins', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5014, 'Lorena', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5015, 'Lourdes', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5016, 'Louveira', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5017, 'Lucélia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5018, 'Lucianópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5019, 'Luís Antônio', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5020, 'Luiziânia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5021, 'Lupércio', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5022, 'Lutécia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5023, 'Macatuba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5024, 'Macaubal', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5025, 'Macedônia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5026, 'Magda', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5027, 'Mairinque', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5028, 'Mairiporã', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5029, 'Manduri', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5030, 'Marabá Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5031, 'Maracaí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5032, 'Marapoama', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5033, 'Mariápolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5034, 'Marília', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5035, 'Marinópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5036, 'Martinópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5037, 'Matão', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5038, 'Mauá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5039, 'Mendonça', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5040, 'Meridiano', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5041, 'Mesópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5042, 'Miguelópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5043, 'Mineiros do Tietê', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5044, 'Mira Estrela', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5045, 'Miracatu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5046, 'Mirandópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5047, 'Mirante do Paranapanema', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5048, 'Mirassol', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5049, 'Mirassolândia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5050, 'Mococa', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5051, 'Mogi das Cruzes', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5052, 'Mogi Guaçu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5053, 'Moji Mirim', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5054, 'Mombuca', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5055, 'Monções', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5056, 'Mongaguá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5057, 'Monte Alegre do Sul', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5058, 'Monte Alto', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5059, 'Monte Aprazível', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5060, 'Monte Azul Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5061, 'Monte Castelo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5062, 'Monte Mor', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5063, 'Monteiro Lobato', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5064, 'Morro Agudo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5065, 'Morungaba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5066, 'Motuca', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5067, 'Murutinga do Sul', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5068, 'Nantes', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5069, 'Narandiba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5070, 'Natividade da Serra', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5071, 'Nazaré Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5072, 'Neves Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5073, 'Nhandeara', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5074, 'Nipoã', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5075, 'Nova Aliança', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5076, 'Nova Campina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5077, 'Nova Canaã Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5078, 'Nova Castilho', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5079, 'Nova Europa', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5080, 'Nova Granada', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5081, 'Nova Guataporanga', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5082, 'Nova Independência', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5083, 'Nova Luzitânia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5084, 'Nova Odessa', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5085, 'Novais', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5086, 'Novo Horizonte', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5087, 'Nuporanga', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5088, 'Ocauçu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5089, 'Óleo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5090, 'Olímpia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5091, 'Onda Verde', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5092, 'Oriente', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5093, 'Orindiúva', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5094, 'Orlândia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5095, 'Osasco', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5096, 'Oscar Bressane', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5097, 'Osvaldo Cruz', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5098, 'Ourinhos', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5099, 'Ouro Verde', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5100, 'Ouroeste', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5101, 'Pacaembu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5102, 'Palestina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5103, 'Palmares Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5104, 'Palmeira d`Oeste', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5105, 'Palmital', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5106, 'Panorama', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5107, 'Paraguaçu Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5108, 'Paraibuna', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5109, 'Paraíso', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5110, 'Paranapanema', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5111, 'Paranapuã', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5112, 'Parapuã', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5113, 'Pardinho', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5114, 'Pariquera-Açu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5115, 'Parisi', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5116, 'Patrocínio Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5117, 'Paulicéia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5118, 'Paulínia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5119, 'Paulistânia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5120, 'Paulo de Faria', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5121, 'Pederneiras', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5122, 'Pedra Bela', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5123, 'Pedranópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5124, 'Pedregulho', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5125, 'Pedreira', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5126, 'Pedrinhas Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5127, 'Pedro de Toledo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5128, 'Penápolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5129, 'Pereira Barreto', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5130, 'Pereiras', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5131, 'Peruíbe', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5132, 'Piacatu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5133, 'Piedade', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5134, 'Pilar do Sul', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5135, 'Pindamonhangaba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5136, 'Pindorama', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5137, 'Pinhalzinho', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5138, 'Piquerobi', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5139, 'Piquete', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5140, 'Piracaia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5141, 'Piracicaba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5142, 'Piraju', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5143, 'Pirajuí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5144, 'Pirangi', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5145, 'Pirapora do Bom Jesus', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5146, 'Pirapozinho', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5147, 'Pirassununga', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5148, 'Piratininga', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5149, 'Pitangueiras', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5150, 'Planalto', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5151, 'Platina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5152, 'Poá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5153, 'Poloni', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5154, 'Pompéia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5155, 'Pongaí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5156, 'Pontal', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5157, 'Pontalinda', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5158, 'Pontes Gestal', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5159, 'Populina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5160, 'Porangaba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5161, 'Porto Feliz', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5162, 'Porto Ferreira', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5163, 'Potim', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5164, 'Potirendaba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5165, 'Pracinha', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5166, 'Pradópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5167, 'Praia Grande', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5168, 'Pratânia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5169, 'Presidente Alves', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5170, 'Presidente Bernardes', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5171, 'Presidente Epitácio', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5172, 'Presidente Prudente', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5173, 'Presidente Venceslau', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5174, 'Promissão', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5175, 'Quadra', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5176, 'Quatá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5177, 'Queiroz', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5178, 'Queluz', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5179, 'Quintana', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5180, 'Rafard', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5181, 'Rancharia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5182, 'Redenção da Serra', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5183, 'Regente Feijó', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5184, 'Reginópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5185, 'Registro', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5186, 'Restinga', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5187, 'Ribeira', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5188, 'Ribeirão Bonito', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5189, 'Ribeirão Branco', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5190, 'Ribeirão Corrente', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5191, 'Ribeirão do Sul', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5192, 'Ribeirão dos Índios', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5193, 'Ribeirão Grande', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5194, 'Ribeirão Pires', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5195, 'Ribeirão Preto', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5196, 'Rifaina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5197, 'Rincão', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5198, 'Rinópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5199, 'Rio Claro', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5200, 'Rio das Pedras', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5201, 'Rio Grande da Serra', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5202, 'Riolândia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5203, 'Riversul', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5204, 'Rosana', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5205, 'Roseira', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5206, 'Rubiácea', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5207, 'Rubinéia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5208, 'Sabino', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5209, 'Sagres', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5210, 'Sales', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5211, 'Sales Oliveira', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5212, 'Salesópolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5213, 'Salmourão', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5214, 'Saltinho', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5215, 'Salto', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5216, 'Salto de Pirapora', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5217, 'Salto Grande', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5218, 'Sandovalina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5219, 'Santa Adélia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5220, 'Santa Albertina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5221, 'Santa Bárbara d`Oeste', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5222, 'Santa Branca', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5223, 'Santa Clara d`Oeste', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5224, 'Santa Cruz da Conceição', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5225, 'Santa Cruz da Esperança', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5226, 'Santa Cruz das Palmeiras', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5227, 'Santa Cruz do Rio Pardo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5228, 'Santa Ernestina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5229, 'Santa Fé do Sul', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5230, 'Santa Gertrudes', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5231, 'Santa Isabel', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5232, 'Santa Lúcia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5233, 'Santa Maria da Serra', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5234, 'Santa Mercedes', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5235, 'Santa Rita d`Oeste', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5236, 'Santa Rita do Passa Quatro', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5237, 'Santa Rosa de Viterbo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5238, 'Santa Salete', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5239, 'Santana da Ponte Pensa', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5240, 'Santana de Parnaíba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5241, 'Santo Anastácio', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5242, 'Santo André', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5243, 'Santo Antônio da Alegria', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5244, 'Santo Antônio de Posse', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5245, 'Santo Antônio do Aracanguá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5246, 'Santo Antônio do Jardim', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5247, 'Santo Antônio do Pinhal', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5248, 'Santo Expedito', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5249, 'Santópolis do Aguapeí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5250, 'Santos', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5251, 'São Bento do Sapucaí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5252, 'São Bernardo do Campo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5253, 'São Caetano do Sul', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5254, 'São Carlos', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5255, 'São Francisco', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5256, 'São João da Boa Vista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5257, 'São João das Duas Pontes', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5258, 'São João de Iracema', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5259, 'São João do Pau d`Alho', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5260, 'São Joaquim da Barra', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5261, 'São José da Bela Vista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5262, 'São José do Barreiro', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5263, 'São José do Rio Pardo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5264, 'São José do Rio Preto', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5265, 'São José dos Campos', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5266, 'São Lourenço da Serra', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5267, 'São Luís do Paraitinga', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5268, 'São Manuel', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5269, 'São Miguel Arcanjo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5270, 'São Paulo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5271, 'São Pedro', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5272, 'São Pedro do Turvo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5273, 'São Roque', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5274, 'São Sebastião', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5275, 'São Sebastião da Grama', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5276, 'São Simão', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5277, 'São Vicente', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5278, 'Sarapuí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5279, 'Sarutaiá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5280, 'Sebastianópolis do Sul', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5281, 'Serra Azul', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5282, 'Serra Negra', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5283, 'Serrana', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5284, 'Sertãozinho', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5285, 'Sete Barras', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5286, 'Severínia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5287, 'Silveiras', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5288, 'Socorro', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5289, 'Sorocaba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5290, 'Sud Mennucci', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5291, 'Sumaré', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5292, 'Suzanápolis', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5293, 'Suzano', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5294, 'Tabapuã', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5295, 'Tabatinga', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5296, 'Taboão da Serra', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5297, 'Taciba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5298, 'Taguaí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5299, 'Taiaçu', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5300, 'Taiúva', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5301, 'Tambaú', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5302, 'Tanabi', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5303, 'Tapiraí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5304, 'Tapiratiba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5305, 'Taquaral', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5306, 'Taquaritinga', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5307, 'Taquarituba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5308, 'Taquarivaí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5309, 'Tarabai', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5310, 'Tarumã', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5311, 'Tatuí', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5312, 'Taubaté', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5313, 'Tejupá', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5314, 'Teodoro Sampaio', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5315, 'Terra Roxa', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5316, 'Tietê', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5317, 'Timburi', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5318, 'Torre de Pedra', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5319, 'Torrinha', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5320, 'Trabiju', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5321, 'Tremembé', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5322, 'Três Fronteiras', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5323, 'Tuiuti', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5324, 'Tupã', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5325, 'Tupi Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5326, 'Turiúba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5327, 'Turmalina', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5328, 'Ubarana', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5329, 'Ubatuba', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5330, 'Ubirajara', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5331, 'Uchoa', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5332, 'União Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5333, 'Urânia', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5334, 'Uru', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5335, 'Urupês', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5336, 'Valentim Gentil', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5337, 'Valinhos', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5338, 'Valparaíso', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5339, 'Vargem', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5340, 'Vargem Grande do Sul', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5341, 'Vargem Grande Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5342, 'Várzea Paulista', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5343, 'Vera Cruz', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5344, 'Vinhedo', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5345, 'Viradouro', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5346, 'Vista Alegre do Alto', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5347, 'Vitória Brasil', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5348, 'Votorantim', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5349, 'Votuporanga', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5350, 'Zacarias', 26);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5351, 'Amparo de São Francisco', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5352, 'Aquidabã', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5353, 'Aracaju', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5354, 'Arauá', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5355, 'Areia Branca', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5356, 'Barra dos Coqueiros', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5357, 'Boquim', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5358, 'Brejo Grande', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5359, 'Campo do Brito', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5360, 'Canhoba', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5361, 'Canindé de São Francisco', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5362, 'Capela', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5363, 'Carira', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5364, 'Carmópolis', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5365, 'Cedro de São João', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5366, 'Cristinápolis', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5367, 'Cumbe', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5368, 'Divina Pastora', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5369, 'Estância', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5370, 'Feira Nova', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5371, 'Frei Paulo', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5372, 'Gararu', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5373, 'General Maynard', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5374, 'Gracho Cardoso', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5375, 'Ilha das Flores', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5376, 'Indiaroba', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5377, 'Itabaiana', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5378, 'Itabaianinha', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5379, 'Itabi', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5380, 'Itaporanga d`Ajuda', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5381, 'Japaratuba', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5382, 'Japoatã', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5383, 'Lagarto', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5384, 'Laranjeiras', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5385, 'Macambira', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5386, 'Malhada dos Bois', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5387, 'Malhador', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5388, 'Maruim', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5389, 'Moita Bonita', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5390, 'Monte Alegre de Sergipe', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5391, 'Muribeca', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5392, 'Neópolis', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5393, 'Nossa Senhora Aparecida', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5394, 'Nossa Senhora da Glória', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5395, 'Nossa Senhora das Dores', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5396, 'Nossa Senhora de Lourdes', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5397, 'Nossa Senhora do Socorro', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5398, 'Pacatuba', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5399, 'Pedra Mole', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5400, 'Pedrinhas', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5401, 'Pinhão', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5402, 'Pirambu', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5403, 'Poço Redondo', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5404, 'Poço Verde', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5405, 'Porto da Folha', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5406, 'Propriá', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5407, 'Riachão do Dantas', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5408, 'Riachuelo', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5409, 'Ribeirópolis', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5410, 'Rosário do Catete', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5411, 'Salgado', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5412, 'Santa Luzia do Itanhy', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5413, 'Santa Rosa de Lima', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5414, 'Santana do São Francisco', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5415, 'Santo Amaro das Brotas', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5416, 'São Cristóvão', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5417, 'São Domingos', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5418, 'São Francisco', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5419, 'São Miguel do Aleixo', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5420, 'Simão Dias', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5421, 'Siriri', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5422, 'Telha', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5423, 'Tobias Barreto', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5424, 'Tomar do Geru', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5425, 'Umbaúba', 25);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5426, 'Abreulândia', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5427, 'Aguiarnópolis', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5428, 'Aliança do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5429, 'Almas', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5430, 'Alvorada', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5431, 'Ananás', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5432, 'Angico', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5433, 'Aparecida do Rio Negro', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5434, 'Aragominas', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5435, 'Araguacema', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5436, 'Araguaçu', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5437, 'Araguaína', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5438, 'Araguanã', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5439, 'Araguatins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5440, 'Arapoema', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5441, 'Arraias', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5442, 'Augustinópolis', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5443, 'Aurora do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5444, 'Axixá do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5445, 'Babaçulândia', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5446, 'Bandeirantes do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5447, 'Barra do Ouro', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5448, 'Barrolândia', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5449, 'Bernardo Sayão', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5450, 'Bom Jesus do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5451, 'Brasilândia do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5452, 'Brejinho de Nazaré', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5453, 'Buriti do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5454, 'Cachoeirinha', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5455, 'Campos Lindos', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5456, 'Cariri do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5457, 'Carmolândia', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5458, 'Carrasco Bonito', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5459, 'Caseara', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5460, 'Centenário', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5461, 'Chapada da Natividade', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5462, 'Chapada de Areia', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5463, 'Colinas do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5464, 'Colméia', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5465, 'Combinado', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5466, 'Conceição do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5467, 'Couto de Magalhães', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5468, 'Cristalândia', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5469, 'Crixás do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5470, 'Darcinópolis', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5471, 'Dianópolis', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5472, 'Divinópolis do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5473, 'Dois Irmãos do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5474, 'Dueré', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5475, 'Esperantina', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5476, 'Fátima', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5477, 'Figueirópolis', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5478, 'Filadélfia', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5479, 'Formoso do Araguaia', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5480, 'Fortaleza do Tabocão', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5481, 'Goianorte', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5482, 'Goiatins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5483, 'Guaraí', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5484, 'Gurupi', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5485, 'Ipueiras', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5486, 'Itacajá', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5487, 'Itaguatins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5488, 'Itapiratins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5489, 'Itaporã do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5490, 'Jaú do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5491, 'Juarina', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5492, 'Lagoa da Confusão', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5493, 'Lagoa do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5494, 'Lajeado', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5495, 'Lavandeira', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5496, 'Lizarda', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5497, 'Luzinópolis', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5498, 'Marianópolis do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5499, 'Mateiros', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5500, 'Maurilândia do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5501, 'Miracema do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5502, 'Miranorte', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5503, 'Monte do Carmo', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5504, 'Monte Santo do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5505, 'Muricilândia', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5506, 'Natividade', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5507, 'Nazaré', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5508, 'Nova Olinda', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5509, 'Nova Rosalândia', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5510, 'Novo Acordo', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5511, 'Novo Alegre', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5512, 'Novo Jardim', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5513, 'Oliveira de Fátima', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5514, 'Palmas', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5515, 'Palmeirante', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5516, 'Palmeiras do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5517, 'Palmeirópolis', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5518, 'Paraíso do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5519, 'Paranã', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5520, 'Pau d`Arco', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5521, 'Pedro Afonso', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5522, 'Peixe', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5523, 'Pequizeiro', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5524, 'Pindorama do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5525, 'Piraquê', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5526, 'Pium', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5527, 'Ponte Alta do Bom Jesus', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5528, 'Ponte Alta do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5529, 'Porto Alegre do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5530, 'Porto Nacional', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5531, 'Praia Norte', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5532, 'Presidente Kennedy', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5533, 'Pugmil', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5534, 'Recursolândia', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5535, 'Riachinho', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5536, 'Rio da Conceição', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5537, 'Rio dos Bois', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5538, 'Rio Sono', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5539, 'Sampaio', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5540, 'Sandolândia', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5541, 'Santa Fé do Araguaia', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5542, 'Santa Maria do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5543, 'Santa Rita do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5544, 'Santa Rosa do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5545, 'Santa Tereza do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5546, 'Santa Terezinha do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5547, 'São Bento do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5548, 'São Félix do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5549, 'São Miguel do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5550, 'São Salvador do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5551, 'São Sebastião do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5552, 'São Valério da Natividade', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5553, 'Silvanópolis', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5554, 'Sítio Novo do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5555, 'Sucupira', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5556, 'Taguatinga', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5557, 'Taipas do Tocantins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5558, 'Talismã', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5559, 'Tocantínia', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5560, 'Tocantinópolis', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5561, 'Tupirama', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5562, 'Tupiratins', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5563, 'Wanderlândia', 27);
INSERT INTO `cidade` (`id`, `cidade`, `id_uf`) VALUES
	(5564, 'Xambioá', 27);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.cliente
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `id_endereco` int(11) unsigned NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `celular` varchar(12) NOT NULL,
  `cpf` int(11) NOT NULL,
  `rg` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_endereco.cliente-endereco.id` (`id_endereco`),
  CONSTRAINT `id_endereco.cliente-endereco.id` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.cliente: ~141 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(2, 'Julio Kaique Barros', 'juliokaiquebarros..juliokaiquebarros@futureteeth.com.br', 6, '1126022849', '11991534608', 2147483647, 410514032);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(3, 'Elias Márcio Cláudio Almada', 'eeliasmarcioclaudioalmada@edbrasil.net', 7, '1135285622', '11999700666', 2147483647, 285008456);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(4, 'Elias Noah Porto', 'eeliasnoahporto@schon.com.br', 8, '1137688623', '11995468640', 2147483647, 413698038);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(5, 'Joaquim Sérgio Enzo Oliveira', 'joaquimsergioenzooliveira__joaquimsergioenzooliveira@iblojas.com.br', 9, '1139574314', '11984103946', 2147483647, 334324324);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(6, 'Rafael João Nelson Vieira', 'rrafaeljoaonelsonvieira@projetochama.com.br', 10, '1128091392', '11987066475', 2147483647, 175374107);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(8, 'Carlos Eduardo Osvaldo Juan Barbosa', 'carloseduardoosvaldojuanbarbosa_@atrix.com.br', 12, '1125565304', '11986137614', 2147483647, 235142141);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(9, 'José Vicente Augusto Vieira', 'jjosevicenteaugustovieira@zf.com', 13, '1137454138', '11991198837', 2147483647, 486526537);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(10, 'Nicolas Otávio Santos', 'nnicolasotaviosantos@transportadoratransdel.com.br', 14, '1139064944', '11993522465', 2147483647, 136747668);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(11, 'Miguel Caleb Ribeiro', 'miguelcalebribeiro_@technicolor.com', 15, '1128736959', '11989210181', 2147483647, 499381233);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(12, 'Bruno João Luiz Brito', 'brunojoaoluizbrito_@solviagens.com', 16, '1136952086', '11992102220', 2147483647, 441394073);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(13, 'Luan Henrique Eduardo da Cunha', 'luanhenriqueeduardodacunha_@aiesec.net', 17, '1127658397', '11984869936', 2147483647, 276043169);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(14, 'André Oliver da Paz', 'aandreoliverdapaz@grupomozue.com.br', 18, '1137304809', '11991960523', 2147483647, 239303118);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(15, 'Gabriel Nicolas Sérgio Pinto', 'gabrielnicolassergiopinto_@pinheiromanaus.com', 19, '1126922405', '11994296293', 2147483647, 452000257);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(16, 'César Henrique José Ferreira', 'cesarhenriquejoseferreira..cesarhenriquejoseferreira@quintadoslagos.com.br', 20, '1138674632', '11992571651', 2147483647, 127660239);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(17, 'Eduardo Carlos Eduardo Aparício', 'eduardocarloseduardoaparicio_@tafeta.com.br', 21, '1128003700', '11999236218', 2147483647, 195470394);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(18, 'Rafael Márcio da Rocha', 'rafaelmarciodarocha-83@amure.com.br', 22, '1129198311', '11982072100', 2147483647, 262766516);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(19, 'Leandro Pedro Thiago Monteiro', 'leandropedrothiagomonteiro-79@jmmarcenaria.com.br', 23, '1139391223', '11982336014', 2147483647, 496425754);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(20, 'Sérgio André Renan Jesus', 'ssergioandrerenanjesus@lifefp.com.br', 24, '1127207366', '11987666526', 2147483647, 149429228);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(21, 'Ian Luiz Martins', 'iianluizmartins@aircominternational.com', 25, '1135234583', '11987274178', 2147483647, 285892022);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(22, 'Thomas Sebastião Victor Gonçalves', 'thomassebastiaovictorgoncalves..thomassebastiaovictorgoncalves@alliancarh.com.br', 26, '1125630647', '11998439028', 2147483647, 288934453);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(23, 'Luís Otávio Paulo Teixeira', 'luisotaviopauloteixeira..luisotaviopauloteixeira@leanclean.com.br', 27, '1126297680', '11996426633', 2147483647, 112133319);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(24, 'Francisco Rafael Anthony Rocha', 'franciscorafaelanthonyrocha__franciscorafaelanthonyrocha@futureteeth.com.br', 28, '1127572704', '11997119277', 2147483647, 271874326);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(25, 'Fábio Kauê da Mata', 'fabiokauedamata..fabiokauedamata@click21.com.br', 29, '1136007205', '11989662056', 2147483647, 128738273);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(26, 'Miguel Isaac Iago Pinto', 'mmiguelisaaciagopinto@mpcnet.com.br', 30, '1129395051', '11985412652', 2147483647, 212585812);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(27, 'Pedro Tiago Almada', 'pedrotiagoalmada-74@cladm.com.br', 31, '1125619385', '11985036407', 2147483647, 295308643);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(28, 'Luan Oliver Gustavo Silveira', 'luanolivergustavosilveira_@renatoseguros.com', 32, '1135927550', '11984521680', 2147483647, 446567292);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(29, 'Mário Bryan Lucas Galvão', 'mariobryanlucasgalvao-83@vcp.com.br', 33, '1126852415', '11981542124', 2147483647, 272616473);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(30, 'Igor Ryan Davi Nascimento', 'igorryandavinascimento__igorryandavinascimento@spires.com.br', 34, '1125154812', '11992980267', 2147483647, 109254491);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(31, 'Benício Alexandre Pietro das Neves', 'benicioalexandrepietrodasneves..benicioalexandrepietrodasneves@parkhotel.com.br', 35, '1138198994', '11989575360', 2147483647, 389699196);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(32, 'Roberto Caleb Jesus', 'rrobertocalebjesus@molsanto.com', 36, '1136361727', '11988694005', 2147483647, 433770454);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(33, 'Victor Sebastião Almada', 'victorsebastiaoalmada-78@megasurgical.com.br', 37, '1128888013', '11993066967', 2147483647, 330554475);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(34, 'Thales Pedro da Cunha', 'thalespedrodacunha_@estruturalbr.com.br', 38, '1135659548', '11996810802', 2147483647, 202352535);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(35, 'Levi Luiz Costa', 'leviluizcosta_@zepto.com.br', 39, '1139182175', '11986635369', 2147483647, 127106388);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(36, 'Tomás Enrico Rodrigues', 'tomasenricorodrigues-72@impactatp.com.br', 40, '1126300422', '11984684093', 2147483647, 471270544);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(37, 'Yago Gael Costa', 'yyagogaelcosta@contabilidadevictoria.com.br', 41, '1138758590', '11998779619', 1162284820, 215849723);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(38, 'Heitor Emanuel Cláudio Nunes', 'heitoremanuelclaudionunes_@hoatmail.com', 42, '1125929599', '11998667715', 2147483647, 265531378);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(39, 'Anthony Martin Rezende', 'anthonymartinrezende_@hotmai.com.br', 43, '1137082307', '11999340523', 2147483647, 372417486);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(40, 'Lucca Kaique Gonçalves', 'luccakaiquegoncalves__luccakaiquegoncalves@yoma.com.br', 44, '1138596473', '11996835766', 2147483647, 293175147);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(41, 'Roberto Marcos Nunes', 'robertomarcosnunes_@amoreencantos.com', 45, '1128396270', '11989319014', 2147483647, 233386919);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(42, 'Benício Lucca Aragão', 'benicioluccaaragao_@scuderiagwr.com.br', 46, '1127879766', '11999268902', 2147483647, 202092318);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(43, 'João Luan Campos', 'jjoaoluancampos@tecsysbrasil.com.br', 47, '1127489258', '11984618320', 2147483647, 493692563);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(44, 'Bryan Enrico Lima', 'bbryanenricolima@valdulion.com.br', 48, '1128623923', '11998086516', 2147483647, 296770164);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(45, 'Caleb Thales Murilo da Rosa', 'ccalebthalesmurilodarosa@unimedrio.com.br', 49, '1137951050', '11989053482', 2147483647, 351140475);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(46, 'Henrique Igor Roberto Drumond', 'henriqueigorrobertodrumond__henriqueigorrobertodrumond@broutdoor.com.br', 50, '1126625631', '11983164494', 2147483647, 126229375);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(47, 'Luís Ian Cauê Freitas', 'luisiancauefreitas-94@zoomfoccus.com.br', 51, '1127721772', '11985863234', 2147483647, 436003077);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(48, 'Elias Juan Brito', 'eliasjuanbrito-90@clinicamedicofacil.com.br', 52, '1139530229', '11989429433', 2147483647, 330789739);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(49, 'Vitor Luan Arthur Moura', 'vitorluanarthurmoura..vitorluanarthurmoura@otlokk.com', 53, '1129709938', '11996753402', 2147483647, 217828735);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(50, 'Daniel Cauê Isaac Brito', 'danielcaueisaacbrito..danielcaueisaacbrito@lbrazil.com.br', 54, '1139951579', '11997442427', 2147483647, 326018414);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(51, 'Yago Lucas Barbosa', 'yagolucasbarbosa..yagolucasbarbosa@ornatopresentes.com.br', 55, '1139841290', '11994429490', 2147483647, 330327902);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(52, 'Rodrigo Kevin Ruan Novaes', 'rodrigokevinruannovaes__rodrigokevinruannovaes@paginacom.com.br', 56, '1128932500', '11991526342', 2147483647, 325491811);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(53, 'Anthony Juan da Paz', 'aanthonyjuandapaz@portoweb.com.br', 57, '1127593826', '11997113638', 2147483647, 303973353);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(54, 'Leonardo José Francisco Moura', 'leonardojosefranciscomoura-93@cladm.com.br', 58, '1126679513', '11985311690', 2147483647, 457177019);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(55, 'Roberto Nicolas Noah Pires', 'robertonicolasnoahpires..robertonicolasnoahpires@imagemeaudio.com.br', 59, '1137742599', '11987687584', 2147483647, 188792922);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(56, 'Luan Kevin da Silva', 'luankevindasilva-93@uol.com.br', 60, '1137082316', '11997164813', 2147483647, 498954158);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(57, 'Alexandre Carlos Ruan Ramos', 'aalexandrecarlosruanramos@selaz.com.br', 61, '1127268221', '11982644311', 2147483647, 216661213);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(58, 'Vinicius André Lopes', 'viniciusandrelopes-95@superativacoop.com.br', 62, '1136804734', '11998090042', 2147483647, 266853171);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(59, 'Bento Renan Elias Melo', 'bentorenaneliasmelo__bentorenaneliasmelo@haldex.com', 63, '1128807306', '11985119748', 2147483647, 422430936);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(60, 'Marcos Oliver Carvalho', 'marcosolivercarvalho__marcosolivercarvalho@facilitycom.com.br', 64, '1125007393', '11991813783', 2147483647, 359045509);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(61, 'Gabriel Antonio Martin Souza', 'gabrielantoniomartinsouza__gabrielantoniomartinsouza@yahooo.com.br', 65, '1125915236', '11995636454', 2147483647, 487981893);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(62, 'Manoel Emanuel Calebe Oliveira', 'manoelemanuelcalebeoliveira-93@oi.com.br', 66, '1126100512', '11984332290', 2147483647, 273555224);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(63, 'Felipe César José da Rosa', 'felipecesarjosedarosa..felipecesarjosedarosa@solucao.adm.br', 67, '1135620383', '11994809525', 2147483647, 207762454);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(64, 'Alexandre Eduardo Melo', 'alexandreeduardomelo-90@lonax.net', 68, '1129686333', '11983825450', 2147483647, 248839858);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(65, 'Manoel Vicente Renato Monteiro', 'manoelvicenterenatomonteiro_@alstom.com', 69, '1125050691', '11993323299', 2147483647, 287323523);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(66, 'Raimundo Giovanni da Mata', 'raimundogiovannidamata..raimundogiovannidamata@tce.am.gov.br', 70, '1128028126', '11993168011', 2147483647, 145743159);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(67, 'Kevin Elias Monteiro', 'kevineliasmonteiro_@midiasim.com.br', 71, '1129373382', '11984184234', 2147483647, 475551072);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(68, 'Leonardo Nicolas Bernardes', 'lleonardonicolasbernardes@caporal.biz', 72, '1126118873', '11983335807', 2147483647, 343872341);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(69, 'Enzo Bernardo Felipe Souza', 'enzobernardofelipesouza-90@vivax.com', 73, '1125529919', '11999144504', 2147483647, 427756819);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(70, 'Theo Gael Campos', 'ttheogaelcampos@acmsaopaulo.org', 74, '1129048441', '11991964947', 2147483647, 458593242);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(71, 'Bryan Ryan da Costa', 'bryanryandacosta__bryanryandacosta@br.atlascopco.com', 75, '1139560098', '11986865079', 2147483647, 232582154);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(72, 'Lucca Paulo Silveira', 'luccapaulosilveira_@prokopetz.com.br', 76, '1128474370', '11988235470', 2147483647, 335153471);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(73, 'Renan André Cauã Assunção', 'renanandrecauaassuncao..renanandrecauaassuncao@mosman.com.br', 77, '1127693715', '11981575422', 2147483647, 389924349);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(74, 'Guilherme Lucas Teixeira', 'guilhermelucasteixeira-71@latapack.com.br', 78, '1138929225', '11985135964', 2147483647, 338275654);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(75, 'Benjamin Giovanni Lorenzo Monteiro', 'benjamingiovannilorenzomonteiro-77@pop.com.br', 79, '1127792999', '11995537037', 2147483647, 388150774);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(76, 'Augusto Gustavo Campos', 'augustogustavocampos_@fazergourmet.com.br', 80, '1128310394', '11992213716', 2147483647, 186705062);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(77, 'Pedro Henrique Otávio Gonçalves', 'pedrohenriqueotaviogoncalves_@6am.com.br', 81, '1128661839', '11993373897', 2147483647, 307442342);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(78, 'Lorenzo Henry Gonçalves', 'lorenzohenrygoncalves-92@ceuazul.ind.br', 82, '1135499159', '11984250504', 2147483647, 501817116);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(79, 'Nathan Thiago Luiz Campos', 'nathanthiagoluizcampos__nathanthiagoluizcampos@audiogeni.com.br', 83, '1138477877', '11985202875', 2147483647, 117426581);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(80, 'Samuel Julio Tomás Farias', 'ssamueljuliotomasfarias@ovale.com.br', 84, '1136837282', '11985685441', 2147483647, 455076789);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(81, 'Julio Erick Miguel Santos', 'julioerickmiguelsantos-77@daruma.com.br', 85, '1137153015', '11983247805', 2147483647, 471663955);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(82, 'Samuel Cauã Nogueira', 'samuelcauanogueira-73@wsiconsultores.com.br', 86, '1139060769', '11981950606', 2147483647, 172945616);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(83, 'Tomás Bryan Pietro Nogueira', 'ttomasbryanpietronogueira@carubelli.com.br', 87, '1129840809', '11981373499', 2147483647, 111179518);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(84, 'Henry Erick Alexandre da Cunha', 'henryerickalexandredacunha..henryerickalexandredacunha@tafeta.com.br', 88, '1127593475', '11987162087', 2147483647, 256656654);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(85, 'Francisco Julio Carlos Eduardo Martins', 'ffranciscojuliocarloseduardomartins@bemarius.com.br', 89, '1138109745', '11985940059', 2147483647, 497345821);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(86, 'Renato Carlos Eduardo Vicente Teixeira', 'renatocarloseduardovicenteteixeira__renatocarloseduardovicenteteixeira@eptv.com.br', 90, '1127025492', '11987426913', 2147483647, 427230469);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(87, 'Antonio Heitor Fernandes', 'antonioheitorfernandes-71@outlock.com', 91, '1139310044', '11997133750', 2147483647, 423946535);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(88, 'Thomas Tiago Gomes', 'thomastiagogomes_@cbsdobrasil.com.br', 92, '1129864968', '11999789640', 2147483647, 451141428);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(89, 'Benedito Vitor Sebastião da Cruz', 'beneditovitorsebastiaodacruz-94@andradecamara.com.br', 93, '1125621692', '11999502865', 1986609871, 436088915);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(90, 'Tomás Kevin Ricardo Barbosa', 'tomaskevinricardobarbosa-83@retrosfessa.com.br', 94, '1129226203', '11987628098', 2147483647, 210266296);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(91, 'Francisco Thales Anthony dos Santos', 'franciscothalesanthonydossantos__franciscothalesanthonydossantos@wnetrj.com.br', 95, '1128069371', '11999785664', 2147483647, 113334734);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(92, 'Matheus Joaquim da Silva', 'matheusjoaquimdasilva..matheusjoaquimdasilva@transportesflores.com.br', 96, '1135223611', '11984990021', 2147483647, 215383825);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(93, 'Bento Sebastião Porto', 'bentosebastiaoporto__bentosebastiaoporto@lencise.com', 97, '1125515384', '11984177710', 2147483647, 126253985);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(94, 'Felipe Victor Peixoto', 'felipevictorpeixoto-97@abrangenciacorretora.com.br', 98, '1136111184', '11989612247', 2147483647, 190502393);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(95, 'Benedito Eduardo Assis', 'beneditoeduardoassis..beneditoeduardoassis@sitran.com.br', 99, '1129157309', '11982784467', 2147483647, 361809335);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(96, 'Cláudio Henrique Oliveira', 'cclaudiohenriqueoliveira@rjnet.com.br', 100, '1136524725', '11994859740', 2147483647, 190348999);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(97, 'Hugo Renan André Oliveira', 'hugorenanandreoliveira__hugorenanandreoliveira@galpaoestofados.com.br', 101, '1128041752', '11994897966', 2147483647, 468072032);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(98, 'Márcio Caleb Leandro Ribeiro', 'mmarciocalebleandroribeiro@isbt.com.br', 102, '1129142953', '11991876924', 2147483647, 386333506);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(99, 'Enrico Yago Moura', 'enricoyagomoura_@ticem.com.br', 103, '1128036469', '11981996970', 2147483647, 466699001);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(100, 'Cauê Pedro Filipe Campos', 'cauepedrofilipecampos_@fictor.com.br', 104, '1128118524', '11995854112', 2147483647, 111153086);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(101, 'Henry Cauã Luan Lima', 'henrycaualuanlima_@agenciaph.com', 105, '1129177348', '11988597237', 2147483647, 256076194);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(102, 'Jorge Bento Arthur Moraes', 'jjorgebentoarthurmoraes@vegacon.com.br', 106, '1135154673', '11984896642', 2147483647, 286571079);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(103, 'Augusto Benjamin Heitor Aragão', 'augustobenjaminheitoraragao_@iacit.com.br', 107, '1126544758', '11984151200', 2147483647, 117423956);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(104, 'Mateus Gael Baptista', 'mmateusgaelbaptista@techdomus.com.br', 108, '1136350826', '11995736425', 2147483647, 457482138);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(105, 'Otávio Thales Gael Fernandes', 'ootaviothalesgaelfernandes@uniara.com.br', 109, '1135985185', '11981840008', 2147483647, 150603186);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(106, 'Danilo Marcos Moreira', 'ddanilomarcosmoreira@viasegbrasil.com.br', 110, '1136680759', '11983001224', 2147483647, 336731991);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(107, 'Marcos Vinicius Antonio Bernardo Silveira', 'mmarcosviniciusantoniobernardosilveira@buzatto.pro', 111, '1125311902', '11997889757', 2147483647, 213196621);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(108, 'Renan Julio Alves', 'renanjulioalves..renanjulioalves@iaru.com.br', 112, '1135276438', '11995240223', 2147483647, 363477007);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(109, 'Murilo Bento Almada', 'mmurilobentoalmada@truran.com.br', 113, '1135011099', '11984341193', 2147483647, 133269024);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(110, 'Matheus Gustavo Cauã Caldeira', 'matheusgustavocauacaldeira_@mtc.eng.br', 114, '1125540698', '11991510968', 2147483647, 389503575);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(111, 'Thomas Rodrigo Pires', 'thomasrodrigopires-98@tvglobo.com.br', 115, '1136586633', '11989673587', 2147483647, 507921793);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(112, 'Nicolas Heitor Novaes', 'nicolasheitornovaes_@reval.net', 116, '1136377576', '11994625035', 2147483647, 397768588);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(113, 'Carlos Benício Heitor Porto', 'carlosbenicioheitorporto_@quimicaindaiatuba.com.br', 117, '1135853118', '11993894673', 2147483647, 455657671);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(114, 'Breno Yuri Benedito Viana', 'brenoyuribeneditoviana..brenoyuribeneditoviana@live.com', 118, '1135128103', '11989972210', 2147483647, 497187917);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(115, 'Lucas Tomás Cavalcanti', 'lucastomascavalcanti-73@alvesbarcelos.com.br', 119, '1127259834', '11998205305', 2147483647, 219011291);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(116, 'Henrique Fábio João Lima', 'henriquefabiojoaolima..henriquefabiojoaolima@klipvirtual.com.br', 120, '1135598364', '11996413769', 2147483647, 254725302);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(117, 'Alexandre Bruno de Paula', 'alexandrebrunodepaula_@ime.unicamp.br', 121, '1127200974', '11984228689', 2147483647, 345222623);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(118, 'Daniel Victor Duarte', 'danielvictorduarte..danielvictorduarte@way2goidiomas.com.br', 122, '1127553429', '11985733537', 2147483647, 292753299);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(119, 'Juan Pedro Henrique Nathan Almeida', 'juanpedrohenriquenathanalmeida-76@knowconsulting.com.br', 123, '1135530862', '11982601373', 2147483647, 286341682);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(120, 'Lucas Igor Fernando da Rocha', 'lucasigorfernandodarocha..lucasigorfernandodarocha@vigaconstrucao.com.br', 124, '1138296391', '11987551978', 2147483647, 213215494);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(121, 'Igor Lucca João Ribeiro', 'igorluccajoaoribeiro..igorluccajoaoribeiro@jeffersonbarroso.com.br', 125, '1139537480', '11998913590', 2147483647, 447054557);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(122, 'Breno Severino Thomas Rezende', 'brenoseverinothomasrezende_@tricoproducts.com.br', 126, '1136800347', '11981252470', 2147483647, 158693449);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(123, 'Enzo Martin Bernardo Vieira', 'eenzomartinbernardovieira@profemme.com.br', 127, '1127846957', '11995883393', 2147483647, 265913767);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(124, 'Antonio Felipe Carvalho', 'antoniofelipecarvalho..antoniofelipecarvalho@aedu.com', 128, '1126680839', '11984810333', 2147483647, 107443867);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(125, 'Luís Raul Ricardo Costa', 'luisraulricardocosta-93@unimedrio.com.br', 129, '1126849983', '11987911490', 2147483647, 402888601);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(126, 'Kauê Thomas Baptista', 'kauethomasbaptista_@academiagolf.com.br', 130, '1136688443', '11994293755', 2147483647, 479631773);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(127, 'Breno Thomas Calebe Jesus', 'brenothomascalebejesus..brenothomascalebejesus@obrativaengenharia.com.br', 131, '1129143599', '11992140976', 2147483647, 417400809);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(128, 'Kevin Vicente Sales', 'kevinvicentesales..kevinvicentesales@vcp.com.br', 132, '1127457957', '11999163348', 2147483647, 183473814);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(129, 'Caio Miguel Kauê Santos', 'ccaiomiguelkauesantos@megamega.com.br', 133, '1139616368', '11989356986', 2147483647, 304732242);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(130, 'Manuel Sérgio da Rosa', 'manuelsergiodarosa..manuelsergiodarosa@riobc.com.br', 134, '1125061118', '11994756890', 2147483647, 358108469);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(131, 'Francisco Bento Cavalcanti', 'franciscobentocavalcanti__franciscobentocavalcanti@inbox.com', 135, '1138974124', '11992521505', 2147483647, 302549626);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(132, 'Leandro Levi Alves', 'lleandrolevialves@redex.com.br', 136, '1139194973', '11996387430', 2147483647, 470926879);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(133, 'Gustavo Thiago da Mota', 'ggustavothiagodamota@ynail.com.br', 137, '1129135493', '11993242722', 2147483647, 428470932);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(134, 'Daniel Lorenzo Porto', 'daniellorenzoporto..daniellorenzoporto@lavorosjc.com.br', 138, '1125990117', '11985996578', 2147483647, 408169588);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(135, 'Gustavo Ryan Nelson Aparício', 'gustavoryannelsonaparicio..gustavoryannelsonaparicio@kascher.com.br', 139, '1139937228', '11991981517', 2147483647, 219220761);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(136, 'Noah Sebastião Assunção', 'noahsebastiaoassuncao..noahsebastiaoassuncao@centrovias.com.br', 140, '1136887893', '11984064317', 2147483647, 113506545);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(137, 'Carlos Benício Erick Nogueira', 'carlosbenicioericknogueira-84@wizardararaquara.com.br', 141, '1136733297', '11995859414', 2147483647, 102291986);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(138, 'Kaique Enrico Farias', 'kkaiqueenricofarias@wsiconsultores.com.br', 142, '1129521359', '11984935924', 2147483647, 237003302);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(139, 'Renan Hugo Nicolas Nogueira', 'renanhugonicolasnogueira-97@sunrise.com.br', 143, '1127456218', '11984652136', 2147483647, 112858648);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(140, 'Carlos Renan Rocha', 'carlosrenanrocha_@escritoriogold.com.br', 144, '1125172311', '11983156718', 2147483647, 200811885);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(141, 'Carlos Eduardo Ruan José Costa', 'carloseduardoruanjosecosta__carloseduardoruanjosecosta@planicoop.com.br', 145, '1138041827', '11999247510', 2147483647, 229788385);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(142, 'Arthur Márcio Assunção', 'arthurmarcioassuncao..arthurmarcioassuncao@ynail.com.br', 146, '1125707335', '11997098822', 2147483647, 447680419);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(143, 'Vinicius Caio Renan Rezende', 'viniciuscaiorenanrezende__viniciuscaiorenanrezende@dep.ufscar.br', 147, '1129778985', '11999414143', 2147483647, 391794577);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(144, 'Thales Enzo Eduardo Moreira', 'thalesenzoeduardomoreira_@owl-ti.com.br', 148, '1137185948', '11994927864', 2147483647, 263876603);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(145, 'Renato Manoel Campos', 'renatomanoelcampos..renatomanoelcampos@alstom.com', 149, '1126644205', '11994600184', 2147483647, 346901182);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(146, 'Severino Thiago Cláudio Gomes', 'severinothiagoclaudiogomes__severinothiagoclaudiogomes@alcoa.com.br', 150, '1139221425', '11985868924', 2147483647, 220717084);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(147, 'Jorge Carlos Luan Fernandes', 'jorgecarlosluanfernandes__jorgecarlosluanfernandes@ctfmgacc.org.br', 151, '1128457021', '11995551230', 2147483647, 237951976);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(148, 'Caio Sérgio Benjamin Pinto', 'caiosergiobenjaminpinto__caiosergiobenjaminpinto@brunofaria.com', 152, '1137116731', '11986302718', 2147483647, 212352623);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(149, 'Breno Samuel Figueiredo', 'bbrenosamuelfigueiredo@damha.com.br', 153, '1135914602', '11991265315', 2147483647, 420280091);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(150, 'Yago Alexandre Thales Martins', 'yagoalexandrethalesmartins__yagoalexandrethalesmartins@terra.com', 154, '1126301451', '11992792840', 1414571801, 459568814);
INSERT INTO `cliente` (`id`, `nome`, `email`, `id_endereco`, `telefone`, `celular`, `cpf`, `rg`) VALUES
	(151, 'Marcos Vinicius Noah da Mota', 'marcosviniciusnoahdamota..marcosviniciusnoahdamota@publiconsult.com.br', 155, '1129961284', '11982934276', 2147483647, 262357719);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.compra
DROP TABLE IF EXISTS `compra`;
CREATE TABLE IF NOT EXISTS `compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mercado` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.compra: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` (`id`, `data`, `mercado`) VALUES
	(1, '2019-04-28 12:48:39', 'Açai Tatuapé');
INSERT INTO `compra` (`id`, `data`, `mercado`) VALUES
	(2, '2019-04-28 12:48:51', 'Atacadão Parque Novo Mundo');
INSERT INTO `compra` (`id`, `data`, `mercado`) VALUES
	(3, '2019-05-19 18:14:45', 'Atacadão Parque Novo Mundo');
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.compra_item
DROP TABLE IF EXISTS `compra_item`;
CREATE TABLE IF NOT EXISTS `compra_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra` int(11) NOT NULL,
  `id_ingrediente` int(11) NOT NULL,
  `embalagem` float(10,2) NOT NULL,
  `valor` float(10,2) NOT NULL,
  `quantidade` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idcompra.itemcompra-ic.compra_idx` (`id_compra`),
  KEY `id_ingrediente.compra_item-ingrediente.id` (`id_ingrediente`),
  CONSTRAINT `id_ingrediente.compra_item-ingrediente.id` FOREIGN KEY (`id_ingrediente`) REFERENCES `ingrediente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idcompra.itemcompra-ic.compra` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.compra_item: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `compra_item` DISABLE KEYS */;
INSERT INTO `compra_item` (`id`, `id_compra`, `id_ingrediente`, `embalagem`, `valor`, `quantidade`) VALUES
	(1, 1, 10, 1000.00, 2.38, 3);
INSERT INTO `compra_item` (`id`, `id_compra`, `id_ingrediente`, `embalagem`, `valor`, `quantidade`) VALUES
	(2, 1, 2, 1000.00, 1.28, 1);
INSERT INTO `compra_item` (`id`, `id_compra`, `id_ingrediente`, `embalagem`, `valor`, `quantidade`) VALUES
	(3, 1, 7, 250.00, 2.35, 5);
INSERT INTO `compra_item` (`id`, `id_compra`, `id_ingrediente`, `embalagem`, `valor`, `quantidade`) VALUES
	(4, 2, 8, 800.00, 4.48, 2);
INSERT INTO `compra_item` (`id`, `id_compra`, `id_ingrediente`, `embalagem`, `valor`, `quantidade`) VALUES
	(5, 2, 5, 1000.00, 2.43, 3);
INSERT INTO `compra_item` (`id`, `id_compra`, `id_ingrediente`, `embalagem`, `valor`, `quantidade`) VALUES
	(6, 2, 4, 12.00, 7.90, 1);
INSERT INTO `compra_item` (`id`, `id_compra`, `id_ingrediente`, `embalagem`, `valor`, `quantidade`) VALUES
	(7, 2, 1, 1000.00, 3.22, 2);
INSERT INTO `compra_item` (`id`, `id_compra`, `id_ingrediente`, `embalagem`, `valor`, `quantidade`) VALUES
	(8, 2, 3, 100.00, 3.56, 2);
INSERT INTO `compra_item` (`id`, `id_compra`, `id_ingrediente`, `embalagem`, `valor`, `quantidade`) VALUES
	(9, 2, 6, 500.00, 8.00, 1);
INSERT INTO `compra_item` (`id`, `id_compra`, `id_ingrediente`, `embalagem`, `valor`, `quantidade`) VALUES
	(10, 3, 1, 1000.00, 3.22, 2);
INSERT INTO `compra_item` (`id`, `id_compra`, `id_ingrediente`, `embalagem`, `valor`, `quantidade`) VALUES
	(11, 3, 3, 100.00, 3.56, 2);
/*!40000 ALTER TABLE `compra_item` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.endereco
DROP TABLE IF EXISTS `endereco`;
CREATE TABLE IF NOT EXISTS `endereco` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_logradouro` int(10) unsigned NOT NULL,
  `cep` mediumint(9) NOT NULL,
  `nome_logradouro` varchar(250) NOT NULL,
  `numero` smallint(6) NOT NULL,
  `complemento` char(50) NOT NULL,
  `id_cidade` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_logradouro.endereco-logradouro.id` (`id_logradouro`),
  KEY `id_cidade.endereco-cidade.id` (`id_cidade`),
  CONSTRAINT `id_cidade.endereco-cidade.id` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_logradouro.endereco-logradouro.id` FOREIGN KEY (`id_logradouro`) REFERENCES `logradouro` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.endereco: ~141 rows (aproximadamente)
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(6, 34, 4890350, 'Christina Schunck Klein', 195, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(7, 34, 5116001, 'Paúva', 254, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(8, 34, 2337000, 'Vaz Muniz', 924, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(9, 34, 4417080, 'Tomé Andrade', 375, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(10, 34, 4462140, 'Engenheiro Flávio da Costa', 343, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(12, 34, 3363090, 'Maria Pedrosa', 140, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(13, 37, 5364180, 'Roque Salvia', 496, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(14, 34, 4852001, 'Olindo de Carvalho', 266, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(15, 34, 4255000, 'São João Clímaco', 456, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(16, 34, 8388607, 'Quinta Sinfonia', 734, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(17, 34, 4475375, 'Francesco Graziani', 367, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(18, 34, 5404005, 'Artur de Azevedo', 453, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(19, 34, 8141040, 'Francisco Matoso', 760, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(20, 34, 3935050, 'Chalé', 966, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(21, 34, 8051330, 'Juan Bona', 840, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(22, 34, 4235365, 'Regularização de Heliópolis', 117, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(23, 34, 8388607, 'Barreiras de Ataide', 847, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(24, 34, 5642040, 'David Gebara', 194, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(25, 34, 8388607, 'Freguesia da Cachoeira', 510, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(26, 29, 5360080, 'Chá da Alegria', 220, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(27, 34, 4463000, 'Jacinta Gomes', 588, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(28, 5, 8388607, 'Professor João Batista Conti', 976, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(29, 34, 4476060, 'Horni', 235, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(30, 34, 3382110, 'João da Rocha Leão', 618, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(31, 34, 8255490, 'Giácomo Quirino', 731, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(32, 34, 2537030, 'Gregório dos Santos', 988, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(33, 5, 1313901, 'Nove de Julho 337', 978, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(34, 34, 2812250, 'Mica', 194, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(35, 34, 3571180, 'Professor Ismael da Silva Júnior', 432, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(36, 34, 3249010, 'São Bento do Trairi', 653, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(37, 34, 5210110, 'Pica-Pau', 777, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(38, 29, 4816080, 'Rangel de Lima', 233, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(39, 34, 2993260, 'Colina do Jaraguá', 742, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(40, 14, 5787000, 'do Campo Limpo', 439, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(41, 44, 5596190, 'B', 715, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(42, 5, 4004906, 'Bernardino de Campos 327', 204, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(43, 34, 2755070, 'Adão Ribeiro', 123, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(44, 34, 3269070, 'José Lourenço Figueiredo', 750, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(45, 34, 4932120, 'Itaquaxiara', 698, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(46, 34, 4813070, 'Manoel Duque de Carvalho', 659, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(47, 34, 4382070, 'Alto do Bonfim', 172, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(48, 34, 4509001, 'Jacques Félix', 899, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(49, 34, 8051010, 'Comarim', 608, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(50, 34, 8151350, 'Anil', 839, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(51, 34, 8388607, 'Maurício Sink', 125, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(52, 34, 5570760, 'Goiás', 358, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(53, 34, 2378045, 'Jabaquara', 792, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(54, 34, 3577060, 'Bálsamo', 633, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(55, 34, 5831090, 'José Ferreira Dantas', 212, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(56, 34, 8373660, 'Valentina', 991, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(57, 34, 8062520, 'El Rey', 760, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(58, 34, 4896390, 'das Hortênsias', 803, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(59, 34, 2019090, 'Júlio Minozzi', 109, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(60, 34, 5634120, 'José Furtado de Mendonça', 464, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(61, 34, 5791080, 'Frei Xisto Teuber', 800, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(62, 34, 8388607, 'Jorge Carlos de Almeida', 652, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(63, 34, 5731360, 'João Calixto', 419, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(64, 34, 4236070, 'Viracopos', 509, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(65, 5, 3725010, 'Alfredo Ribeiro de Castro', 120, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(66, 34, 3934075, 'Peçanha', 946, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(67, 34, 3365050, 'Itanhomi', 370, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(68, 34, 4321900, 'dos Buritis 54', 869, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(69, 34, 8215380, 'Francisco Jannetti', 738, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(70, 34, 2366276, 'Delta do São Francisco', 529, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(71, 34, 2373060, 'Maestro Pedro Jatobá', 909, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(72, 34, 4844470, 'Eanes de Zurara', 818, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(73, 34, 3404130, 'Maracatuba', 911, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(74, 34, 2143030, 'Soldado Jamil Dagli', 890, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(75, 34, 5617130, 'Gino Bruno', 870, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(76, 34, 3212010, 'Serenata', 301, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(77, 34, 2131110, 'Santa Maria Goretti', 757, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(78, 5, 4046400, 'Jabaquara', 605, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(79, 5, 1238904, 'Higienópolis 318', 298, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(80, 5, 4965140, 'dos Funcionários Públicos', 120, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(81, 34, 2934030, 'Antônio Henriques Cardoso', 408, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(82, 34, 4849240, 'Gabriel Pierne', 229, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(83, 34, 8388607, 'José Tito Nabuco', 153, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(84, 34, 4026001, 'Doutor Bacelar', 300, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(85, 5, 8210610, 'David Domingues Ferreira', 172, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(86, 34, 3587070, 'Antônio Lopes', 296, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(87, 34, 5470040, 'Bandim', 927, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(88, 34, 2263080, 'Barreiro da Raiz', 877, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(89, 34, 3284000, 'Anhumas', 685, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(90, 5, 8381001, 'Bento Guelfi', 283, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(91, 34, 4321140, 'dos Capinãs', 165, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(92, 34, 5852460, 'Maestro Marzagão', 100, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(93, 34, 4637130, 'Ana Catharina Randi', 112, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(94, 34, 8151161, 'Manuel Soares de Medeiros', 814, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(95, 34, 8110830, 'Sebastião Pinto Cabral', 417, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(96, 34, 3927270, 'João Guilherme Daddi', 536, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(97, 34, 4709001, 'Bela Vista', 133, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(98, 34, 4853010, 'Vitoriano Aguilar', 241, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(99, 34, 3451100, 'Padre Inácio de Azevedo', 346, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(100, 34, 4832050, 'Jonathan Swift', 165, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(101, 34, 3817170, 'Campo Erê', 930, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(102, 34, 5731410, 'Miguel da Silva', 185, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(103, 34, 1414903, 'Haddock Lobo 403', 762, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(104, 34, 8340320, 'Marcos Gonçalves Correa', 741, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(105, 43, 1033050, 'Santa Ifigênia', 709, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(106, 34, 3710020, 'Tânia Maria', 911, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(107, 34, 2925902, 'Antonieta Leitão 293', 259, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(108, 29, 2612080, 'Júlio Santana', 620, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(109, 34, 4475430, 'Francesco Feo', 408, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(110, 34, 2883080, 'César Pereira das Neves', 645, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(111, 34, 3525030, 'Simão Leitão', 538, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(112, 34, 5224000, 'Cleonice Kammer Di Sandro', 270, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(113, 34, 5876030, 'Chaia Zingerevitz', 335, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(114, 34, 3265010, 'Barlavento', 629, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(115, 34, 3116000, 'do Oratório', 670, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(116, 34, 2951080, 'Alaíde Pereira', 298, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(117, 34, 5729110, 'Canto Bonito', 323, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(118, 44, 2997256, 'dos Humildes', 601, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(119, 5, 2998020, 'Amador Aguiar', 818, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(120, 34, 5761450, 'Otto Koch', 311, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(121, 34, 5626020, 'Grauçá', 503, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(122, 34, 3183100, 'Martins Bonilha', 711, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(123, 37, 3431007, 'Aristides Ávila', 355, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(124, 34, 4321000, 'dos Buritis', 213, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(125, 34, 4776180, 'Ferrúcio Dupré', 787, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(126, 34, 5796120, 'Logrono', 858, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(127, 34, 4678120, 'São Guido', 339, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(128, 34, 4156030, 'Mário Schioppa', 645, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(129, 34, 2244050, 'Guanapus', 235, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(130, 34, 8371160, 'Lorenzo Penna', 725, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(131, 34, 8265210, 'Cachoeira Balbina', 130, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(132, 34, 2765040, 'Vito Osvaldo Saponara', 111, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(133, 34, 4893495, 'Pedro Macroff Filho', 933, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(134, 44, 4858635, 'Pirata', 964, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(135, 34, 5882330, 'Alcaide', 896, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(136, 34, 4895032, 'Joaquim Franco de Toledo', 167, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(137, 34, 1049910, 'João Adolfo 118', 270, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(138, 34, 3216030, 'Santa Maria Madalena', 104, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(139, 34, 4789050, 'Leonel Marques Bernardes', 564, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(140, 34, 3572160, 'Mirapiranga', 298, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(141, 34, 4691170, 'Taguapaca', 708, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(142, 34, 2325510, 'Barreira Branca', 943, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(143, 34, 3694040, 'Estevão Matias dos Santos', 183, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(144, 34, 2186000, 'Cabo Antônio Pinton', 894, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(145, 34, 2051001, 'Amazonas da Silva', 141, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(146, 34, 5359040, 'Diogo do Couto', 948, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(147, 34, 5270040, 'Tupã', 468, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(148, 34, 3811080, 'Reverendo Almir Pereira Bahia', 366, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(149, 34, 5412972, 'João Moura 763', 695, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(150, 34, 2613020, 'dos Piquis', 102, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(151, 34, 4726120, 'Mirandópolis', 993, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(152, 34, 8320370, 'Paulo Nunes Félix', 850, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(153, 34, 4167010, 'Coronel Manuel Soares Neiva', 887, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(154, 34, 5687901, 'Dom Paulo Pedrosa 701', 337, '', 5270);
INSERT INTO `endereco` (`id`, `id_logradouro`, `cep`, `nome_logradouro`, `numero`, `complemento`, `id_cidade`) VALUES
	(155, 34, 2339040, 'Água Comprida', 424, '', 5270);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.entrada
DROP TABLE IF EXISTS `entrada`;
CREATE TABLE IF NOT EXISTS `entrada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_saida` int(11) DEFAULT NULL,
  `id_compra` int(11) NOT NULL,
  `id_item_compra` int(11) NOT NULL,
  `cupom_fiscal` char(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_compra.entrada-id_compra.itemcompra_idx` (`id_compra`),
  KEY `id_item_compra.entrada-id.item_compra` (`id_item_compra`),
  CONSTRAINT `id_compra.entrada-id_compra.itemcompra` FOREIGN KEY (`id_compra`) REFERENCES `compra_item` (`id_compra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_item_compra.entrada-id.item_compra` FOREIGN KEY (`id_item_compra`) REFERENCES `compra_item` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.entrada: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `entrada` DISABLE KEYS */;
INSERT INTO `entrada` (`id`, `id_saida`, `id_compra`, `id_item_compra`, `cupom_fiscal`) VALUES
	(3, NULL, 1, 1, '1000');
INSERT INTO `entrada` (`id`, `id_saida`, `id_compra`, `id_item_compra`, `cupom_fiscal`) VALUES
	(4, NULL, 1, 2, '1000');
INSERT INTO `entrada` (`id`, `id_saida`, `id_compra`, `id_item_compra`, `cupom_fiscal`) VALUES
	(5, NULL, 1, 3, '1000');
INSERT INTO `entrada` (`id`, `id_saida`, `id_compra`, `id_item_compra`, `cupom_fiscal`) VALUES
	(6, NULL, 2, 4, '4000');
INSERT INTO `entrada` (`id`, `id_saida`, `id_compra`, `id_item_compra`, `cupom_fiscal`) VALUES
	(7, NULL, 2, 5, '4000');
INSERT INTO `entrada` (`id`, `id_saida`, `id_compra`, `id_item_compra`, `cupom_fiscal`) VALUES
	(8, NULL, 2, 6, '4000');
INSERT INTO `entrada` (`id`, `id_saida`, `id_compra`, `id_item_compra`, `cupom_fiscal`) VALUES
	(9, NULL, 2, 7, '4000');
INSERT INTO `entrada` (`id`, `id_saida`, `id_compra`, `id_item_compra`, `cupom_fiscal`) VALUES
	(10, NULL, 2, 8, '4000');
INSERT INTO `entrada` (`id`, `id_saida`, `id_compra`, `id_item_compra`, `cupom_fiscal`) VALUES
	(11, NULL, 2, 9, '4000');
/*!40000 ALTER TABLE `entrada` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.entrega
DROP TABLE IF EXISTS `entrega`;
CREATE TABLE IF NOT EXISTS `entrega` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_entrada` int(11) NOT NULL,
  `id_saida` int(11) NOT NULL,
  `quantidade` float(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_entrada.entrega-id-entrada_idx` (`id_entrada`),
  KEY `id_saida.entrega-id.saida_idx` (`id_saida`),
  CONSTRAINT `id_entrada.entrega-id-entrada` FOREIGN KEY (`id_entrada`) REFERENCES `entrada` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_saida.entrega-id.saida` FOREIGN KEY (`id_saida`) REFERENCES `saida` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.entrega: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `entrega` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrega` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.ingrediente
DROP TABLE IF EXISTS `ingrediente`;
CREATE TABLE IF NOT EXISTS `ingrediente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `unidade_medida` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.ingrediente: ~22 rows (aproximadamente)
/*!40000 ALTER TABLE `ingrediente` DISABLE KEYS */;
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(1, 'Farinha', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(2, 'Açucar', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(3, 'Fermento', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(4, 'Ovo', 1);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(5, 'Oleo', 3);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(6, 'Cacau', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(7, 'Condensado', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(8, 'Cr Leite', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(9, 'Tang', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(10, 'Morango', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(11, 'Abacaxi', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(12, 'Paçoca', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(13, 'Coco Ralado', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(14, 'Doce de Leite', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(15, 'Leite em pó', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(16, 'Granulado', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(17, 'Ameixa Cons', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(18, 'Margarina', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(19, 'Embalagem', 1);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(20, 'Brigadeiro', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(21, 'Beijinho', 2);
INSERT INTO `ingrediente` (`id`, `nome`, `unidade_medida`) VALUES
	(22, 'Confete', 2);
/*!40000 ALTER TABLE `ingrediente` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.ingrediente_configuracao
DROP TABLE IF EXISTS `ingrediente_configuracao`;
CREATE TABLE IF NOT EXISTS `ingrediente_configuracao` (
  `id` int(11) NOT NULL,
  `id_ingrediente_parte` int(11) NOT NULL,
  `id_ingradiente` int(11) NOT NULL,
  `quantidade` float(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_ingrediente_parte.ingrdiente_config-id.ingrediente_parte` (`id_ingrediente_parte`),
  KEY `id_ingrediente.ingrediente_configuracao-id.ingrediente` (`id_ingradiente`),
  CONSTRAINT `id_ingrediente.ingrediente_configuracao-id.ingrediente` FOREIGN KEY (`id_ingradiente`) REFERENCES `ingrediente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_ingrediente_parte.ingrdiente_config-id.ingrediente_parte` FOREIGN KEY (`id_ingrediente_parte`) REFERENCES `ingrediente_parte` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.ingrediente_configuracao: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `ingrediente_configuracao` DISABLE KEYS */;
INSERT INTO `ingrediente_configuracao` (`id`, `id_ingrediente_parte`, `id_ingradiente`, `quantidade`) VALUES
	(1, 2, 1, 20.00);
INSERT INTO `ingrediente_configuracao` (`id`, `id_ingrediente_parte`, `id_ingradiente`, `quantidade`) VALUES
	(2, 2, 2, 20.00);
INSERT INTO `ingrediente_configuracao` (`id`, `id_ingrediente_parte`, `id_ingradiente`, `quantidade`) VALUES
	(3, 2, 3, 2.00);
INSERT INTO `ingrediente_configuracao` (`id`, `id_ingrediente_parte`, `id_ingradiente`, `quantidade`) VALUES
	(4, 2, 4, 0.60);
INSERT INTO `ingrediente_configuracao` (`id`, `id_ingrediente_parte`, `id_ingradiente`, `quantidade`) VALUES
	(5, 3, 1, 40.00);
INSERT INTO `ingrediente_configuracao` (`id`, `id_ingrediente_parte`, `id_ingradiente`, `quantidade`) VALUES
	(6, 3, 2, 30.00);
INSERT INTO `ingrediente_configuracao` (`id`, `id_ingrediente_parte`, `id_ingradiente`, `quantidade`) VALUES
	(7, 3, 3, 2.00);
INSERT INTO `ingrediente_configuracao` (`id`, `id_ingrediente_parte`, `id_ingradiente`, `quantidade`) VALUES
	(8, 3, 4, 0.83);
INSERT INTO `ingrediente_configuracao` (`id`, `id_ingrediente_parte`, `id_ingradiente`, `quantidade`) VALUES
	(9, 3, 5, 16.70);
INSERT INTO `ingrediente_configuracao` (`id`, `id_ingrediente_parte`, `id_ingradiente`, `quantidade`) VALUES
	(10, 3, 6, 16.70);
/*!40000 ALTER TABLE `ingrediente_configuracao` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.ingrediente_depreciado
DROP TABLE IF EXISTS `ingrediente_depreciado`;
CREATE TABLE IF NOT EXISTS `ingrediente_depreciado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra_item` int(11) NOT NULL DEFAULT '0',
  `id_saida_disperdicio` int(11) NOT NULL DEFAULT '0',
  `id_ingrediente_depreciado_motivo` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idcompitem.ingredepre-compitem.id` (`id_compra_item`),
  KEY `idsaidadis.ingrdepre-saida_disperdicio.id` (`id_saida_disperdicio`),
  KEY `idingrdepremot.igredepre-ingrdepremot.id` (`id_ingrediente_depreciado_motivo`),
  CONSTRAINT `idcompitem.ingredepre-compitem.id` FOREIGN KEY (`id_compra_item`) REFERENCES `compra_item` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idingrdepremot.igredepre-ingrdepremot.id` FOREIGN KEY (`id_ingrediente_depreciado_motivo`) REFERENCES `ingrediente_depreciado_motivo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idsaidadis.ingrdepre-saida_disperdicio.id` FOREIGN KEY (`id_saida_disperdicio`) REFERENCES `saida_disperdicio` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.ingrediente_depreciado: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ingrediente_depreciado` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingrediente_depreciado` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.ingrediente_depreciado_motivo
DROP TABLE IF EXISTS `ingrediente_depreciado_motivo`;
CREATE TABLE IF NOT EXISTS `ingrediente_depreciado_motivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `motivo` varchar(150) NOT NULL DEFAULT '',
  `descricao` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.ingrediente_depreciado_motivo: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ingrediente_depreciado_motivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingrediente_depreciado_motivo` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.ingrediente_parte
DROP TABLE IF EXISTS `ingrediente_parte`;
CREATE TABLE IF NOT EXISTS `ingrediente_parte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(250) NOT NULL,
  `data_criacao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.ingrediente_parte: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `ingrediente_parte` DISABLE KEYS */;
INSERT INTO `ingrediente_parte` (`id`, `nome`, `descricao`, `data_criacao`) VALUES
	(2, 'Bolo de Pote Massa Branca', '', '2019-05-01 10:41:54');
INSERT INTO `ingrediente_parte` (`id`, `nome`, `descricao`, `data_criacao`) VALUES
	(3, 'Bolo de Pote Massa Escura', '', '2019-05-01 10:42:09');
/*!40000 ALTER TABLE `ingrediente_parte` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.logradouro
DROP TABLE IF EXISTS `logradouro`;
CREATE TABLE IF NOT EXISTS `logradouro` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logradouro` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.logradouro: ~45 rows (aproximadamente)
/*!40000 ALTER TABLE `logradouro` DISABLE KEYS */;
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(2, 'Aeroporto');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(3, 'Alameda');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(4, 'Área');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(5, 'Avenida');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(6, 'Campo');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(7, 'Chácara');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(8, 'Colônia');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(9, 'Condomínio');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(10, 'Conjunto');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(11, 'Distrito');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(12, 'Esplanada');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(13, 'Estação');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(14, 'Estrada');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(15, 'Favela');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(16, 'Fazenda');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(17, 'Feira');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(18, 'Jardim');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(19, 'Ladeira');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(20, 'Lago');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(21, 'Lagoa');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(22, 'Largo');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(23, 'Loteamento');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(24, 'Morro');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(25, 'Núcleo');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(26, 'Parque');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(27, 'Passarela');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(28, 'Pátio');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(29, 'Praça');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(30, 'Quadra');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(31, 'Recanto');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(32, 'Residencial');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(33, 'Rodovia');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(34, 'Rua');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(35, 'Setor');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(36, 'Sítio');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(37, 'Travessa');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(38, 'Trecho');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(39, 'Trevo');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(40, 'Vale');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(41, 'Vereda');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(42, 'Via');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(43, 'Viaduto');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(44, 'Viela');
INSERT INTO `logradouro` (`id`, `logradouro`) VALUES
	(45, 'Vila');
/*!40000 ALTER TABLE `logradouro` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.pedido
DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.pedido: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.pedidos_itens
DROP TABLE IF EXISTS `pedidos_itens`;
CREATE TABLE IF NOT EXISTS `pedidos_itens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_manufaturado` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idmanufat.pedidositens-manufat.id_idx` (`id_manufaturado`),
  KEY `fk_pedidos_itens_pedido1_idx` (`id_pedido`),
  CONSTRAINT `fk_pedidos_itens_pedido1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idmanufat.pedidositens-manufat.id` FOREIGN KEY (`id_manufaturado`) REFERENCES `produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.pedidos_itens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pedidos_itens` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidos_itens` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.pedido_preparacao_produto
DROP TABLE IF EXISTS `pedido_preparacao_produto`;
CREATE TABLE IF NOT EXISTS `pedido_preparacao_produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL DEFAULT '0',
  `quantidade_produto` smallint(6) DEFAULT '0',
  `data_pedido` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id_produto.pedido_preparacao_produto-produto.id` (`id_produto`),
  CONSTRAINT `id_produto.pedido_preparacao_produto-produto.id` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.pedido_preparacao_produto: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `pedido_preparacao_produto` DISABLE KEYS */;
INSERT INTO `pedido_preparacao_produto` (`id`, `id_produto`, `quantidade_produto`, `data_pedido`) VALUES
	(1, 4, 5, '2019-05-19 13:35:50');
INSERT INTO `pedido_preparacao_produto` (`id`, `id_produto`, `quantidade_produto`, `data_pedido`) VALUES
	(2, 2, 6, '2019-05-19 13:36:04');
/*!40000 ALTER TABLE `pedido_preparacao_produto` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.pedido_reposicao_ingrediente
DROP TABLE IF EXISTS `pedido_reposicao_ingrediente`;
CREATE TABLE IF NOT EXISTS `pedido_reposicao_ingrediente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_pedido` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.pedido_reposicao_ingrediente: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `pedido_reposicao_ingrediente` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_reposicao_ingrediente` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.preparacao_ingrediente
DROP TABLE IF EXISTS `preparacao_ingrediente`;
CREATE TABLE IF NOT EXISTS `preparacao_ingrediente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pedido_preparacao_produto` int(11) NOT NULL DEFAULT '0',
  `id_pedido_reposicao_ingrediente` int(11) DEFAULT NULL,
  `id_ingrediente` int(11) DEFAULT NULL,
  `quantidade_ingrediente` float(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `idpedpreprod.prepingr-pedpreppro.id` (`id_pedido_preparacao_produto`),
  KEY `idpedrepingr.prepingr-pedrepingr.id` (`id_pedido_reposicao_ingrediente`),
  KEY `idingr.prepingr-ingrediente.id` (`id_ingrediente`),
  CONSTRAINT `idingr.prepingr-ingrediente.id` FOREIGN KEY (`id_ingrediente`) REFERENCES `ingrediente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idpedpreprod.prepingr-pedpreppro.id` FOREIGN KEY (`id_pedido_preparacao_produto`) REFERENCES `pedido_preparacao_produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.preparacao_ingrediente: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `preparacao_ingrediente` DISABLE KEYS */;
INSERT INTO `preparacao_ingrediente` (`id`, `id_pedido_preparacao_produto`, `id_pedido_reposicao_ingrediente`, `id_ingrediente`, `quantidade_ingrediente`) VALUES
	(7, 2, NULL, 1, 120.00);
INSERT INTO `preparacao_ingrediente` (`id`, `id_pedido_preparacao_produto`, `id_pedido_reposicao_ingrediente`, `id_ingrediente`, `quantidade_ingrediente`) VALUES
	(8, 2, NULL, 2, 120.00);
INSERT INTO `preparacao_ingrediente` (`id`, `id_pedido_preparacao_produto`, `id_pedido_reposicao_ingrediente`, `id_ingrediente`, `quantidade_ingrediente`) VALUES
	(9, 2, NULL, 3, 12.00);
INSERT INTO `preparacao_ingrediente` (`id`, `id_pedido_preparacao_produto`, `id_pedido_reposicao_ingrediente`, `id_ingrediente`, `quantidade_ingrediente`) VALUES
	(10, 2, NULL, 4, 3.60);
INSERT INTO `preparacao_ingrediente` (`id`, `id_pedido_preparacao_produto`, `id_pedido_reposicao_ingrediente`, `id_ingrediente`, `quantidade_ingrediente`) VALUES
	(11, 1, NULL, 1, 200.00);
INSERT INTO `preparacao_ingrediente` (`id`, `id_pedido_preparacao_produto`, `id_pedido_reposicao_ingrediente`, `id_ingrediente`, `quantidade_ingrediente`) VALUES
	(12, 1, NULL, 2, 150.00);
INSERT INTO `preparacao_ingrediente` (`id`, `id_pedido_preparacao_produto`, `id_pedido_reposicao_ingrediente`, `id_ingrediente`, `quantidade_ingrediente`) VALUES
	(13, 1, NULL, 3, 10.00);
INSERT INTO `preparacao_ingrediente` (`id`, `id_pedido_preparacao_produto`, `id_pedido_reposicao_ingrediente`, `id_ingrediente`, `quantidade_ingrediente`) VALUES
	(14, 1, NULL, 4, 4.15);
INSERT INTO `preparacao_ingrediente` (`id`, `id_pedido_preparacao_produto`, `id_pedido_reposicao_ingrediente`, `id_ingrediente`, `quantidade_ingrediente`) VALUES
	(15, 1, NULL, 5, 83.50);
INSERT INTO `preparacao_ingrediente` (`id`, `id_pedido_preparacao_produto`, `id_pedido_reposicao_ingrediente`, `id_ingrediente`, `quantidade_ingrediente`) VALUES
	(16, 1, NULL, 6, 83.50);
/*!40000 ALTER TABLE `preparacao_ingrediente` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.produto
DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `valor_venda` float(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.produto: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` (`id`, `nome`, `valor_venda`) VALUES
	(1, 'Abacaxi', 5.00);
INSERT INTO `produto` (`id`, `nome`, `valor_venda`) VALUES
	(2, 'Morango', 5.00);
INSERT INTO `produto` (`id`, `nome`, `valor_venda`) VALUES
	(3, 'Sensação', 5.00);
INSERT INTO `produto` (`id`, `nome`, `valor_venda`) VALUES
	(4, 'Brigadeiro', 5.00);
INSERT INTO `produto` (`id`, `nome`, `valor_venda`) VALUES
	(5, 'Beijinho', 5.00);
INSERT INTO `produto` (`id`, `nome`, `valor_venda`) VALUES
	(6, 'Prestígio', 5.00);
INSERT INTO `produto` (`id`, `nome`, `valor_venda`) VALUES
	(7, 'Ninho', 5.00);
INSERT INTO `produto` (`id`, `nome`, `valor_venda`) VALUES
	(8, 'Limão', 5.00);
INSERT INTO `produto` (`id`, `nome`, `valor_venda`) VALUES
	(9, 'Doce Leite ameixa', 5.00);
INSERT INTO `produto` (`id`, `nome`, `valor_venda`) VALUES
	(10, 'Paçoca', 5.00);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.produto_ingrediente_parte
DROP TABLE IF EXISTS `produto_ingrediente_parte`;
CREATE TABLE IF NOT EXISTS `produto_ingrediente_parte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `id_ingrediente_parte` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `manufaturadiid.ingredimanufat-id.manufat_idx` (`id_produto`),
  KEY `ingredientid.ingredimanufat-id-ingrediente_idx` (`id_ingrediente_parte`),
  CONSTRAINT `id_ingrediente_parte.produto_ingr_parte-id.ingr_parte` FOREIGN KEY (`id_ingrediente_parte`) REFERENCES `ingrediente_parte` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_produto.produto_ingr_parte-id.produto` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.produto_ingrediente_parte: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `produto_ingrediente_parte` DISABLE KEYS */;
INSERT INTO `produto_ingrediente_parte` (`id`, `id_produto`, `id_ingrediente_parte`) VALUES
	(1, 1, 2);
INSERT INTO `produto_ingrediente_parte` (`id`, `id_produto`, `id_ingrediente_parte`) VALUES
	(2, 2, 2);
INSERT INTO `produto_ingrediente_parte` (`id`, `id_produto`, `id_ingrediente_parte`) VALUES
	(3, 4, 3);
/*!40000 ALTER TABLE `produto_ingrediente_parte` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.saida
DROP TABLE IF EXISTS `saida`;
CREATE TABLE IF NOT EXISTS `saida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classificacao_saida` char(1) NOT NULL DEFAULT '',
  `id_preparacao_ingrediente` int(11) DEFAULT NULL,
  `id_ingrediente_depreciado` int(11) DEFAULT NULL,
  `id_entrada` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idingrdepre.saida-ingrdepr.id` (`id_ingrediente_depreciado`),
  KEY `idprepingre.saida-prepingre.id` (`id_preparacao_ingrediente`),
  KEY `id_entrada.saida-entrada.id` (`id_entrada`),
  CONSTRAINT `id_entrada.saida-entrada.id` FOREIGN KEY (`id_entrada`) REFERENCES `entrada` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idingrdepre.saida-ingrdepr.id` FOREIGN KEY (`id_ingrediente_depreciado`) REFERENCES `ingrediente_depreciado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idprepingre.saida-prepingre.id` FOREIGN KEY (`id_preparacao_ingrediente`) REFERENCES `preparacao_ingrediente` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.saida: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `saida` DISABLE KEYS */;
INSERT INTO `saida` (`id`, `classificacao_saida`, `id_preparacao_ingrediente`, `id_ingrediente_depreciado`, `id_entrada`) VALUES
	(1, 'P', 11, NULL, 9);
INSERT INTO `saida` (`id`, `classificacao_saida`, `id_preparacao_ingrediente`, `id_ingrediente_depreciado`, `id_entrada`) VALUES
	(2, 'P', 12, NULL, 4);
INSERT INTO `saida` (`id`, `classificacao_saida`, `id_preparacao_ingrediente`, `id_ingrediente_depreciado`, `id_entrada`) VALUES
	(3, 'P', 13, NULL, 10);
INSERT INTO `saida` (`id`, `classificacao_saida`, `id_preparacao_ingrediente`, `id_ingrediente_depreciado`, `id_entrada`) VALUES
	(4, 'P', 14, NULL, 8);
INSERT INTO `saida` (`id`, `classificacao_saida`, `id_preparacao_ingrediente`, `id_ingrediente_depreciado`, `id_entrada`) VALUES
	(5, 'P', 15, NULL, 7);
INSERT INTO `saida` (`id`, `classificacao_saida`, `id_preparacao_ingrediente`, `id_ingrediente_depreciado`, `id_entrada`) VALUES
	(6, 'P', 16, NULL, 11);
INSERT INTO `saida` (`id`, `classificacao_saida`, `id_preparacao_ingrediente`, `id_ingrediente_depreciado`, `id_entrada`) VALUES
	(7, 'P', 7, NULL, 9);
INSERT INTO `saida` (`id`, `classificacao_saida`, `id_preparacao_ingrediente`, `id_ingrediente_depreciado`, `id_entrada`) VALUES
	(8, 'P', 8, NULL, 4);
INSERT INTO `saida` (`id`, `classificacao_saida`, `id_preparacao_ingrediente`, `id_ingrediente_depreciado`, `id_entrada`) VALUES
	(9, 'P', 9, NULL, 10);
INSERT INTO `saida` (`id`, `classificacao_saida`, `id_preparacao_ingrediente`, `id_ingrediente_depreciado`, `id_entrada`) VALUES
	(10, 'P', 10, NULL, 8);
/*!40000 ALTER TABLE `saida` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.saida_disperdicio
DROP TABLE IF EXISTS `saida_disperdicio`;
CREATE TABLE IF NOT EXISTS `saida_disperdicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_saida` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.saida_disperdicio: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `saida_disperdicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `saida_disperdicio` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.uf
DROP TABLE IF EXISTS `uf`;
CREATE TABLE IF NOT EXISTS `uf` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `estado` char(100) NOT NULL,
  `uf` char(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.uf: ~27 rows (aproximadamente)
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(1, 'Acre', 'AC');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(2, 'Alagoas', 'AL');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(3, 'Amazonas', 'AM');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(4, 'Amapá', 'AP');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(5, 'Bahia', 'BA');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(6, 'Ceará', 'CE');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(7, 'Distrito Federal', 'DF');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(8, 'Espírito Santo', 'ES');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(9, 'Goiás', 'GO');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(10, 'Maranhão', 'MA');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(11, 'Minas Gerais', 'MG');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(12, 'Mato Grosso do Sul', 'MS');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(13, 'Mato Grosso', 'MT');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(14, 'Pará', 'PA');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(15, 'Paraíba', 'PB');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(16, 'Pernambuco', 'PE');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(17, 'Piauí', 'PI');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(18, 'Paraná', 'PR');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(19, 'Rio de Janeiro', 'RJ');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(20, 'Rio Grande do Norte', 'RN');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(21, 'Rondônia', 'RO');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(22, 'Roraima', 'RR');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(23, 'Rio Grande do Sul', 'RS');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(24, 'Santa Catarina', 'SC');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(25, 'Sergipe', 'SE');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(26, 'São Paulo', 'SP');
INSERT INTO `uf` (`id`, `estado`, `uf`) VALUES
	(27, 'Tocantins', 'TO');
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.unidade_medida
DROP TABLE IF EXISTS `unidade_medida`;
CREATE TABLE IF NOT EXISTS `unidade_medida` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.unidade_medida: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `unidade_medida` DISABLE KEYS */;
INSERT INTO `unidade_medida` (`id`, `nome`) VALUES
	(1, 'un');
INSERT INTO `unidade_medida` (`id`, `nome`) VALUES
	(2, 'g');
INSERT INTO `unidade_medida` (`id`, `nome`) VALUES
	(3, 'ml');
/*!40000 ALTER TABLE `unidade_medida` ENABLE KEYS */;

-- Copiando estrutura para tabela laribolo.usuario
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` mediumtext NOT NULL,
  `rg` mediumtext NOT NULL,
  `data_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela laribolo.usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
