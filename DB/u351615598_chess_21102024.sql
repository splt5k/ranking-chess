/*
 Navicat Premium Dump SQL

 Source Server         : chess hostinger
 Source Server Type    : MySQL
 Source Server Version : 101109 (10.11.9-MariaDB)
 Source Host           : srv880.hstgr.io:3306
 Source Schema         : u351615598_chess

 Target Server Type    : MySQL
 Target Server Version : 101109 (10.11.9-MariaDB)
 File Encoding         : 65001

 Date: 21/10/2024 16:23:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_atletas
-- ----------------------------
DROP TABLE IF EXISTS `t_atletas`;
CREATE TABLE `t_atletas`  (
  `a_index` int NOT NULL AUTO_INCREMENT,
  `a_enable` int NULL DEFAULT 1,
  `a_rating_inicial` int NULL DEFAULT 0,
  `a_nick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a_rating_atual` int NULL DEFAULT 0,
  `a_vitorias` float NULL DEFAULT 0,
  `a_buc1` float NULL DEFAULT 0,
  `a_data_nascimento` date NULL DEFAULT NULL,
  `a_confronto_direto` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`a_index`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_atletas
-- ----------------------------
INSERT INTO `t_atletas` VALUES (1, 0, 1800, 'Alisson Willian ', 1755, 12, 15, '2010-05-08', 0);
INSERT INTO `t_atletas` VALUES (2, 1, 1880, 'Alvaro Barbosa ', 2046, 21.5, 20.5, '1991-09-01', 0);
INSERT INTO `t_atletas` VALUES (3, 0, 1800, 'Ariel Zanardi', 1780, 8, 12, '2006-07-20', 0);
INSERT INTO `t_atletas` VALUES (4, 1, 1780, 'Arthur Andre ', 1843, 16.5, 18, '2015-01-15', 0);
INSERT INTO `t_atletas` VALUES (5, 0, 1840, 'Benedito Pinheiro', 1789, 11.5, 16.5, '2007-10-11', 0);
INSERT INTO `t_atletas` VALUES (6, 1, 1760, 'Bernardo Mastrocola ', 1793, 12.5, 19, '2014-06-11', 0);
INSERT INTO `t_atletas` VALUES (7, 1, 1840, 'Bruno Borges', 1952, 16.5, 19.5, '2002-11-26', 0);
INSERT INTO `t_atletas` VALUES (8, 1, 1800, 'Davi Lisboa ', 1849, 15.5, 14.5, '2014-07-18', 0);
INSERT INTO `t_atletas` VALUES (9, 1, 1760, 'Diogo Zago', 1894, 13, 18.5, '2012-08-23', 0);
INSERT INTO `t_atletas` VALUES (10, 0, 1800, 'Djonatta Mumbach ', 1872, 13, 19.5, '1993-04-22', 0);
INSERT INTO `t_atletas` VALUES (11, 1, 1760, 'Eloi Rasch', 1756, 9.5, 15, '1983-08-12', 0);
INSERT INTO `t_atletas` VALUES (12, 1, 1800, 'Enzo Gabriel ', 1807, 14, 13.5, '2012-12-07', 0);
INSERT INTO `t_atletas` VALUES (13, 1, 1760, 'Guinter Rasch', 1675, 11, 14, '2013-11-11', 0);
INSERT INTO `t_atletas` VALUES (14, 1, 1760, 'Gustavo Meireles ', 1798, 10.5, 13, '2015-09-01', 0);
INSERT INTO `t_atletas` VALUES (15, 0, 1680, 'Heloisa Gabriela', 1612, 1, 13.5, '2013-06-13', 0);
INSERT INTO `t_atletas` VALUES (16, 0, 1760, 'Hitalo Dias', 1760, 8, 16, '2011-08-23', 0);
INSERT INTO `t_atletas` VALUES (17, 1, 1880, 'Hugo Guilherme ', 1998, 21, 19, '1993-07-11', 0);
INSERT INTO `t_atletas` VALUES (18, 1, 1860, 'João Gustavo ', 1894, 17, 21, '2009-02-14', 0);
INSERT INTO `t_atletas` VALUES (19, 1, 1720, 'Julia Ceolin', 1706, 12, 14, '2014-12-13', 0);
INSERT INTO `t_atletas` VALUES (20, 1, 1800, 'Larissa Manuela ', 1808, 16, 18, '2008-06-10', 0);
INSERT INTO `t_atletas` VALUES (21, 1, 1920, 'Lazaro Thiago ', 2109, 24, 21, '1989-08-11', 0);
INSERT INTO `t_atletas` VALUES (22, 1, 1840, 'Leonardo Ricieri', 1858, 12, 17.5, '2006-03-17', 0);
INSERT INTO `t_atletas` VALUES (23, 1, 1860, 'Lucas Zago', 1923, 18.5, 16.5, '1998-11-19', 0);
INSERT INTO `t_atletas` VALUES (24, 1, 1840, 'Lucas Franco ', 1940, 16.5, 17, '2012-01-18', 0);
INSERT INTO `t_atletas` VALUES (25, 1, 1840, 'Ludimar Costa', 1993, 19, 21.5, '1989-03-15', 0);
INSERT INTO `t_atletas` VALUES (26, 1, 1820, 'Maria Fernanda ', 1811, 13.5, 16.5, '2011-01-10', 0);
INSERT INTO `t_atletas` VALUES (27, 1, 1800, 'Murilo Carlos ', 1875, 14, 16.5, '1995-02-06', 0);
INSERT INTO `t_atletas` VALUES (28, 1, 1820, 'Paulo Henrique ', 1916, 17.5, 17.5, '2008-05-20', 0);
INSERT INTO `t_atletas` VALUES (29, 1, 1720, 'Pedro Kummer', 1757, 9, 11, '2012-07-12', 0);
INSERT INTO `t_atletas` VALUES (30, 1, 1800, 'Pedro Otavio ', 1831, 15.5, 16, '2010-03-15', 0);
INSERT INTO `t_atletas` VALUES (31, 1, 1800, 'Phablo Ferreira', 1965, 19, 15.5, '2006-05-12', 0);
INSERT INTO `t_atletas` VALUES (32, 0, 1720, 'Rayldo Santos', 1675, 3, 14.5, '1978-09-20', 0);
INSERT INTO `t_atletas` VALUES (33, 1, 1800, 'Thales Rovedder', 1890, 15, 18.5, '2010-04-12', 0);
INSERT INTO `t_atletas` VALUES (34, 1, 1840, 'Thiago Felipe ', 1865, 12, 22, '2008-08-26', 0);
INSERT INTO `t_atletas` VALUES (35, 0, 1760, 'Thiago Dias', 1720, 7, 11.5, '2009-10-10', 0);
INSERT INTO `t_atletas` VALUES (36, 1, 1780, 'Valentina Said', 1658, 8, 17.5, '2012-03-17', 0);
INSERT INTO `t_atletas` VALUES (37, 1, 1867, 'Celso Faria ', 2065, 19, 14, '1984-07-01', 0);
INSERT INTO `t_atletas` VALUES (38, 1, 1867, 'Cezar Augusto ', 1953, 13.5, 12.5, '2003-09-10', 0);
INSERT INTO `t_atletas` VALUES (39, 0, 1715, 'Davi Gabriel ', 1714, 4, 6.5, '2014-03-21', 0);
INSERT INTO `t_atletas` VALUES (40, 1, 1807, 'Eduardo Kaniesk', 1903, 13.5, 12.5, '1987-05-14', 0);
INSERT INTO `t_atletas` VALUES (41, 1, 1787, 'Eduardo Peixoto', 1881, 12.5, 12, '1957-02-13', 0);
INSERT INTO `t_atletas` VALUES (42, 0, 1807, 'Ícaro Benicio ', 1729, 2.5, 9, '2011-11-18', 0);
INSERT INTO `t_atletas` VALUES (43, 0, 1787, 'Miguel Faria', 1749, 3.5, 12.5, '2013-10-17', 0);
INSERT INTO `t_atletas` VALUES (44, 1, 1747, 'Virginia Mastrocola', 1724, 6, 7, '1987-06-27', 0);
INSERT INTO `t_atletas` VALUES (45, 1, 1802, 'Gabriella Silva', 1773, 6, 8.5, '2011-09-23', 0);
INSERT INTO `t_atletas` VALUES (46, 0, 1842, 'Charles Henrique', 1645, 3, 10.5, '2009-06-22', 0);
INSERT INTO `t_atletas` VALUES (47, 1, 1802, 'Rodrigo Freitas', 1801, 6.5, 11, '2006-05-03', 0);
INSERT INTO `t_atletas` VALUES (48, 1, 1782, 'Heloisa Siqueira', 1762, 5.5, 9, '2009-09-26', 0);
INSERT INTO `t_atletas` VALUES (49, 1, 1782, 'Manuela Prado', 1716, 4, 11, '2015-11-04', 0);
INSERT INTO `t_atletas` VALUES (50, 1, 1782, 'Gustavo Prado', 1761, 7, 12, '2015-05-07', 0);
INSERT INTO `t_atletas` VALUES (51, 1, 1782, 'Arthur Jorge', 1662, 1.5, 9.5, '2013-05-06', 0);
INSERT INTO `t_atletas` VALUES (52, 1, 1762, 'Kaique Adrian', 1804, 6, 10, '2013-05-25', 0);
INSERT INTO `t_atletas` VALUES (53, 1, 1782, 'Ana Larissa', 1793, 8.5, 7, '2011-01-11', 0);
INSERT INTO `t_atletas` VALUES (54, 1, 1764, 'Ruan Pablo', 1727, 4.5, 12, '2017-04-22', 0);
INSERT INTO `t_atletas` VALUES (55, 1, 1802, 'Angelo Gustavo', 1732, 4, 13, '2006-10-12', 0);
INSERT INTO `t_atletas` VALUES (56, 1, 1802, 'Pedro Jorge', 1785, 6.5, 10, '2012-08-10', 0);
INSERT INTO `t_atletas` VALUES (57, 1, 1802, 'Arthur Gabriel', 1701, 4.5, 9.5, '2011-09-01', 0);
INSERT INTO `t_atletas` VALUES (58, 1, 1822, 'Izabela Melo', 1840, 7.5, 9.5, '2009-07-07', 0);
INSERT INTO `t_atletas` VALUES (59, 0, 1802, 'Luiz Mauro', 1764, 2, 14, '1998-03-06', 0);
INSERT INTO `t_atletas` VALUES (60, 1, 1804, 'Emilly Lessa', 1845, 6, 9.5, '2009-03-13', 0);
INSERT INTO `t_atletas` VALUES (61, 1, 1824, 'Isac Araujo', 1805, 5, 10.5, '2014-12-15', 0);
INSERT INTO `t_atletas` VALUES (62, 1, 1784, 'Enzo Barbosa', 1846, 6.5, 11.5, '2016-10-25', 0);
INSERT INTO `t_atletas` VALUES (63, 1, 1824, 'João Gabriel', 1725, 3, 11, '2012-05-28', 0);
INSERT INTO `t_atletas` VALUES (64, 1, 1744, 'Ryllan Gonçalves', 1746, 3, 7, '2012-03-11', 0);

-- ----------------------------
-- Table structure for t_confrontos
-- ----------------------------
DROP TABLE IF EXISTS `t_confrontos`;
CREATE TABLE `t_confrontos`  (
  `a_index` int NOT NULL AUTO_INCREMENT,
  `a_desafiado` int NULL DEFAULT NULL,
  `a_desafiado_rating` int NULL DEFAULT NULL,
  `a_desafiado_pontos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a_desafiante` int NULL DEFAULT NULL,
  `a_desafiante_rating` int NULL DEFAULT NULL,
  `a_desafiante_pontos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a_resultado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a_data` date NULL DEFAULT NULL,
  `a_data_update` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`a_index`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 386 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_confrontos
-- ----------------------------
INSERT INTO `t_confrontos` VALUES (1, 26, 1820, '-21', 10, 1800, '+21', 'desafiante', '2024-03-08', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (2, 25, 1840, '+20', 7, 1840, '-20', 'desafiado', '2024-03-05', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (3, 21, 1920, '+18', 2, 1880, '-18', 'desafiado', '2024-03-14', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (4, 17, 1880, '+19', 18, 1860, '-19', 'desafiado', '2024-03-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (5, 23, 1860, '-21', 34, 1840, '+21', 'desafiante', '2024-03-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (6, 22, 1840, '+20', 24, 1840, '-20', 'desafiado', '2024-03-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (7, 5, 1840, '-21', 28, 1820, '+21', 'desafiante', '2024-03-11', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (8, 33, 1800, '+20', 20, 1800, '-20', 'desafiado', '2024-03-12', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (9, 27, 1800, '+20', 30, 1800, '-20', 'desafiado', '2024-03-11', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (10, 31, 1800, '-20', 1, 1800, '+20', 'desafiante', '2024-03-11', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (11, 8, 1800, '+20', 12, 1800, '-20', 'desafiado', '2024-03-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (12, 3, 1800, '+19', 4, 1780, '-19', 'desafiado', '2024-03-11', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (13, 36, 1780, '-21', 6, 1760, '+21', 'desafiante', '2024-03-11', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (14, 9, 1760, '-20', 16, 1760, '+20', 'desafiante', '2024-03-07', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (15, 11, 1760, '+20', 13, 1760, '-20', 'desafiado', '2024-03-11', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (16, 14, 1760, '+20', 35, 1760, '-20', 'desafiado', '2024-03-12', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (17, 32, 1720, '-20', 19, 1720, '+20', 'desafiante', '2024-03-14', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (18, 29, 1720, '+18', 15, 1680, '-18', 'desafiado', '2024-03-14', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (19, 21, 2014, '+16', 17, 1944, '-16', 'desafiado', '2024-03-26', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (20, 2, 1919, '+17', 34, 1861, '-17', 'desafiado', '2024-03-28', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (21, 25, 1860, '+20', 22, 1860, '-20', 'desafiado', '2024-03-22', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (22, 18, 1841, '+20', 28, 1841, '-20', 'desafiado', '2024-03-22', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (23, 23, 1839, '-21', 10, 1821, '+21', 'desafiante', '2024-03-18', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (24, 7, 1841, '+20', 33, 1834, '-20', 'desafiado', '2024-03-26', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (25, 24, 1836, '-21', 27, 1820, '+21', 'desafiante', '2024-03-27', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (26, 1, 1820, '+20', 8, 1820, '-20', 'desafiado', '2024-03-22', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (27, 5, 1819, '+20', 3, 1819, '-20', 'desafiado', '2024-03-22', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (28, 26, 1799, '+19', 6, 1781, '-19', 'desafiado', '2024-03-19', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (29, 20, 1780, '+20', 16, 1780, '-20', 'desafiado', '2024-03-31', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (30, 30, 1780, '0', 31, 1780, '0', 'empate', '2024-03-25', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (31, 11, 1780, '+17', 12, 1729, '-17', 'desafiado', '2024-03-25', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (32, 14, 1780, '-21', 4, 1761, '+21', 'desafiante', '2024-03-26', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (33, 36, 1759, '+19', 9, 1740, '-19', 'desafiado', '2024-03-31', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (34, 19, 1716, '+22', 13, 1758, '-22', 'desafiado', '2024-03-27', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (35, 35, 1740, '+20', 29, 1738, '-20', 'desafiado', '2024-03-31', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (36, 32, 1700, '+18', 15, 1662, '-18', 'desafiado', '2024-03-31', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (37, 17, 1928, '-20', 25, 1920, '+20', 'desafiante', '2024-04-01', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (38, 21, 2030, '+15', 2, 1936, '-15', 'desafiado', '2024-04-10', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (39, 5, 1890, '-21', 37, 1869, '+21', 'desafiante', '2024-04-09', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (40, 38, 1869, '-20', 18, 1863, '+20', 'desafiante', '2024-04-09', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (41, 7, 1861, '+20', 10, 1859, '-20', 'desafiado', '2024-04-04', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (42, 1, 1855, '+19', 34, 1844, '-19', 'desafiado', '2024-04-05', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (43, 23, 1843, '+20', 27, 1841, '-20', 'desafiado', '2024-04-10', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (44, 22, 1840, '-21', 28, 1817, '+21', 'desafiante', '2024-04-06', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (45, 24, 1815, '0', 33, 1814, '0', 'empate', '2024-04-03', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (46, 40, 1809, '+20', 42, 1809, '-20', 'desafiado', '2024-04-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (47, 20, 1800, '-20', 3, 1799, '+20', 'desafiante', '2024-04-02', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (48, 11, 1797, '0', 43, 1789, '0', 'empate', '2024-04-08', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (49, 41, 1789, '+20', 4, 1782, '-20', 'desafiado', '2024-04-02', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (50, 30, 1780, '-20', 31, 1780, '+20', 'desafiante', '2024-04-02', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (51, 36, 1778, '+20', 26, 1770, '-20', 'desafiado', '2024-04-08', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (52, 16, 1760, '+20', 35, 1760, '-20', 'desafiado', '2024-04-04', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (53, 14, 1759, '-20', 6, 1756, '+20', 'desafiante', '2024-04-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (54, 44, 1749, '-20', 8, 1743, '+20', 'desafiante', '2024-04-05', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (55, 19, 1738, '-20', 13, 1736, '+20', 'desafiante', '2024-04-11', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (56, 9, 1721, '+20', 32, 1718, '-20', 'desafiado', '2024-04-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (57, 29, 1718, '+20', 39, 1717, '-20', 'desafiado', '2024-04-12', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (58, 12, 1712, '+16', 15, 1644, '-16', 'desafiado', '2024-04-05', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (59, 21, 2045, '+14', 25, 1940, '-14', 'desafiado', '2024-04-25', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (60, 2, 1921, '+19', 17, 1908, '-19', 'desafiado', '2024-04-27', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (61, 37, 1890, '0', 18, 1883, '0', 'empate', '2024-04-16', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (62, 7, 1881, '+20', 1, 1874, '-20', 'desafiado', '2024-04-22', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (63, 5, 1869, '-20', 23, 1863, '+20', 'desafiante', '2024-04-23', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (64, 38, 1849, '-21', 10, 1839, '+21', 'desafiante', '2024-04-29', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (65, 28, 1838, '+19', 40, 1829, '-19', 'desafiado', '2024-04-22', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (66, 34, 1825, '+20', 27, 1821, '-20', 'desafiado', '2024-04-29', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (67, 22, 1819, '+20', 3, 1819, '-20', 'desafiado', '2024-04-17', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (68, 24, 1815, '+20', 33, 1814, '-20', 'desafiado', '2024-04-23', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (69, 41, 1809, '-21', 31, 1800, '+21', 'desafiante', '2024-04-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (70, 36, 1798, '+20', 11, 1797, '-20', 'desafiado', '2024-04-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (71, 43, 1789, '+20', 42, 1789, '-20', 'desafiado', '2024-04-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (72, 20, 1780, '+20', 16, 1780, '-20', 'desafiado', '2024-04-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (73, 6, 1776, '+19', 8, 1763, '-19', 'desafiado', '2024-04-19', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (74, 4, 1762, '-20', 30, 1760, '+20', 'desafiante', '2024-04-26', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (75, 13, 1756, '-20', 26, 1750, '+20', 'desafiante', '2024-04-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (76, 9, 1741, '-20', 35, 1740, '+20', 'desafiante', '2024-04-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (77, 14, 1739, '+20', 29, 1738, '-20', 'desafiado', '2024-04-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (78, 44, 1729, '-20', 12, 1728, '+20', 'desafiante', '2024-04-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (79, 19, 1718, '+19', 32, 1698, '-19', 'desafiado', '2024-04-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (80, 39, 1697, '+16', 15, 1628, '-16', 'desafiado', '2024-04-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (81, 21, 2059, '-27', 2, 1940, '+27', 'desafiante', '2024-05-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (82, 25, 1926, '-21', 7, 1901, '+21', 'desafiante', '2024-05-03', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (83, 18, 1883, '-20', 23, 1883, '+20', 'desafiante', '2024-05-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (84, 10, 1860, '+20', 28, 1857, '-20', 'desafiado', '2024-05-10', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (85, 1, 1854, '-20', 5, 1849, '+20', 'desafiante', '2024-05-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (86, 34, 1845, '+20', 22, 1839, '-20', 'desafiado', '2024-05-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (87, 24, 1835, '+20', 38, 1828, '-20', 'desafiado', '2024-05-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (88, 31, 1821, '+20', 36, 1818, '-20', 'desafiado', '2024-05-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (89, 40, 1810, '+20', 43, 1809, '-20', 'desafiado', '2024-05-07', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (90, 27, 1801, '-20', 20, 1800, '+20', 'desafiante', '2024-05-02', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (91, 3, 1799, '+20', 6, 1795, '-20', 'desafiado', '2024-05-03', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (92, 33, 1794, '+20', 41, 1788, '-20', 'desafiado', '2024-05-07', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (93, 30, 1780, '+20', 11, 1777, '-20', 'desafiado', '2024-05-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (94, 26, 1770, '+20', 42, 1769, '-20', 'desafiado', '2024-05-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (95, 16, 1760, '+20', 35, 1760, '-20', 'desafiado', '2024-05-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (96, 14, 1759, '-1', 12, 1748, '+1', 'empate', '2024-05-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (97, 8, 1744, '-20', 4, 1742, '+20', 'desafiante', '2024-05-02', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (98, 19, 1737, '-20', 13, 1736, '+20', 'desafiante', '2024-05-14', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (99, 9, 1721, '+20', 29, 1718, '-20', 'desafiado', '2024-05-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (100, 39, 1713, '+20', 44, 1709, '-20', 'desafiado', '2024-05-10', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (101, 32, 1679, '+16', 15, 1612, '-16', 'desafiado', '2024-05-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (102, 37, 1890, '+20', 17, 1889, '-20', 'desafiado', '2024-05-07', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (103, 38, 1808, '+20', 30, 1800, '-20', 'desafiado', '2024-05-17', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (105, 41, 1768, '+20', 4, 1762, '-20', 'desafiado', '2024-05-29', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (106, 8, 1724, '0', 19, 1717, '0', 'empate', '2024-05-21', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (107, 31, 1841, '-20', 28, 1837, '+20', 'desafiante', '2024-05-21', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (108, 43, 1789, '-20', 27, 1781, '+20', 'desafiante', '2024-05-23', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (109, 1, 1834, '-20', 40, 1830, '+20', 'desafiante', '2024-05-23', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (110, 21, 2032, '-24', 2, 1967, '+24', 'desafiante', '2024-05-23', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (111, 7, 1922, '-21', 37, 1910, '+21', 'desafiante', '2024-05-23', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (112, 18, 1863, '0', 24, 1855, '0', 'empate', '2024-05-24', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (113, 25, 1923, '-19', 23, 1949, '+19', 'desafiante', '2024-05-28', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (114, 10, 1890, '-18', 17, 1920, '+18', 'desafiante', '2024-05-28', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (115, 5, 1869, '+20', 34, 1865, '-20', 'desafiado', '2024-05-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (116, 20, 1833, '+19', 22, 1819, '-19', 'desafiado', '2024-05-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (117, 3, 1819, '-20', 33, 1814, '+20', 'desafiante', '2024-05-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (118, 36, 1798, '0', 26, 1790, '0', 'empate', '2024-05-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (119, 16, 1780, '-20', 6, 1775, '+20', 'desafiante', '2024-05-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (120, 14, 1758, '+20', 11, 1757, '-20', 'desafiado', '2024-05-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (121, 13, 1755, '-20', 12, 1756, '+20', 'desafiante', '2024-05-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (122, 42, 1749, '-20', 9, 1741, '+20', 'desafiante', '2024-05-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (123, 35, 1740, '-20', 39, 1733, '+20', 'desafiante', '2024-05-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (124, 29, 1698, '+20', 32, 1695, '-20', 'desafiado', '2024-05-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (125, 44, 1689, '+15', 15, 1596, '-15', 'desafiado', '2024-05-30', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (126, 1, 1832, '-20', 58, 1824, '+20', 'desafiante', '2024-06-05', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (127, 55, 1804, '-20', 47, 1804, '+20', 'desafiante', '2024-06-07', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (128, 53, 1784, '+20', 51, 1784, '-20', 'desafiado', '2024-06-04', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (129, 46, 1844, '-20', 31, 1843, '+20', 'desafiante', '2024-06-03', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (130, 39, 1753, '-21', 4, 1742, '+21', 'desafiante', '2024-06-06', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (131, 8, 1705, '+20', 44, 1704, '-20', 'desafiado', '2024-06-04', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (132, 5, 1889, '-20', 38, 1886, '+20', 'desafiante', '2024-06-05', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (133, 37, 2019, '-23', 23, 1968, '+23', 'desafiante', '2024-06-08', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (134, 18, 1907, '-18', 17, 1938, '+18', 'desafiante', '2024-06-11', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (135, 25, 1904, '-20', 7, 1901, '+20', 'desafiante', '2024-06-06', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (136, 20, 1852, '+20', 34, 1845, '-20', 'desafiado', '2024-06-10', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (137, 21, 2034, '+20', 2, 2032, '-20', 'desafiado', '2024-06-10', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (138, 48, 1784, '-20', 50, 1784, '+20', 'desafiante', '2024-06-14', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (139, 54, 1766, '-20', 52, 1764, '+20', 'desafiante', '2024-06-10', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (140, 56, 1804, '+20', 57, 1804, '-20', 'desafiado', '2024-06-14', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (141, 40, 1868, '0', 28, 1876, '0', 'empate', '2024-06-12', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (142, 45, 1804, '-20', 22, 1800, '+20', 'desafiante', '2024-06-11', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (143, 41, 1858, '+20', 24, 1855, '-20', 'desafiado', '2024-06-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (144, 33, 1834, '-20', 27, 1833, '+20', 'desafiante', '2024-06-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (145, 30, 1810, '+20', 59, 1804, '-20', 'desafiado', '2024-06-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (146, 3, 1799, '+20', 36, 1798, '-20', 'desafiado', '2024-06-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (147, 6, 1795, '0', 26, 1790, '0', 'empate', '2024-06-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (148, 49, 1784, '+20', 14, 1778, '-20', 'desafiado', '2024-06-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (149, 12, 1776, '+20', 43, 1769, '-20', 'desafiado', '2024-06-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (150, 9, 1761, '+20', 16, 1760, '-20', 'desafiado', '2024-06-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (151, 11, 1737, '+20', 13, 1735, '-20', 'desafiado', '2024-06-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (152, 35, 1720, '+20', 29, 1718, '-20', 'desafiado', '2024-06-15', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (153, 58, 1844, '+19', 24, 1835, '-19', 'desafiado', '2024-06-20', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (154, 9, 1781, '+20', 36, 1778, '-20', 'desafiado', '2024-06-20', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (155, 5, 1869, '-20', 40, 1868, '+20', 'desafiante', '2024-06-20', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (156, 37, 1996, '+20', 23, 1991, '-20', 'desafiado', '2024-06-20', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (157, 1, 1812, '-20', 53, 1804, '+20', 'desafiante', '2024-06-21', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (158, 28, 1876, '+20', 20, 1872, '-20', 'desafiado', '2024-06-21', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (159, 50, 1804, '+20', 49, 1804, '-20', 'desafiado', '2024-06-22', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (160, 45, 1784, '-20', 52, 1784, '+20', 'desafiante', '2024-06-22', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (161, 55, 1784, '+20', 57, 1784, '-20', 'desafiado', '2024-06-23', '2024-06-23 15:29:45');
INSERT INTO `t_confrontos` VALUES (162, 38, 1906, '+19', 18, 1889, '-19', 'desafiado', '2024-06-22', '2024-06-24 15:29:45');
INSERT INTO `t_confrontos` VALUES (163, 21, 2117, '-24', 2, 2045, '+24', 'desafiante', '2024-06-30', '2024-06-25 22:31:17');
INSERT INTO `t_confrontos` VALUES (164, 17, 1956, '-22', 7, 1929, '+22', 'desafiante', '2024-06-30', '2024-06-27 21:46:59');
INSERT INTO `t_confrontos` VALUES (165, 25, 1952, '-23', 41, 1901, '+23', 'desafiante', '2024-06-24', '2024-06-24 21:38:35');
INSERT INTO `t_confrontos` VALUES (166, 31, 1863, '+21', 27, 1875, '-21', 'desafiado', '2024-06-30', '2024-06-28 21:07:08');
INSERT INTO `t_confrontos` VALUES (167, 30, 1830, '-20', 34, 1825, '+20', 'desafiante', '2024-06-30', '2024-06-27 21:46:52');
INSERT INTO `t_confrontos` VALUES (168, 47, 1824, '+18', 46, 1787, '-18', 'desafiado', '2024-06-30', '2024-06-24 20:02:44');
INSERT INTO `t_confrontos` VALUES (169, 56, 1807, '-19', 22, 1820, '+19', 'desafiante', '2024-06-30', '2024-07-01 11:42:00');
INSERT INTO `t_confrontos` VALUES (170, 3, 1819, '-19', 33, 1831, '+19', 'desafiante', '2024-06-30', '2024-06-28 16:28:59');
INSERT INTO `t_confrontos` VALUES (171, 12, 1784, '+21', 6, 1795, '-21', 'desafiado', '2024-06-30', '2024-07-01 11:42:11');
INSERT INTO `t_confrontos` VALUES (172, 26, 1790, '+20', 59, 1784, '-20', 'desafiado', '2024-06-30', '2024-07-01 11:42:17');
INSERT INTO `t_confrontos` VALUES (173, 51, 1764, '-21', 48, 1741, '+21', 'desafiante', '2024-06-30', '2024-07-01 11:42:34');
INSERT INTO `t_confrontos` VALUES (174, 4, 1763, '+20', 14, 1758, '-20', 'desafiado', '2024-06-30', '2024-07-01 11:42:40');
INSERT INTO `t_confrontos` VALUES (175, 11, 1757, '+19', 54, 1746, '-19', 'desafiado', '2024-06-30', '2024-07-01 11:42:48');
INSERT INTO `t_confrontos` VALUES (176, 16, 1740, '+20', 35, 1740, '-20', 'desafiado', '2024-06-30', '2024-07-01 11:41:49');
INSERT INTO `t_confrontos` VALUES (177, 39, 1732, '-18', 8, 1772, '+18', 'desafiante', '2024-06-30', '2024-06-25 15:12:25');
INSERT INTO `t_confrontos` VALUES (178, 13, 1715, '+19', 29, 1698, '-19', 'desafiado', '2024-06-30', '2024-07-01 11:41:41');
INSERT INTO `t_confrontos` VALUES (179, 44, 1684, '-22', 19, 1656, '+22', 'desafiante', '2024-06-30', '2024-06-25 23:36:56');
INSERT INTO `t_confrontos` VALUES (180, 31, 1884, '+19', 20, 1868, '-19', 'desafiado', '2024-07-01', '2024-07-02 17:27:38');
INSERT INTO `t_confrontos` VALUES (181, 21, 2093, '-21', 2, 2069, '+21', 'desafiante', '2024-07-02', '2024-07-02 22:07:14');
INSERT INTO `t_confrontos` VALUES (182, 28, 1936, '+20', 17, 1934, '-20', 'desafiado', '2024-07-04', '2024-07-04 21:55:30');
INSERT INTO `t_confrontos` VALUES (183, 61, 1826, '-21', 30, 1810, '+21', 'desafiante', '2024-07-04', '2024-07-05 10:30:24');
INSERT INTO `t_confrontos` VALUES (184, 38, 1977, '-1', 7, 1951, '+1', 'empate', '2024-07-09', '2024-07-10 00:17:08');
INSERT INTO `t_confrontos` VALUES (185, 45, 1764, '+20', 46, 1769, '-20', 'desafiado', '2024-07-09', '2024-07-10 00:17:21');
INSERT INTO `t_confrontos` VALUES (186, 23, 1997, '-20', 37, 1991, '+20', 'desafiante', '2024-07-11', '2024-07-11 21:41:22');
INSERT INTO `t_confrontos` VALUES (187, 54, 1727, '-3', 19, 1678, '+3', 'empate', '2024-07-11', '2024-07-11 13:49:09');
INSERT INTO `t_confrontos` VALUES (188, 41, 1924, '+19', 40, 1904, '-19', 'desafiado', '2024-07-10', '2024-07-10 21:41:11');
INSERT INTO `t_confrontos` VALUES (189, 48, 1762, '+20', 36, 1758, '-20', 'desafiado', '2024-07-09', '2024-07-10 00:17:33');
INSERT INTO `t_confrontos` VALUES (190, 47, 1842, '0', 22, 1839, '0', 'empate', '2024-07-10', '2024-07-10 16:45:50');
INSERT INTO `t_confrontos` VALUES (191, 58, 1863, '-21', 27, 1854, '+21', 'desafiante', '2024-07-15', '2024-07-10 19:52:54');
INSERT INTO `t_confrontos` VALUES (192, 33, 1850, '+20', 5, 1849, '-20', 'desafiado', '2024-07-15', '2024-07-11 21:15:10');
INSERT INTO `t_confrontos` VALUES (193, 24, 1847, '0', 34, 1845, '0', 'empate', '2024-07-15', '2024-07-15 22:31:56');
INSERT INTO `t_confrontos` VALUES (194, 55, 1830, '+20', 63, 1826, '-20', 'desafiado', '2024-07-15', '2024-07-15 22:32:07');
INSERT INTO `t_confrontos` VALUES (195, 26, 1810, '-20', 60, 1806, '+20', 'desafiante', '2024-07-10', '2024-07-11 22:09:06');
INSERT INTO `t_confrontos` VALUES (196, 12, 1805, '0', 52, 1804, '0', 'empate', '2024-07-10', '2024-07-15 22:32:20');
INSERT INTO `t_confrontos` VALUES (197, 3, 1800, '+20', 1, 1795, '-20', 'desafiado', '2024-07-15', '2024-07-10 20:45:51');
INSERT INTO `t_confrontos` VALUES (198, 9, 1792, '+20', 8, 1790, '-20', 'desafiado', '2024-07-15', '2024-07-11 22:08:53');
INSERT INTO `t_confrontos` VALUES (199, 56, 1788, '0', 62, 1786, '0', 'empate', '2024-07-15', '2024-07-15 22:32:29');
INSERT INTO `t_confrontos` VALUES (200, 4, 1783, '+20', 11, 1776, '-20', 'desafiado', '2024-07-15', '2024-07-15 22:33:37');
INSERT INTO `t_confrontos` VALUES (201, 49, 1776, '-20', 6, 1774, '+20', 'desafiante', '2024-07-15', '2024-07-15 22:31:06');
INSERT INTO `t_confrontos` VALUES (202, 53, 1753, '+20', 64, 1746, '-20', 'desafiado', '2024-07-15', '2024-07-15 22:31:28');
INSERT INTO `t_confrontos` VALUES (203, 51, 1743, '-20', 50, 1740, '+20', 'desafiante', '2024-07-15', '2024-07-15 22:31:20');
INSERT INTO `t_confrontos` VALUES (204, 57, 1740, '0', 13, 1734, '0', 'empate', '2024-07-15', '2024-07-15 22:31:48');
INSERT INTO `t_confrontos` VALUES (205, 18, 1934, '-20', 25, 1929, '+20', 'desafiante', '2024-07-10', '2024-07-10 20:48:51');
INSERT INTO `t_confrontos` VALUES (206, 53, 1773, '+20', 1, 1775, '-20', 'desafiado', '2024-07-19', '2024-07-20 13:41:27');
INSERT INTO `t_confrontos` VALUES (207, 52, 1804, '-20', 4, 1803, '+20', 'desafiante', '2024-07-18', '2024-07-20 13:41:32');
INSERT INTO `t_confrontos` VALUES (208, 19, 1681, '-20', 29, 1679, '+20', 'desafiante', '2024-07-30', '2024-07-25 13:57:39');
INSERT INTO `t_confrontos` VALUES (209, 51, 1723, '-22', 44, 1682, '+22', 'desafiante', '2024-07-30', '2024-07-30 22:26:06');
INSERT INTO `t_confrontos` VALUES (210, 64, 1726, '-20', 54, 1724, '+20', 'desafiante', '2024-07-30', '2024-07-24 20:09:40');
INSERT INTO `t_confrontos` VALUES (211, 36, 1738, '+20', 13, 1734, '-20', 'desafiado', '2024-07-30', '2024-08-01 11:11:41');
INSERT INTO `t_confrontos` VALUES (212, 46, 1749, '-21', 57, 1740, '+21', 'desafiante', '2024-07-30', '2024-08-01 11:11:51');
INSERT INTO `t_confrontos` VALUES (213, 11, 1756, '+20', 49, 1756, '-20', 'desafiado', '2024-07-30', '2024-08-01 11:12:36');
INSERT INTO `t_confrontos` VALUES (214, 8, 1770, '+19', 50, 1760, '-19', 'desafiado', '2024-07-30', '2024-07-23 14:36:45');
INSERT INTO `t_confrontos` VALUES (215, 45, 1784, '-31', 15, 1581, '+31', 'desafiante', '2024-07-30', '2024-07-23 14:37:09');
INSERT INTO `t_confrontos` VALUES (216, 56, 1788, '-20', 62, 1786, '+20', 'desafiante', '2024-07-30', '2024-07-25 23:15:51');
INSERT INTO `t_confrontos` VALUES (217, 6, 1794, '0', 26, 1790, '0', 'empate', '2024-07-30', '2024-08-01 11:12:51');
INSERT INTO `t_confrontos` VALUES (218, 62, 1806, '-20', 61, 1805, '+20', 'desafiante', '2024-07-30', '2024-07-30 22:24:58');
INSERT INTO `t_confrontos` VALUES (219, 9, 1812, '+20', 63, 1806, '-20', 'desafiado', '2024-07-30', '2024-08-01 11:13:04');
INSERT INTO `t_confrontos` VALUES (220, 60, 1826, '+20', 3, 1820, '-20', 'desafiado', '2024-07-30', '2024-07-25 23:35:30');
INSERT INTO `t_confrontos` VALUES (221, 30, 1831, '+20', 5, 1829, '-20', 'desafiado', '2024-07-30', '2024-07-30 22:24:42');
INSERT INTO `t_confrontos` VALUES (222, 58, 1842, '0', 22, 1839, '0', 'empate', '2024-07-30', '2024-07-26 21:13:50');
INSERT INTO `t_confrontos` VALUES (223, 34, 1845, '+20', 47, 1842, '-20', 'desafiado', '2024-07-30', '2024-08-01 11:13:13');
INSERT INTO `t_confrontos` VALUES (224, 20, 1849, '+20', 24, 1847, '-20', 'desafiado', '2024-07-30', '2024-07-24 02:12:20');
INSERT INTO `t_confrontos` VALUES (225, 33, 1870, '+19', 55, 1850, '-19', 'desafiado', '2024-07-30', '2024-07-23 14:37:32');
INSERT INTO `t_confrontos` VALUES (226, 40, 1885, '+19', 27, 1875, '-19', 'desafiado', '2024-07-30', '2024-07-24 21:09:13');
INSERT INTO `t_confrontos` VALUES (227, 18, 1914, '-1', 31, 1903, '+1', 'empate', '2024-07-30', '2024-07-23 18:56:57');
INSERT INTO `t_confrontos` VALUES (228, 41, 1943, '-22', 17, 1914, '+22', 'desafiante', '2024-07-30', '2024-07-24 22:51:05');
INSERT INTO `t_confrontos` VALUES (229, 7, 1952, '+20', 25, 1949, '-20', 'desafiado', '2024-07-30', '2024-07-25 23:15:40');
INSERT INTO `t_confrontos` VALUES (230, 38, 1976, '+19', 28, 1956, '-19', 'desafiado', '2024-07-30', '2024-07-25 11:56:42');
INSERT INTO `t_confrontos` VALUES (231, 37, 2011, '-2', 23, 1977, '+2', 'empate', '2024-07-30', '2024-07-26 21:53:36');
INSERT INTO `t_confrontos` VALUES (232, 2, 2090, '-21', 21, 2072, '+21', 'desafiante', '2024-07-30', '2024-07-25 23:15:46');
INSERT INTO `t_confrontos` VALUES (233, 61, 1825, '-20', 4, 1823, '+20', 'desafiante', '2024-08-06', '2024-08-06 21:56:44');
INSERT INTO `t_confrontos` VALUES (234, 6, 1794, '0', 53, 1793, '0', 'empate', '2024-08-07', '2024-08-07 12:34:19');
INSERT INTO `t_confrontos` VALUES (235, 22, 1839, '+20', 9, 1832, '-20', 'desafiado', '2024-08-08', '2024-08-08 22:37:01');
INSERT INTO `t_confrontos` VALUES (236, 25, 1929, '+20', 41, 1921, '-20', 'desafiado', '2024-08-08', '2024-08-08 22:37:02');
INSERT INTO `t_confrontos` VALUES (237, 40, 1904, '+19', 33, 1889, '-19', 'desafiado', '2024-08-08', '2024-08-09 12:47:16');
INSERT INTO `t_confrontos` VALUES (238, 28, 1937, '-20', 17, 1936, '+20', 'desafiante', '2024-08-09', '2024-08-09 22:09:15');
INSERT INTO `t_confrontos` VALUES (239, 18, 1913, '-21', 31, 1904, '+21', 'desafiante', '2024-08-10', '2024-08-10 18:18:47');
INSERT INTO `t_confrontos` VALUES (240, 21, 2093, '-21', 2, 2069, '+21', 'desafiante', '2024-08-15', '2024-08-14 23:39:42');
INSERT INTO `t_confrontos` VALUES (241, 37, 2009, '+19', 38, 1995, '-19', 'desafiado', '2024-08-15', '2024-08-16 13:28:19');
INSERT INTO `t_confrontos` VALUES (242, 23, 1979, '+20', 7, 1972, '-20', 'desafiado', '2024-08-15', '2024-08-14 23:38:32');
INSERT INTO `t_confrontos` VALUES (243, 20, 1869, '-20', 34, 1865, '+20', 'desafiante', '2024-08-15', '2024-08-16 13:28:34');
INSERT INTO `t_confrontos` VALUES (244, 27, 1856, '-20', 30, 1851, '+20', 'desafiante', '2024-08-15', '2024-08-14 23:43:29');
INSERT INTO `t_confrontos` VALUES (245, 60, 1846, '+20', 58, 1842, '-20', 'desafiado', '2024-08-15', '2024-08-16 13:28:57');
INSERT INTO `t_confrontos` VALUES (246, 55, 1831, '-20', 24, 1827, '+20', 'desafiante', '2024-08-15', '2024-08-14 23:43:49');
INSERT INTO `t_confrontos` VALUES (247, 47, 1822, '+19', 5, 1809, '-19', 'desafiado', '2024-08-15', '2024-08-16 13:28:58');
INSERT INTO `t_confrontos` VALUES (248, 12, 1805, '+20', 3, 1800, '-20', 'desafiado', '2024-08-15', '2024-08-16 13:28:16');
INSERT INTO `t_confrontos` VALUES (249, 26, 1790, '-20', 8, 1789, '+20', 'desafiante', '2024-08-15', '2024-08-16 13:28:05');
INSERT INTO `t_confrontos` VALUES (250, 62, 1786, '+20', 63, 1786, '-20', 'desafiado', '2024-08-15', '2024-08-16 13:28:59');
INSERT INTO `t_confrontos` VALUES (251, 52, 1784, '+20', 48, 1782, '-20', 'desafiado', '2024-08-15', '2024-08-14 23:38:24');
INSERT INTO `t_confrontos` VALUES (252, 11, 1776, '+20', 56, 1768, '-20', 'desafiado', '2024-08-15', '2024-08-16 13:29:00');
INSERT INTO `t_confrontos` VALUES (253, 57, 1761, '+20', 36, 1758, '-20', 'desafiado', '2024-08-15', '2024-08-16 13:29:02');
INSERT INTO `t_confrontos` VALUES (254, 45, 1753, '+19', 54, 1744, '-19', 'desafiado', '2024-08-15', '2024-08-16 13:29:03');
INSERT INTO `t_confrontos` VALUES (255, 50, 1741, '+20', 14, 1738, '-20', 'desafiado', '2024-08-15', '2024-08-16 13:29:04');
INSERT INTO `t_confrontos` VALUES (256, 49, 1736, '+20', 46, 1728, '-20', 'desafiado', '2024-08-15', '2024-08-16 13:29:06');
INSERT INTO `t_confrontos` VALUES (257, 44, 1704, '+20', 51, 1701, '-20', 'desafiado', '2024-08-15', '2024-08-16 13:28:55');
INSERT INTO `t_confrontos` VALUES (258, 29, 1699, '+18', 19, 1661, '-18', 'desafiado', '2024-08-15', '2024-08-14 23:39:49');
INSERT INTO `t_confrontos` VALUES (259, 2, 2090, '-21', 21, 2072, '+21', 'desafiante', '2024-08-31', '2024-08-27 22:08:29');
INSERT INTO `t_confrontos` VALUES (260, 37, 2028, '+18', 23, 1999, '-18', 'desafiado', '2024-08-31', '2024-08-27 16:28:06');
INSERT INTO `t_confrontos` VALUES (261, 38, 1976, '-21', 17, 1956, '+21', 'desafiante', '2024-08-31', '2024-08-29 22:59:44');
INSERT INTO `t_confrontos` VALUES (262, 7, 1952, '-20', 25, 1949, '+20', 'desafiante', '2024-08-27', '2024-08-27 21:34:13');
INSERT INTO `t_confrontos` VALUES (263, 31, 1925, '+20', 40, 1923, '-20', 'desafiado', '2024-08-31', '2024-08-27 16:04:39');
INSERT INTO `t_confrontos` VALUES (264, 28, 1917, '+19', 41, 1901, '-19', 'desafiado', '2024-08-31', '2024-08-31 11:39:28');
INSERT INTO `t_confrontos` VALUES (265, 18, 1892, '0', 34, 1885, '0', 'empate', '2024-08-31', '2024-08-30 11:30:32');
INSERT INTO `t_confrontos` VALUES (266, 30, 1871, '-20', 33, 1870, '+20', 'desafiante', '2024-08-31', '2024-08-27 21:34:24');
INSERT INTO `t_confrontos` VALUES (267, 60, 1866, '-20', 22, 1859, '+20', 'desafiante', '2024-08-31', '2024-08-27 16:29:03');
INSERT INTO `t_confrontos` VALUES (268, 20, 1849, '-21', 24, 1837, '+21', 'desafiante', '2024-08-31', '2024-08-27 16:29:17');
INSERT INTO `t_confrontos` VALUES (269, 4, 1843, '+20', 47, 1841, '-20', 'desafiado', '2024-08-31', '2024-09-02 15:18:24');
INSERT INTO `t_confrontos` VALUES (270, 27, 1836, '+19', 12, 1825, '-19', 'desafiado', '2024-08-31', '2024-09-02 15:17:39');
INSERT INTO `t_confrontos` VALUES (271, 58, 1822, '-21', 9, 1812, '+21', 'desafiante', '2024-08-31', '2024-08-27 21:34:33');
INSERT INTO `t_confrontos` VALUES (272, 55, 1811, '-20', 8, 1809, '+20', 'desafiante', '2024-08-31', '2024-08-31 02:44:56');
INSERT INTO `t_confrontos` VALUES (273, 62, 1806, '+20', 61, 1805, '-20', 'desafiado', '2024-08-31', '2024-08-30 14:33:02');
INSERT INTO `t_confrontos` VALUES (274, 52, 1804, '+20', 11, 1796, '-20', 'desafiado', '2024-08-31', '2024-09-02 15:18:33');
INSERT INTO `t_confrontos` VALUES (275, 6, 1794, '+20', 53, 1793, '-20', 'desafiado', '2024-08-31', '2024-08-30 00:34:21');
INSERT INTO `t_confrontos` VALUES (276, 5, 1790, '+19', 57, 1781, '-19', 'desafiado', '2024-08-31', '2024-09-02 15:18:36');
INSERT INTO `t_confrontos` VALUES (277, 45, 1772, '-20', 26, 1770, '+20', 'desafiante', '2024-08-31', '2024-08-30 00:34:36');
INSERT INTO `t_confrontos` VALUES (278, 63, 1766, '-20', 48, 1762, '+20', 'desafiante', '2024-08-31', '2024-08-31 11:40:34');
INSERT INTO `t_confrontos` VALUES (279, 50, 1761, '+20', 49, 1756, '-20', 'desafiado', '2024-08-31', '2024-09-02 15:18:39');
INSERT INTO `t_confrontos` VALUES (280, 56, 1748, '+19', 36, 1738, '-19', 'desafiado', '2024-08-31', '2024-09-02 15:18:42');
INSERT INTO `t_confrontos` VALUES (281, 54, 1725, '-20', 44, 1724, '+20', 'desafiante', '2024-08-31', '2024-08-31 02:45:12');
INSERT INTO `t_confrontos` VALUES (282, 14, 1718, '+20', 29, 1717, '-20', 'desafiado', '2024-08-31', '2024-09-02 15:18:43');
INSERT INTO `t_confrontos` VALUES (283, 13, 1714, '+20', 46, 1708, '-20', 'desafiado', '2024-08-31', '2024-09-02 15:18:44');
INSERT INTO `t_confrontos` VALUES (284, 64, 1706, '+19', 51, 1681, '-19', 'desafiado', '2024-08-31', '2024-09-02 15:18:19');
INSERT INTO `t_confrontos` VALUES (285, 37, 2046, '+16', 23, 1981, '-16', 'desafiado', '2024-09-03', '2024-09-04 15:38:14');
INSERT INTO `t_confrontos` VALUES (286, 54, 1705, '-20', 29, 1697, '+20', 'desafiante', '2024-09-03', '2024-09-04 15:38:19');
INSERT INTO `t_confrontos` VALUES (287, 8, 1829, '+20', 20, 1828, '-20', 'desafiado', '2024-09-05', '2024-09-05 21:38:11');
INSERT INTO `t_confrontos` VALUES (288, 26, 1790, '+20', 61, 1785, '-20', 'desafiado', '2024-09-05', '2024-09-05 22:19:49');
INSERT INTO `t_confrontos` VALUES (289, 38, 1955, '-21', 31, 1945, '+21', 'desafiante', '2024-09-08', '2024-09-09 00:15:30');
INSERT INTO `t_confrontos` VALUES (290, 41, 1882, '+20', 22, 1879, '-20', 'desafiado', '2024-09-09', '2024-09-09 22:54:45');
INSERT INTO `t_confrontos` VALUES (291, 28, 1936, '+20', 7, 1932, '-20', 'desafiado', '2024-09-09', '2024-09-09 22:55:28');
INSERT INTO `t_confrontos` VALUES (292, 4, 1863, '-20', 24, 1858, '+20', 'desafiante', '2024-09-10', '2024-09-10 21:46:34');
INSERT INTO `t_confrontos` VALUES (293, 46, 1688, '-23', 19, 1643, '+23', 'desafiante', '2024-09-11', '2024-09-11 15:26:14');
INSERT INTO `t_confrontos` VALUES (294, 49, 1736, '+20', 13, 1734, '-20', 'desafiado', '2024-09-11', '2024-09-11 15:26:20');
INSERT INTO `t_confrontos` VALUES (295, 40, 1903, '-21', 18, 1892, '+21', 'desafiante', '2024-09-11', '2024-09-12 16:02:55');
INSERT INTO `t_confrontos` VALUES (296, 17, 1977, '-20', 25, 1969, '+20', 'desafiante', '2024-09-12', '2024-09-12 21:51:55');
INSERT INTO `t_confrontos` VALUES (297, 27, 1855, '-20', 30, 1851, '+20', 'desafiante', '2024-09-12', '2024-09-12 22:02:17');
INSERT INTO `t_confrontos` VALUES (298, 44, 1744, '-20', 14, 1738, '+20', 'desafiante', '2024-09-12', '2024-09-12 23:34:36');
INSERT INTO `t_confrontos` VALUES (299, 21, 2093, '+19', 2, 2069, '-19', 'desafiado', '2024-09-13', '2024-09-14 00:31:31');
INSERT INTO `t_confrontos` VALUES (300, 45, 1752, '+20', 63, 1746, '-20', 'desafiado', '2024-09-13', '2024-09-14 00:31:34');
INSERT INTO `t_confrontos` VALUES (301, 11, 1776, '-20', 53, 1773, '+20', 'desafiante', '2024-09-13', '2024-09-14 00:31:37');
INSERT INTO `t_confrontos` VALUES (302, 60, 1846, '-21', 9, 1833, '+21', 'desafiante', '2024-09-14', '2024-09-14 20:22:06');
INSERT INTO `t_confrontos` VALUES (303, 33, 1890, '+20', 34, 1885, '-20', 'desafiado', '2024-09-15', '2024-09-16 15:44:28');
INSERT INTO `t_confrontos` VALUES (304, 62, 1826, '+20', 52, 1824, '-20', 'desafiado', '2024-09-15', '2024-09-16 15:44:29');
INSERT INTO `t_confrontos` VALUES (305, 47, 1821, '+20', 6, 1814, '-20', 'desafiado', '2024-09-15', '2024-09-16 15:44:31');
INSERT INTO `t_confrontos` VALUES (306, 58, 1801, '+19', 55, 1791, '-19', 'desafiado', '2024-09-15', '2024-09-16 15:44:32');
INSERT INTO `t_confrontos` VALUES (307, 48, 1782, '+20', 50, 1781, '-20', 'desafiado', '2024-09-15', '2024-09-16 15:44:33');
INSERT INTO `t_confrontos` VALUES (308, 56, 1767, '+20', 57, 1762, '-20', 'desafiado', '2024-09-15', '2024-09-16 15:44:35');
INSERT INTO `t_confrontos` VALUES (309, 64, 1725, '+20', 36, 1719, '-20', 'desafiado', '2024-09-15', '2024-09-16 15:44:36');
INSERT INTO `t_confrontos` VALUES (310, 2, 2050, '-23', 25, 1989, '+23', 'desafiante', '2024-09-18', '2024-09-18 20:53:10');
INSERT INTO `t_confrontos` VALUES (311, 21, 2112, '-23', 37, 2062, '+23', 'desafiante', '2024-09-18', '2024-09-18 21:53:15');
INSERT INTO `t_confrontos` VALUES (312, 20, 1808, '+20', 12, 1806, '-20', 'desafiado', '2024-09-19', '2024-09-19 21:26:30');
INSERT INTO `t_confrontos` VALUES (313, 31, 1966, '+20', 23, 1965, '-20', 'desafiado', '2024-09-22', '2024-09-22 18:17:26');
INSERT INTO `t_confrontos` VALUES (314, 17, 1957, '+20', 28, 1956, '-20', 'desafiado', '2024-09-19', '2024-09-27 22:48:22');
INSERT INTO `t_confrontos` VALUES (315, 38, 1934, '+19', 18, 1913, '-19', 'desafiado', '2024-09-19', '2024-09-30 22:14:38');
INSERT INTO `t_confrontos` VALUES (316, 7, 1912, '+20', 33, 1910, '-20', 'desafiado', '2024-09-19', '2024-09-26 22:38:09');
INSERT INTO `t_confrontos` VALUES (317, 41, 1902, '-1', 40, 1882, '+1', 'empate', '2024-09-19', '2024-09-30 22:14:19');
INSERT INTO `t_confrontos` VALUES (318, 24, 1878, '+20', 30, 1871, '-20', 'desafiado', '2024-09-19', '2024-09-30 22:14:04');
INSERT INTO `t_confrontos` VALUES (319, 34, 1865, '+20', 22, 1859, '-20', 'desafiado', '2024-09-19', '2024-09-30 22:14:41');
INSERT INTO `t_confrontos` VALUES (320, 9, 1854, '+20', 8, 1849, '-20', 'desafiado', '2024-09-19', '2024-09-26 23:19:37');
INSERT INTO `t_confrontos` VALUES (321, 62, 1846, '+20', 4, 1843, '-20', 'desafiado', '2024-09-19', '2024-09-24 21:33:43');
INSERT INTO `t_confrontos` VALUES (322, 47, 1841, '-20', 27, 1835, '+20', 'desafiante', '2024-09-19', '2024-09-30 22:14:46');
INSERT INTO `t_confrontos` VALUES (323, 60, 1825, '0', 58, 1820, '0', 'empate', '2024-09-19', '2024-09-27 18:06:14');
INSERT INTO `t_confrontos` VALUES (324, 26, 1810, '+20', 5, 1809, '-20', 'desafiado', '2024-09-19', '2024-10-01 13:23:52');
INSERT INTO `t_confrontos` VALUES (325, 52, 1804, '+20', 48, 1802, '-20', 'desafiado', '2024-09-19', '2024-10-01 13:24:38');
INSERT INTO `t_confrontos` VALUES (326, 6, 1794, '-20', 53, 1793, '+20', 'desafiante', '2024-09-20', '2024-09-24 00:51:02');
INSERT INTO `t_confrontos` VALUES (327, 56, 1787, '+19', 45, 1772, '-19', 'desafiado', '2024-09-19', '2024-09-30 22:53:38');
INSERT INTO `t_confrontos` VALUES (328, 55, 1772, '-20', 61, 1765, '+20', 'desafiante', '2024-09-20', '2024-09-27 22:48:08');
INSERT INTO `t_confrontos` VALUES (329, 50, 1761, '-20', 14, 1758, '+20', 'desafiante', '2024-09-19', '2024-10-01 13:25:58');
INSERT INTO `t_confrontos` VALUES (330, 11, 1756, '+20', 49, 1756, '-20', 'desafiado', '2024-09-19', '2024-10-01 13:26:09');
INSERT INTO `t_confrontos` VALUES (331, 64, 1745, '+20', 57, 1742, '-20', 'desafiado', '2024-09-19', '2024-10-01 13:26:33');
INSERT INTO `t_confrontos` VALUES (332, 63, 1726, '-20', 44, 1724, '+20', 'desafiante', '2024-09-19', '2024-10-01 13:26:39');
INSERT INTO `t_confrontos` VALUES (333, 29, 1717, '+20', 13, 1714, '-20', 'desafiado', '2024-09-19', '2024-10-01 13:27:07');
INSERT INTO `t_confrontos` VALUES (334, 36, 1699, '-21', 54, 1685, '+21', 'desafiante', '2024-09-19', '2024-10-01 13:27:21');
INSERT INTO `t_confrontos` VALUES (335, 19, 1666, '+20', 46, 1665, '-20', 'desafiado', '2024-09-19', '2024-10-01 13:27:40');
INSERT INTO `t_confrontos` VALUES (336, 58, 1820, '+20', 53, 1813, '-20', 'desafiado', '2024-10-02', '2024-10-03 10:30:01');
INSERT INTO `t_confrontos` VALUES (337, 21, 2089, '+20', 37, 2085, '-20', 'desafiado', '2024-10-10', '2024-10-10 11:17:09');
INSERT INTO `t_confrontos` VALUES (338, 2, 2027, '+19', 25, 2012, '-19', 'desafiado', '2024-10-10', '2024-10-10 20:59:51');
INSERT INTO `t_confrontos` VALUES (339, 31, 1986, '-21', 17, 1977, '+21', 'desafiante', '2024-10-10', '2024-10-14 21:39:13');
INSERT INTO `t_confrontos` VALUES (340, 38, 1953, '0', 23, 1945, '0', 'empate', '2024-10-10', '2024-10-10 20:59:57');
INSERT INTO `t_confrontos` VALUES (341, 28, 1936, '-20', 7, 1932, '+20', 'desafiante', '2024-10-10', '2024-10-14 21:39:17');
INSERT INTO `t_confrontos` VALUES (342, 41, 1901, '-20', 24, 1898, '+20', 'desafiante', '2024-10-10', '2024-10-10 21:18:45');
INSERT INTO `t_confrontos` VALUES (343, 18, 1894, '0', 33, 1890, '0', 'empate', '2024-10-10', '2024-10-10 11:16:01');
INSERT INTO `t_confrontos` VALUES (344, 34, 1885, '-20', 40, 1883, '+20', 'desafiante', '2024-10-10', '2024-10-16 15:33:35');
INSERT INTO `t_confrontos` VALUES (345, 9, 1874, '+20', 62, 1866, '-20', 'desafiado', '2024-10-10', '2024-10-10 11:16:59');
INSERT INTO `t_confrontos` VALUES (346, 27, 1855, '+20', 30, 1851, '-20', 'desafiado', '2024-10-10', '2024-10-16 15:33:39');
INSERT INTO `t_confrontos` VALUES (347, 22, 1839, '+19', 26, 1830, '-19', 'desafiado', '2024-10-10', '2024-10-14 22:48:57');
INSERT INTO `t_confrontos` VALUES (348, 8, 1829, '+20', 20, 1828, '-20', 'desafiado', '2024-10-10', '2024-10-10 11:15:44');
INSERT INTO `t_confrontos` VALUES (349, 60, 1825, '+20', 52, 1824, '-20', 'desafiado', '2024-10-10', '2024-10-16 15:33:41');
INSERT INTO `t_confrontos` VALUES (350, 4, 1823, '+20', 47, 1821, '-20', 'desafiado', '2024-10-10', '2024-10-16 15:33:43');
INSERT INTO `t_confrontos` VALUES (351, 56, 1806, '-21', 12, 1786, '+21', 'desafiante', '2024-10-10', '2024-10-15 21:54:39');
INSERT INTO `t_confrontos` VALUES (352, 61, 1785, '+20', 48, 1782, '-20', 'desafiado', '2024-10-10', '2024-10-10 21:18:37');
INSERT INTO `t_confrontos` VALUES (353, 14, 1778, '+20', 11, 1776, '-20', 'desafiado', '2024-10-10', '2024-10-16 15:33:45');
INSERT INTO `t_confrontos` VALUES (354, 6, 1774, '+19', 64, 1765, '-19', 'desafiado', '2024-10-10', '2024-10-16 15:33:49');
INSERT INTO `t_confrontos` VALUES (355, 45, 1753, '+20', 55, 1752, '-20', 'desafiado', '2024-10-10', '2024-10-16 15:33:52');
INSERT INTO `t_confrontos` VALUES (356, 44, 1744, '-20', 50, 1741, '+20', 'desafiante', '2024-10-10', '2024-10-10 11:16:30');
INSERT INTO `t_confrontos` VALUES (357, 29, 1737, '+20', 49, 1736, '-20', 'desafiado', '2024-10-10', '2024-10-16 15:33:54');
INSERT INTO `t_confrontos` VALUES (358, 57, 1722, '-21', 54, 1706, '+21', 'desafiante', '2024-10-10', '2024-10-15 23:15:36');
INSERT INTO `t_confrontos` VALUES (359, 63, 1706, '+19', 13, 1694, '-19', 'desafiado', '2024-10-10', '2024-10-16 15:33:56');
INSERT INTO `t_confrontos` VALUES (360, 19, 1686, '+20', 36, 1678, '-20', 'desafiado', '2024-10-10', '2024-10-16 15:33:59');
INSERT INTO `t_confrontos` VALUES (361, 21, 2109, NULL, 37, 2065, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (362, 2, 2046, NULL, 17, 1998, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (363, 25, 1993, NULL, 31, 1965, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (364, 38, 1953, NULL, 7, 1952, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (365, 23, 1945, '-22', 24, 1918, '+22', 'desafiante', '2024-10-30', '2024-10-18 11:19:49');
INSERT INTO `t_confrontos` VALUES (366, 28, 1916, NULL, 40, 1903, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (367, 18, 1894, NULL, 9, 1894, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (368, 33, 1890, NULL, 41, 1881, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (369, 27, 1875, NULL, 34, 1865, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (370, 22, 1858, NULL, 8, 1849, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (371, 62, 1846, NULL, 60, 1845, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (372, 4, 1843, NULL, 58, 1840, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (373, 30, 1831, NULL, 26, 1811, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (374, 20, 1808, NULL, 12, 1807, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (375, 61, 1805, NULL, 52, 1804, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (376, 47, 1801, NULL, 14, 1798, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (377, 6, 1793, NULL, 53, 1793, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (378, 56, 1785, NULL, 45, 1773, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (379, 48, 1762, NULL, 50, 1761, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (380, 29, 1757, NULL, 11, 1756, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (381, 64, 1746, NULL, 55, 1732, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (382, 54, 1727, NULL, 63, 1725, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (383, 44, 1724, NULL, 49, 1716, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (384, 19, 1706, NULL, 57, 1701, NULL, NULL, '2024-10-30', NULL);
INSERT INTO `t_confrontos` VALUES (385, 13, 1675, NULL, 51, 1662, NULL, NULL, '2024-10-30', NULL);

-- ----------------------------
-- Table structure for t_confrontos_copy1
-- ----------------------------
DROP TABLE IF EXISTS `t_confrontos_copy1`;
CREATE TABLE `t_confrontos_copy1`  (
  `a_index` int NOT NULL AUTO_INCREMENT,
  `a_desafiado` int NULL DEFAULT NULL,
  `a_desafiado_rating` int NULL DEFAULT NULL,
  `a_desafiado_pontos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a_desafiante` int NULL DEFAULT NULL,
  `a_desafiante_rating` int NULL DEFAULT NULL,
  `a_desafiante_pontos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a_resultado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a_data` date NULL DEFAULT NULL,
  PRIMARY KEY (`a_index`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_confrontos_copy1
-- ----------------------------
INSERT INTO `t_confrontos_copy1` VALUES (1, 26, 1820, '-21', 10, 1800, '+21', 'desafiante', '2024-03-08');
INSERT INTO `t_confrontos_copy1` VALUES (2, 25, 1840, '+20', 7, 1840, '-20', 'desafiado', '2024-03-05');
INSERT INTO `t_confrontos_copy1` VALUES (3, 21, 1920, '+18', 2, 1880, '-18', 'desafiado', '2024-03-14');
INSERT INTO `t_confrontos_copy1` VALUES (4, 17, 1880, '+19', 18, 1860, '-19', 'desafiado', '2024-03-15');
INSERT INTO `t_confrontos_copy1` VALUES (5, 23, 1860, '-21', 34, 1840, '+21', 'desafiante', '2024-03-15');
INSERT INTO `t_confrontos_copy1` VALUES (6, 22, 1840, '+20', 24, 1840, '-20', 'desafiado', '2024-03-15');
INSERT INTO `t_confrontos_copy1` VALUES (7, 5, 1840, '-21', 28, 1820, '+21', 'desafiante', '2024-03-11');
INSERT INTO `t_confrontos_copy1` VALUES (8, 33, 1800, '+20', 20, 1800, '-20', 'desafiado', '2024-03-12');
INSERT INTO `t_confrontos_copy1` VALUES (9, 27, 1800, '+20', 30, 1800, '-20', 'desafiado', '2024-03-11');
INSERT INTO `t_confrontos_copy1` VALUES (10, 31, 1800, '-20', 1, 1800, '+20', 'desafiante', '2024-03-11');
INSERT INTO `t_confrontos_copy1` VALUES (11, 8, 1800, '+20', 12, 1800, '-20', 'desafiado', '2024-03-15');
INSERT INTO `t_confrontos_copy1` VALUES (12, 3, 1800, '+19', 4, 1780, '-19', 'desafiado', '2024-03-11');
INSERT INTO `t_confrontos_copy1` VALUES (13, 36, 1780, '-21', 6, 1760, '+21', 'desafiante', '2024-03-11');
INSERT INTO `t_confrontos_copy1` VALUES (14, 9, 1760, '-20', 16, 1760, '+20', 'desafiante', '2024-03-07');
INSERT INTO `t_confrontos_copy1` VALUES (15, 11, 1760, '+20', 13, 1760, '-20', 'desafiado', '2024-03-11');
INSERT INTO `t_confrontos_copy1` VALUES (16, 14, 1760, '+20', 35, 1760, '-20', 'desafiado', '2024-03-12');
INSERT INTO `t_confrontos_copy1` VALUES (17, 32, 1720, '-20', 19, 1720, '+20', 'desafiante', '2024-03-14');
INSERT INTO `t_confrontos_copy1` VALUES (18, 29, 1720, '+18', 15, 1680, '-18', 'desafiado', '2024-03-14');
INSERT INTO `t_confrontos_copy1` VALUES (19, 21, 2014, '+16', 17, 1944, '-16', 'desafiado', '2024-03-26');
INSERT INTO `t_confrontos_copy1` VALUES (20, 2, 1919, '+17', 34, 1861, '-17', 'desafiado', '2024-03-28');
INSERT INTO `t_confrontos_copy1` VALUES (21, 25, 1860, '+20', 22, 1860, '-20', 'desafiado', '2024-03-22');
INSERT INTO `t_confrontos_copy1` VALUES (22, 18, 1841, '+20', 28, 1841, '-20', 'desafiado', '2024-03-22');
INSERT INTO `t_confrontos_copy1` VALUES (23, 23, 1839, '-21', 10, 1821, '+21', 'desafiante', '2024-03-18');
INSERT INTO `t_confrontos_copy1` VALUES (24, 7, 1841, '+20', 33, 1834, '-20', 'desafiado', '2024-03-26');
INSERT INTO `t_confrontos_copy1` VALUES (25, 24, 1836, '-21', 27, 1820, '+21', 'desafiante', '2024-03-27');
INSERT INTO `t_confrontos_copy1` VALUES (26, 1, 1820, '+20', 8, 1820, '-20', 'desafiado', '2024-03-22');
INSERT INTO `t_confrontos_copy1` VALUES (27, 5, 1819, '+20', 3, 1819, '-20', 'desafiado', '2024-03-22');
INSERT INTO `t_confrontos_copy1` VALUES (28, 26, 1799, '+19', 6, 1781, '-19', 'desafiado', '2024-03-19');
INSERT INTO `t_confrontos_copy1` VALUES (29, 20, 1780, '+20', 16, 1780, '-20', 'desafiado', '2024-03-31');
INSERT INTO `t_confrontos_copy1` VALUES (30, 30, 1780, '0', 31, 1780, '0', 'empate', '2024-03-25');
INSERT INTO `t_confrontos_copy1` VALUES (31, 11, 1780, '+17', 12, 1729, '-17', 'desafiado', '2024-03-25');
INSERT INTO `t_confrontos_copy1` VALUES (32, 14, 1780, '-21', 4, 1761, '+21', 'desafiante', '2024-03-26');
INSERT INTO `t_confrontos_copy1` VALUES (33, 36, 1759, '+19', 9, 1740, '-19', 'desafiado', '2024-03-31');
INSERT INTO `t_confrontos_copy1` VALUES (34, 19, 1716, '+22', 13, 1758, '-22', 'desafiado', '2024-03-27');
INSERT INTO `t_confrontos_copy1` VALUES (35, 35, 1740, '+20', 29, 1738, '-20', 'desafiado', '2024-03-31');
INSERT INTO `t_confrontos_copy1` VALUES (36, 32, 1700, '+18', 15, 1662, '-18', 'desafiado', '2024-03-31');
INSERT INTO `t_confrontos_copy1` VALUES (37, 17, 1928, '-20', 25, 1920, '+20', 'desafiante', '2024-04-01');
INSERT INTO `t_confrontos_copy1` VALUES (38, 21, 2030, '+15', 2, 1936, '-15', 'desafiado', '2024-04-10');
INSERT INTO `t_confrontos_copy1` VALUES (39, 5, 1890, '-21', 37, 1869, '+21', 'desafiante', '2024-04-09');
INSERT INTO `t_confrontos_copy1` VALUES (40, 38, 1869, '-20', 18, 1863, '+20', 'desafiante', '2024-04-09');
INSERT INTO `t_confrontos_copy1` VALUES (41, 7, 1861, '+20', 10, 1859, '-20', 'desafiado', '2024-04-04');
INSERT INTO `t_confrontos_copy1` VALUES (42, 1, 1855, '+19', 34, 1844, '-19', 'desafiado', '2024-04-05');
INSERT INTO `t_confrontos_copy1` VALUES (43, 23, 1843, '+20', 27, 1841, '-20', 'desafiado', '2024-04-10');
INSERT INTO `t_confrontos_copy1` VALUES (44, 22, 1840, '-21', 28, 1817, '+21', 'desafiante', '2024-04-06');
INSERT INTO `t_confrontos_copy1` VALUES (45, 24, 1815, '0', 33, 1814, '0', 'empate', '2024-04-03');
INSERT INTO `t_confrontos_copy1` VALUES (46, 40, 1809, '+20', 42, 1809, '-20', 'desafiado', '2024-04-15');
INSERT INTO `t_confrontos_copy1` VALUES (47, 20, 1800, '-20', 3, 1799, '+20', 'desafiante', '2024-04-02');
INSERT INTO `t_confrontos_copy1` VALUES (48, 11, 1797, '0', 43, 1789, '0', 'empate', '2024-04-08');
INSERT INTO `t_confrontos_copy1` VALUES (49, 41, 1789, '+20', 4, 1782, '-20', 'desafiado', '2024-04-02');
INSERT INTO `t_confrontos_copy1` VALUES (50, 30, 1780, '-20', 31, 1780, '+20', 'desafiante', '2024-04-02');
INSERT INTO `t_confrontos_copy1` VALUES (51, 36, 1778, '+20', 26, 1770, '-20', 'desafiado', '2024-04-08');
INSERT INTO `t_confrontos_copy1` VALUES (52, 16, 1760, '+20', 35, 1760, '-20', 'desafiado', '2024-04-04');
INSERT INTO `t_confrontos_copy1` VALUES (53, 14, 1759, '-20', 6, 1756, '+20', 'desafiante', '2024-04-15');
INSERT INTO `t_confrontos_copy1` VALUES (54, 44, 1749, '-20', 8, 1743, '+20', 'desafiante', '2024-04-05');
INSERT INTO `t_confrontos_copy1` VALUES (55, 19, 1738, '-20', 13, 1736, '+20', 'desafiante', '2024-04-11');
INSERT INTO `t_confrontos_copy1` VALUES (56, 9, 1721, '+20', 32, 1718, '-20', 'desafiado', '2024-04-15');
INSERT INTO `t_confrontos_copy1` VALUES (57, 29, 1718, '+20', 39, 1717, '-20', 'desafiado', '2024-04-12');
INSERT INTO `t_confrontos_copy1` VALUES (58, 12, 1712, '+16', 15, 1644, '-16', 'desafiado', '2024-04-05');
INSERT INTO `t_confrontos_copy1` VALUES (59, 21, 2045, '+14', 25, 1940, '-14', 'desafiado', '2024-04-25');
INSERT INTO `t_confrontos_copy1` VALUES (60, 2, 1921, '+19', 17, 1908, '-19', 'desafiado', '2024-04-27');
INSERT INTO `t_confrontos_copy1` VALUES (61, 37, 1890, '0', 18, 1883, '0', 'empate', '2024-04-16');
INSERT INTO `t_confrontos_copy1` VALUES (62, 7, 1881, '+20', 1, 1874, '-20', 'desafiado', '2024-04-22');
INSERT INTO `t_confrontos_copy1` VALUES (63, 5, 1869, '-20', 23, 1863, '+20', 'desafiante', '2024-04-23');
INSERT INTO `t_confrontos_copy1` VALUES (64, 38, 1849, '-21', 10, 1839, '+21', 'desafiante', '2024-04-29');
INSERT INTO `t_confrontos_copy1` VALUES (65, 28, 1838, '+19', 40, 1829, '-19', 'desafiado', '2024-04-22');
INSERT INTO `t_confrontos_copy1` VALUES (66, 34, 1825, '+20', 27, 1821, '-20', 'desafiado', '2024-04-29');
INSERT INTO `t_confrontos_copy1` VALUES (67, 22, 1819, '+20', 3, 1819, '-20', 'desafiado', '2024-04-17');
INSERT INTO `t_confrontos_copy1` VALUES (68, 24, 1815, '+20', 33, 1814, '-20', 'desafiado', '2024-04-23');
INSERT INTO `t_confrontos_copy1` VALUES (69, 41, 1809, '-21', 31, 1800, '+21', 'desafiante', '2024-04-30');
INSERT INTO `t_confrontos_copy1` VALUES (70, 36, 1798, '+20', 11, 1797, '-20', 'desafiado', '2024-04-30');
INSERT INTO `t_confrontos_copy1` VALUES (71, 43, 1789, '+20', 42, 1789, '-20', 'desafiado', '2024-04-30');
INSERT INTO `t_confrontos_copy1` VALUES (72, 20, 1780, '+20', 16, 1780, '-20', 'desafiado', '2024-04-30');
INSERT INTO `t_confrontos_copy1` VALUES (73, 6, 1776, '+19', 8, 1763, '-19', 'desafiado', '2024-04-19');
INSERT INTO `t_confrontos_copy1` VALUES (74, 4, 1762, '-20', 30, 1760, '+20', 'desafiante', '2024-04-26');
INSERT INTO `t_confrontos_copy1` VALUES (75, 13, 1756, '-20', 26, 1750, '+20', 'desafiante', '2024-04-30');
INSERT INTO `t_confrontos_copy1` VALUES (76, 9, 1741, '-20', 35, 1740, '+20', 'desafiante', '2024-04-30');
INSERT INTO `t_confrontos_copy1` VALUES (77, 14, 1739, '+20', 29, 1738, '-20', 'desafiado', '2024-04-30');
INSERT INTO `t_confrontos_copy1` VALUES (78, 44, 1729, '-20', 12, 1728, '+20', 'desafiante', '2024-04-30');
INSERT INTO `t_confrontos_copy1` VALUES (79, 19, 1718, '+19', 32, 1698, '-19', 'desafiado', '2024-04-30');
INSERT INTO `t_confrontos_copy1` VALUES (80, 39, 1697, '+16', 15, 1628, '-16', 'desafiado', '2024-04-30');
INSERT INTO `t_confrontos_copy1` VALUES (81, 21, 2059, '-27', 2, 1940, '+27', 'desafiante', '2024-05-15');
INSERT INTO `t_confrontos_copy1` VALUES (82, 25, 1926, '-21', 7, 1901, '+21', 'desafiante', '2024-05-03');
INSERT INTO `t_confrontos_copy1` VALUES (83, 18, 1883, '-20', 23, 1883, '+20', 'desafiante', '2024-05-15');
INSERT INTO `t_confrontos_copy1` VALUES (84, 10, 1860, '+20', 28, 1857, '-20', 'desafiado', '2024-05-10');
INSERT INTO `t_confrontos_copy1` VALUES (85, 1, 1854, '-20', 5, 1849, '+20', 'desafiante', '2024-05-15');
INSERT INTO `t_confrontos_copy1` VALUES (86, 34, 1845, '+20', 22, 1839, '-20', 'desafiado', '2024-05-15');
INSERT INTO `t_confrontos_copy1` VALUES (87, 24, 1835, '+20', 38, 1828, '-20', 'desafiado', '2024-05-15');
INSERT INTO `t_confrontos_copy1` VALUES (88, 31, 1821, '+20', 36, 1818, '-20', 'desafiado', '2024-05-15');
INSERT INTO `t_confrontos_copy1` VALUES (89, 40, 1810, '+20', 43, 1809, '-20', 'desafiado', '2024-05-07');
INSERT INTO `t_confrontos_copy1` VALUES (90, 27, 1801, '-20', 20, 1800, '+20', 'desafiante', '2024-05-02');
INSERT INTO `t_confrontos_copy1` VALUES (91, 3, 1799, '+20', 6, 1795, '-20', 'desafiado', '2024-05-03');
INSERT INTO `t_confrontos_copy1` VALUES (92, 33, 1794, '+20', 41, 1788, '-20', 'desafiado', '2024-05-07');
INSERT INTO `t_confrontos_copy1` VALUES (93, 30, 1780, '+20', 11, 1777, '-20', 'desafiado', '2024-05-15');
INSERT INTO `t_confrontos_copy1` VALUES (94, 26, 1770, '+20', 42, 1769, '-20', 'desafiado', '2024-05-15');
INSERT INTO `t_confrontos_copy1` VALUES (95, 16, 1760, '+20', 35, 1760, '-20', 'desafiado', '2024-05-15');
INSERT INTO `t_confrontos_copy1` VALUES (96, 14, 1759, '-1', 12, 1748, '+1', 'empate', '2024-05-15');
INSERT INTO `t_confrontos_copy1` VALUES (97, 8, 1744, '-20', 4, 1742, '+20', 'desafiante', '2024-05-02');
INSERT INTO `t_confrontos_copy1` VALUES (98, 19, 1737, '-20', 13, 1736, '+20', 'desafiante', '2024-05-14');
INSERT INTO `t_confrontos_copy1` VALUES (99, 9, 1721, '+20', 29, 1718, '-20', 'desafiado', '2024-05-15');
INSERT INTO `t_confrontos_copy1` VALUES (100, 39, 1713, '+20', 44, 1709, '-20', 'desafiado', '2024-05-10');
INSERT INTO `t_confrontos_copy1` VALUES (101, 32, 1679, '+16', 15, 1612, '-16', 'desafiado', '2024-05-15');
INSERT INTO `t_confrontos_copy1` VALUES (102, 37, 1890, '+20', 17, 1889, '-20', 'desafiado', '2024-05-07');
INSERT INTO `t_confrontos_copy1` VALUES (103, 38, 1808, '+20', 30, 1800, '-20', 'desafiado', '2024-05-17');
INSERT INTO `t_confrontos_copy1` VALUES (105, 41, 1768, '+20', 4, 1762, '-20', 'desafiado', '2024-05-29');
INSERT INTO `t_confrontos_copy1` VALUES (106, 8, 1724, '0', 19, 1717, '0', 'empate', '2024-05-21');
INSERT INTO `t_confrontos_copy1` VALUES (107, 31, 1841, '-20', 28, 1837, '+20', 'desafiante', '2024-05-21');
INSERT INTO `t_confrontos_copy1` VALUES (108, 43, 1789, '-20', 27, 1781, '+20', 'desafiante', '2024-05-23');
INSERT INTO `t_confrontos_copy1` VALUES (109, 1, 1834, '-20', 40, 1830, '+20', 'desafiante', '2024-05-23');
INSERT INTO `t_confrontos_copy1` VALUES (110, 21, 2032, '-24', 2, 1967, '+24', 'desafiante', '2024-05-23');
INSERT INTO `t_confrontos_copy1` VALUES (111, 7, 1922, '-21', 37, 1910, '+21', 'desafiante', '2024-05-23');
INSERT INTO `t_confrontos_copy1` VALUES (112, 18, 1863, '0', 24, 1855, '0', 'empate', '2024-05-24');
INSERT INTO `t_confrontos_copy1` VALUES (113, 25, 1923, '-19', 23, 1949, '+19', 'desafiante', '2024-05-28');
INSERT INTO `t_confrontos_copy1` VALUES (114, 10, 1890, '-18', 17, 1920, '+18', 'desafiante', '2024-05-28');
INSERT INTO `t_confrontos_copy1` VALUES (115, 5, 1869, NULL, 34, 1865, NULL, NULL, '2024-05-30');
INSERT INTO `t_confrontos_copy1` VALUES (116, 20, 1833, NULL, 22, 1819, NULL, NULL, '2024-05-30');
INSERT INTO `t_confrontos_copy1` VALUES (117, 3, 1819, NULL, 33, 1814, NULL, NULL, '2024-05-30');
INSERT INTO `t_confrontos_copy1` VALUES (118, 36, 1798, '0', 26, 1790, '0', 'empate', '2024-05-30');
INSERT INTO `t_confrontos_copy1` VALUES (119, 16, 1780, NULL, 6, 1775, NULL, NULL, '2024-05-30');
INSERT INTO `t_confrontos_copy1` VALUES (120, 14, 1758, '+20', 11, 1757, '-20', 'desafiado', '2024-05-30');
INSERT INTO `t_confrontos_copy1` VALUES (121, 13, 1755, '-20', 12, 1756, '+20', 'desafiante', '2024-05-30');
INSERT INTO `t_confrontos_copy1` VALUES (122, 42, 1749, NULL, 9, 1741, NULL, NULL, '2024-05-30');
INSERT INTO `t_confrontos_copy1` VALUES (123, 35, 1740, NULL, 39, 1733, NULL, NULL, '2024-05-30');
INSERT INTO `t_confrontos_copy1` VALUES (124, 29, 1698, NULL, 32, 1695, NULL, NULL, '2024-05-30');
INSERT INTO `t_confrontos_copy1` VALUES (125, 44, 1689, NULL, 15, 1596, NULL, NULL, '2024-05-30');

-- ----------------------------
-- Table structure for t_site_settings
-- ----------------------------
DROP TABLE IF EXISTS `t_site_settings`;
CREATE TABLE `t_site_settings`  (
  `a_index` int NOT NULL AUTO_INCREMENT,
  `a_nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Nome do site',
  `a_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Titulo do Site',
  `a_cor_desafiado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'red',
  `a_cor_desafiante` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'blue',
  `a_cor_status_positivo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'green',
  `a_cor_status_negativo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'orange',
  PRIMARY KEY (`a_index`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_site_settings
-- ----------------------------
INSERT INTO `t_site_settings` VALUES (1, 'Chapadão do Céu - Xadrez', 'Xadrez de Chapadão do Céu', '#ff0000', '#0084ff', '#15c132', '#ff3300');

-- ----------------------------
-- Table structure for t_torneios
-- ----------------------------
DROP TABLE IF EXISTS `t_torneios`;
CREATE TABLE `t_torneios`  (
  `a_index` int NOT NULL AUTO_INCREMENT,
  `a_string` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`a_index`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_torneios
-- ----------------------------
INSERT INTO `t_torneios` VALUES (1, 'Torneio Inicial', 'https://swisssystem.org/tournament/dc5091fc94314f9cb44100c0fb848f76/standings');
INSERT INTO `t_torneios` VALUES (2, 'Mini-Torneio de Março', 'https://swisssystem.org/tournament/37eb378112bf4134abeb0668c4adda40/standings');
INSERT INTO `t_torneios` VALUES (3, 'Mini-Torneio de Maio', 'https://swisssystem.org/tournament/19ae2c2d8f394827922b9d7ee1afbc2e/standings');
INSERT INTO `t_torneios` VALUES (4, 'Mini-Torneio de Junho', 'https://swisssystem.org/tournament/6f00094261e14b48aacd98c90394d0d2/standings');

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users`  (
  `a_index` int NOT NULL AUTO_INCREMENT,
  `a_enable` int NULL DEFAULT NULL,
  `a_nome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a_usuario` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `a_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`a_index`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES (1, 1, 'Maykom', 'maykom', '80ec89834869e190fff1b6a828a8292c', 'maykom.sk9@gmail.com');
INSERT INTO `t_users` VALUES (2, 1, 'Ludimar', 'ludimar', 'cd834a3223e7535c8baca3e922c1a5d2', 'ludimar.costa@gmail.com');

SET FOREIGN_KEY_CHECKS = 1;
