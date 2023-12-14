-- --------------------------------------------------------
-- Διακομιστής:                  127.0.0.1
-- Έκδοση διακομιστή:            10.4.32-MariaDB - mariadb.org binary distribution
-- Λειτ. σύστημα διακομιστή:     Win64
-- HeidiSQL Έκδοση:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for gkriniaris
CREATE DATABASE IF NOT EXISTS `gkriniaris` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `gkriniaris`;

-- Dumping structure for πίνακας gkriniaris.board
CREATE TABLE IF NOT EXISTS `board` (
  `x` tinyint(1) NOT NULL,
  `y` tinyint(1) NOT NULL,
  `b_color` enum('B','G','Y','R','W','GR') NOT NULL,
  `piece_color` enum('B','G','Y','R') DEFAULT NULL,
  `piece` enum('PB1','PB2','PB3','PB4','PG1','PG2','PG3','PG4','PY1','PY2','PY3','PY4','PR1','PR2','PR3','PR4') DEFAULT NULL,
  `r_path` int(11) DEFAULT NULL CHECK (`r_path` is null or `r_path` >= 0 and `r_path` <= 43),
  `b_path` int(11) DEFAULT NULL CHECK (`b_path` is null or `b_path` >= 0 and `b_path` <= 43),
  `y_path` int(11) DEFAULT NULL CHECK (`y_path` is null or `y_path` >= 0 and `y_path` <= 43),
  `g_path` int(11) DEFAULT NULL CHECK (`g_path` is null or `g_path` >= 0 and `g_path` <= 43),
  PRIMARY KEY (`x`,`y`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table gkriniaris.board: ~122 rows (approximately)
INSERT INTO `board` (`x`, `y`, `b_color`, `piece_color`, `piece`, `r_path`, `b_path`, `y_path`, `g_path`) VALUES
	(0, 0, 'B', NULL, NULL, NULL, NULL, NULL, NULL),
	(1, 1, 'R', 'R', 'PR1', NULL, NULL, NULL, NULL),
	(1, 2, 'R', 'R', 'PR2', NULL, NULL, NULL, NULL),
	(1, 3, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(1, 4, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(1, 5, 'W', NULL, NULL, 8, 38, 28, 18),
	(1, 6, 'W', NULL, NULL, 9, 39, 29, 19),
	(1, 7, 'B', NULL, NULL, 10, 0, 30, 20),
	(1, 8, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(1, 9, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(1, 10, 'B', 'B', 'PB1', NULL, NULL, NULL, NULL),
	(1, 11, 'B', 'B', 'PB2', NULL, NULL, NULL, NULL),
	(2, 1, 'R', 'R', 'PR3', NULL, NULL, NULL, NULL),
	(2, 2, 'R', 'R', 'PR4', NULL, NULL, NULL, NULL),
	(2, 3, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 4, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 5, 'W', NULL, NULL, 7, 37, 27, 17),
	(2, 6, 'B', NULL, NULL, NULL, 40, NULL, NULL),
	(2, 7, 'W', NULL, NULL, 11, 1, 31, 21),
	(2, 8, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 9, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 10, 'B', 'B', 'PB3', NULL, NULL, NULL, NULL),
	(2, 11, 'B', 'B', 'PB4', NULL, NULL, NULL, NULL),
	(3, 1, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 2, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 3, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 4, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 5, 'W', NULL, NULL, 6, 36, 26, 16),
	(3, 6, 'B', NULL, NULL, NULL, 41, NULL, NULL),
	(3, 7, 'W', NULL, NULL, 12, 2, 32, 22),
	(3, 8, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 9, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 10, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 11, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 1, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 2, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 3, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 4, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 5, 'W', NULL, NULL, 5, 35, 25, 15),
	(4, 6, 'B', NULL, NULL, NULL, 42, NULL, NULL),
	(4, 7, 'W', NULL, NULL, 13, 3, 33, 23),
	(4, 8, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 9, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 10, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 11, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 1, 'R', NULL, NULL, 0, 30, 20, 10),
	(5, 2, 'W', NULL, NULL, 1, 31, 21, 11),
	(5, 3, 'W', NULL, NULL, 2, 32, 22, 12),
	(5, 4, 'W', NULL, NULL, 3, 33, 23, 13),
	(5, 5, 'W', NULL, NULL, 4, 34, 24, 14),
	(5, 6, 'B', NULL, NULL, NULL, 43, NULL, NULL),
	(5, 7, 'W', NULL, NULL, 14, 4, 34, 24),
	(5, 8, 'W', NULL, NULL, 15, 5, 35, 25),
	(5, 9, 'W', NULL, NULL, 16, 6, 36, 26),
	(5, 10, 'W', NULL, NULL, 17, 7, 37, 27),
	(5, 11, 'W', NULL, NULL, 18, 8, 38, 28),
	(6, 1, 'W', NULL, NULL, 39, 29, 19, 9),
	(6, 2, 'R', NULL, NULL, 40, NULL, NULL, NULL),
	(6, 3, 'R', NULL, NULL, 41, NULL, NULL, NULL),
	(6, 4, 'R', NULL, NULL, 42, NULL, NULL, NULL),
	(6, 5, 'R', NULL, NULL, 43, NULL, NULL, NULL),
	(6, 6, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 7, 'Y', NULL, NULL, NULL, NULL, 40, NULL),
	(6, 8, 'Y', NULL, NULL, NULL, NULL, 41, NULL),
	(6, 9, 'Y', NULL, NULL, NULL, NULL, 42, NULL),
	(6, 10, 'Y', NULL, NULL, NULL, NULL, 43, NULL),
	(6, 11, 'W', NULL, NULL, 19, 9, 39, 29),
	(7, 1, 'W', NULL, NULL, 38, 28, 18, 8),
	(7, 2, 'W', NULL, NULL, 37, 27, 17, 7),
	(7, 3, 'W', NULL, NULL, 36, 26, 16, 6),
	(7, 4, 'W', NULL, NULL, 35, 25, 15, 5),
	(7, 5, 'W', NULL, NULL, 34, 24, 14, 4),
	(7, 6, 'G', NULL, NULL, NULL, NULL, NULL, 40),
	(7, 7, 'W', NULL, NULL, 24, 14, 4, 34),
	(7, 8, 'W', NULL, NULL, 23, 13, 3, 33),
	(7, 9, 'W', NULL, NULL, 22, 12, 2, 32),
	(7, 10, 'W', NULL, NULL, 21, 11, 1, 31),
	(7, 11, 'Y', NULL, NULL, 20, 10, 0, 30),
	(8, 1, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 2, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 3, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 4, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 5, 'W', NULL, NULL, 33, 23, 13, 3),
	(8, 6, 'G', NULL, NULL, NULL, NULL, NULL, 41),
	(8, 7, 'W', NULL, NULL, 25, 15, 5, 35),
	(8, 8, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 9, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 10, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 11, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 1, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 2, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 3, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 4, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 5, 'W', NULL, NULL, 32, 22, 12, 2),
	(9, 6, 'G', NULL, NULL, NULL, NULL, NULL, 42),
	(9, 7, 'W', NULL, NULL, 26, 16, 6, 36),
	(9, 8, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 9, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 10, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 11, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 1, 'G', 'G', 'PG1', NULL, NULL, NULL, NULL),
	(10, 2, 'G', 'G', 'PG2', NULL, NULL, NULL, NULL),
	(10, 3, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 4, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 5, 'W', NULL, NULL, 31, 21, 11, 1),
	(10, 6, 'G', NULL, NULL, NULL, NULL, NULL, 43),
	(10, 7, 'W', NULL, NULL, 27, 17, 7, 37),
	(10, 8, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 9, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 10, 'Y', 'Y', 'PY1', NULL, NULL, NULL, NULL),
	(10, 11, 'Y', 'Y', 'PY2', NULL, NULL, NULL, NULL),
	(11, 1, 'G', 'G', 'PG3', NULL, NULL, NULL, NULL),
	(11, 2, 'G', 'G', 'PG4', NULL, NULL, NULL, NULL),
	(11, 3, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 4, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 5, 'G', NULL, NULL, 30, 20, 10, 0),
	(11, 6, 'W', NULL, NULL, 29, 19, 9, 39),
	(11, 7, 'W', NULL, NULL, 28, 18, 8, 38),
	(11, 8, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 9, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 10, 'Y', 'Y', 'PY3', NULL, NULL, NULL, NULL),
	(11, 11, 'Y', 'Y', 'PY4', NULL, NULL, NULL, NULL);

-- Dumping structure for πίνακας gkriniaris.board_empty
CREATE TABLE IF NOT EXISTS `board_empty` (
  `x` tinyint(1) NOT NULL,
  `y` tinyint(1) NOT NULL,
  `b_color` enum('B','G','Y','R','W','GR') NOT NULL,
  `piece_color` enum('B','G','Y','R') DEFAULT NULL,
  `piece` enum('PB1','PB2','PB3','PB4','PG1','PG2','PG3','PG4','PY1','PY2','PY3','PY4','PR1','PR2','PR3','PR4') DEFAULT NULL,
  `r_path` int(11) DEFAULT NULL,
  `b_path` int(11) DEFAULT NULL,
  `y_path` int(11) DEFAULT NULL,
  `g_path` int(11) DEFAULT NULL,
  PRIMARY KEY (`x`,`y`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table gkriniaris.board_empty: ~122 rows (approximately)
INSERT INTO `board_empty` (`x`, `y`, `b_color`, `piece_color`, `piece`, `r_path`, `b_path`, `y_path`, `g_path`) VALUES
	(0, 0, 'B', NULL, NULL, NULL, NULL, NULL, NULL),
	(1, 1, 'R', 'R', 'PR1', NULL, NULL, NULL, NULL),
	(1, 2, 'R', 'R', 'PR2', NULL, NULL, NULL, NULL),
	(1, 3, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(1, 4, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(1, 5, 'W', NULL, NULL, 8, 38, 28, 18),
	(1, 6, 'W', NULL, NULL, 9, 39, 29, 19),
	(1, 7, 'B', NULL, NULL, 10, 0, 30, 20),
	(1, 8, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(1, 9, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(1, 10, 'B', 'B', 'PB1', NULL, NULL, NULL, NULL),
	(1, 11, 'B', 'B', 'PB2', NULL, NULL, NULL, NULL),
	(2, 1, 'R', 'R', 'PR3', NULL, NULL, NULL, NULL),
	(2, 2, 'R', 'R', 'PR4', NULL, NULL, NULL, NULL),
	(2, 3, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 4, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 5, 'W', NULL, NULL, 7, 37, 27, 17),
	(2, 6, 'B', NULL, NULL, NULL, 40, NULL, NULL),
	(2, 7, 'W', NULL, NULL, 11, 1, 31, 21),
	(2, 8, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 9, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 10, 'B', 'B', 'PB3', NULL, NULL, NULL, NULL),
	(2, 11, 'B', 'B', 'PB4', NULL, NULL, NULL, NULL),
	(3, 1, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 2, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 3, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 4, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 5, 'W', NULL, NULL, 6, 36, 26, 16),
	(3, 6, 'B', NULL, NULL, NULL, 41, NULL, NULL),
	(3, 7, 'W', NULL, NULL, 12, 2, 32, 22),
	(3, 8, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 9, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 10, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 11, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 1, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 2, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 3, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 4, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 5, 'W', NULL, NULL, 5, 35, 25, 15),
	(4, 6, 'B', NULL, NULL, NULL, 42, NULL, NULL),
	(4, 7, 'W', NULL, NULL, 13, 3, 33, 23),
	(4, 8, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 9, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 10, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 11, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 1, 'R', NULL, NULL, 0, 30, 20, 10),
	(5, 2, 'W', NULL, NULL, 1, 31, 21, 11),
	(5, 3, 'W', NULL, NULL, 2, 32, 22, 12),
	(5, 4, 'W', NULL, NULL, 3, 33, 23, 13),
	(5, 5, 'W', NULL, NULL, 4, 34, 24, 14),
	(5, 6, 'B', NULL, NULL, NULL, 43, NULL, NULL),
	(5, 7, 'W', NULL, NULL, 14, 4, 34, 24),
	(5, 8, 'W', NULL, NULL, 15, 5, 35, 25),
	(5, 9, 'W', NULL, NULL, 16, 6, 36, 26),
	(5, 10, 'W', NULL, NULL, 17, 7, 37, 27),
	(5, 11, 'W', NULL, NULL, 18, 8, 38, 28),
	(6, 1, 'W', NULL, NULL, 39, 29, 19, 9),
	(6, 2, 'R', NULL, NULL, 40, NULL, NULL, NULL),
	(6, 3, 'R', NULL, NULL, 41, NULL, NULL, NULL),
	(6, 4, 'R', NULL, NULL, 42, NULL, NULL, NULL),
	(6, 5, 'R', NULL, NULL, 43, NULL, NULL, NULL),
	(6, 6, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 7, 'Y', NULL, NULL, NULL, NULL, 40, NULL),
	(6, 8, 'Y', NULL, NULL, NULL, NULL, 41, NULL),
	(6, 9, 'Y', NULL, NULL, NULL, NULL, 42, NULL),
	(6, 10, 'Y', NULL, NULL, NULL, NULL, 43, NULL),
	(6, 11, 'W', NULL, NULL, 19, 9, 39, 29),
	(7, 1, 'W', NULL, NULL, 38, 28, 18, 8),
	(7, 2, 'W', NULL, NULL, 37, 27, 17, 7),
	(7, 3, 'W', NULL, NULL, 36, 26, 16, 6),
	(7, 4, 'W', NULL, NULL, 35, 25, 15, 5),
	(7, 5, 'W', NULL, NULL, 34, 24, 14, 4),
	(7, 6, 'G', NULL, NULL, NULL, NULL, NULL, 40),
	(7, 7, 'W', NULL, NULL, 24, 14, 4, 34),
	(7, 8, 'W', NULL, NULL, 23, 13, 3, 33),
	(7, 9, 'W', NULL, NULL, 22, 12, 2, 32),
	(7, 10, 'W', NULL, NULL, 21, 11, 1, 31),
	(7, 11, 'Y', NULL, NULL, 20, 10, 0, 30),
	(8, 1, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 2, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 3, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 4, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 5, 'W', NULL, NULL, 33, 23, 13, 3),
	(8, 6, 'G', NULL, NULL, NULL, NULL, NULL, 41),
	(8, 7, 'W', NULL, NULL, 25, 15, 5, 35),
	(8, 8, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 9, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 10, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 11, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 1, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 2, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 3, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 4, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 5, 'W', NULL, NULL, 32, 22, 12, 2),
	(9, 6, 'G', NULL, NULL, NULL, NULL, NULL, 42),
	(9, 7, 'W', NULL, NULL, 26, 16, 6, 36),
	(9, 8, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 9, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 10, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 11, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 1, 'G', 'G', 'PG1', NULL, NULL, NULL, NULL),
	(10, 2, 'G', 'G', 'PG2', NULL, NULL, NULL, NULL),
	(10, 3, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 4, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 5, 'W', NULL, NULL, 31, 21, 11, 1),
	(10, 6, 'G', NULL, NULL, NULL, NULL, NULL, 43),
	(10, 7, 'W', NULL, NULL, 27, 17, 7, 37),
	(10, 8, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 9, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 10, 'Y', 'Y', 'PY1', NULL, NULL, NULL, NULL),
	(10, 11, 'Y', 'Y', 'PY2', NULL, NULL, NULL, NULL),
	(11, 1, 'G', 'G', 'PG3', NULL, NULL, NULL, NULL),
	(11, 2, 'G', 'G', 'PG4', NULL, NULL, NULL, NULL),
	(11, 3, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 4, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 5, 'G', NULL, NULL, 30, 20, 10, 0),
	(11, 6, 'W', NULL, NULL, 29, 19, 9, 39),
	(11, 7, 'W', NULL, NULL, 28, 18, 8, 38),
	(11, 8, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 9, 'GR', NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 10, 'Y', 'Y', 'PY3', NULL, NULL, NULL, NULL),
	(11, 11, 'Y', 'Y', 'PY4', NULL, NULL, NULL, NULL);

-- Dumping structure for procedure gkriniaris.clean_board
DELIMITER //
CREATE PROCEDURE `clean_board`()
BEGIN 
		REPLACE INTO board SELECT * FROM board_empty;
		REPLACE INTO dice SELECT * FROM dice_reset;
END//
DELIMITER ;

-- Dumping structure for πίνακας gkriniaris.dice
CREATE TABLE IF NOT EXISTS `dice` (
  `prev_x` tinyint(4) DEFAULT NULL,
  `prev_y` tinyint(4) DEFAULT NULL,
  `new_x` tinyint(4) DEFAULT NULL,
  `new_y` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `p_turn` enum('R','G','B','Y') DEFAULT NULL,
  `piece` varchar(3) NOT NULL,
  `dice` tinyint(4) DEFAULT NULL,
  `prev_path` tinyint(4) DEFAULT NULL,
  `new_path` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`piece`,`created_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table gkriniaris.dice: ~16 rows (approximately)
INSERT INTO `dice` (`prev_x`, `prev_y`, `new_x`, `new_y`, `created_at`, `p_turn`, `piece`, `dice`, `prev_path`, `new_path`) VALUES
	(1, 10, NULL, NULL, '2023-12-14 13:14:32', 'B', 'PB1', 0, NULL, NULL),
	(1, 11, NULL, NULL, '2023-12-14 13:14:32', 'B', 'PB2', 0, NULL, NULL),
	(2, 10, NULL, NULL, '2023-12-14 13:14:32', 'B', 'PB3', 0, NULL, NULL),
	(2, 11, NULL, NULL, '2023-12-14 13:14:32', 'B', 'PB4', 0, NULL, NULL),
	(10, 1, NULL, NULL, '2023-12-14 13:14:32', 'G', 'PG1', 0, NULL, NULL),
	(10, 2, NULL, NULL, '2023-12-14 13:14:32', 'G', 'PG2', 0, NULL, NULL),
	(11, 1, NULL, NULL, '2023-12-14 13:14:32', 'G', 'PG3', 0, NULL, NULL),
	(11, 2, NULL, NULL, '2023-12-14 13:14:32', 'G', 'PG4', 0, NULL, NULL),
	(1, 1, NULL, NULL, '2023-12-14 13:14:32', 'R', 'PR1', 0, NULL, NULL),
	(1, 2, NULL, NULL, '2023-12-14 13:14:32', 'R', 'PR2', 0, NULL, NULL),
	(2, 1, NULL, NULL, '2023-12-14 13:14:32', 'R', 'PR3', 0, NULL, NULL),
	(2, 2, NULL, NULL, '2023-12-14 13:14:32', 'R', 'PR4', 0, NULL, NULL),
	(10, 10, NULL, NULL, '2023-12-14 13:14:32', 'Y', 'PY1', 0, NULL, NULL),
	(10, 11, NULL, NULL, '2023-12-14 13:14:32', 'Y', 'PY2', 0, NULL, NULL),
	(11, 10, NULL, NULL, '2023-12-14 13:14:32', 'Y', 'PY3', 0, NULL, NULL),
	(11, 11, NULL, NULL, '2023-12-14 13:14:32', 'Y', 'PY4', 0, NULL, NULL);

-- Dumping structure for πίνακας gkriniaris.dice_empty
CREATE TABLE IF NOT EXISTS `dice_empty` (
  `prev_x` tinyint(4) DEFAULT NULL,
  `prev_y` tinyint(4) DEFAULT NULL,
  `new_x` tinyint(4) DEFAULT NULL,
  `new_y` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `p_turn` enum('R','G','B','Y') DEFAULT NULL,
  `piece` varchar(3) NOT NULL,
  `dice` tinyint(4) DEFAULT NULL,
  `prev_path` tinyint(4) DEFAULT NULL,
  `new_path` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`piece`,`created_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table gkriniaris.dice_empty: ~16 rows (approximately)
INSERT INTO `dice_empty` (`prev_x`, `prev_y`, `new_x`, `new_y`, `created_at`, `p_turn`, `piece`, `dice`, `prev_path`, `new_path`) VALUES
	(1, 10, NULL, NULL, '2023-12-14 13:14:32', 'B', 'PB1', 0, NULL, NULL),
	(1, 11, NULL, NULL, '2023-12-14 13:14:32', 'B', 'PB2', 0, NULL, NULL),
	(2, 10, NULL, NULL, '2023-12-14 13:14:32', 'B', 'PB3', 0, NULL, NULL),
	(2, 11, NULL, NULL, '2023-12-14 13:14:32', 'B', 'PB4', 0, NULL, NULL),
	(10, 1, NULL, NULL, '2023-12-14 13:14:32', 'G', 'PG1', 0, NULL, NULL),
	(10, 2, NULL, NULL, '2023-12-14 13:14:32', 'G', 'PG2', 0, NULL, NULL),
	(11, 1, NULL, NULL, '2023-12-14 13:14:32', 'G', 'PG3', 0, NULL, NULL),
	(11, 2, NULL, NULL, '2023-12-14 13:14:32', 'G', 'PG4', 0, NULL, NULL),
	(1, 1, NULL, NULL, '2023-12-14 13:14:32', 'R', 'PR1', 0, NULL, NULL),
	(1, 2, NULL, NULL, '2023-12-14 13:14:32', 'R', 'PR2', 0, NULL, NULL),
	(2, 1, NULL, NULL, '2023-12-14 13:14:32', 'R', 'PR3', 0, NULL, NULL),
	(2, 2, NULL, NULL, '2023-12-14 13:14:32', 'R', 'PR4', 0, NULL, NULL),
	(10, 10, NULL, NULL, '2023-12-14 13:14:32', 'Y', 'PY1', 0, NULL, NULL),
	(10, 11, NULL, NULL, '2023-12-14 13:14:32', 'Y', 'PY2', 0, NULL, NULL),
	(11, 10, NULL, NULL, '2023-12-14 13:14:32', 'Y', 'PY3', 0, NULL, NULL),
	(11, 11, NULL, NULL, '2023-12-14 13:14:32', 'Y', 'PY4', 0, NULL, NULL);

-- Dumping structure for πίνακας gkriniaris.game_status
CREATE TABLE IF NOT EXISTS `game_status` (
  `status` enum('not active','initialized','started','ended','aborded') NOT NULL DEFAULT 'not active',
  `p_turn` enum('R','G','B','Y') DEFAULT NULL,
  `result` enum('R','G','B','Y','D') DEFAULT NULL,
  `last_change` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table gkriniaris.game_status: ~0 rows (approximately)
INSERT INTO `game_status` (`status`, `p_turn`, `result`, `last_change`) VALUES
	('started', 'Y', 'D', '2023-12-08 14:00:25');

-- Dumping structure for procedure gkriniaris.move_piece
DELIMITER //
CREATE PROCEDURE `move_piece`(
	IN `x1` TINYINT,
	IN `y1` TINYINT,
	IN `x2` TINYINT,
	IN `y2` TINYINT
)
BEGIN
	DECLARE p,p_color CHAR;
	
	SELECT piece , piece_color INTO p,p_color FROM `board` WHERE X=x1 AND Y=y1;
	
	UPDATE board
	SET piece=p, piece_color=p_color
	WHERE X=x2 AND Y=y2;
	
	UPDATE board
	SET piece=NULL, piece_color=NULL
	WHERE X=x1 AND Y=y1;
	
	UPDATE game_status
	SET p_turn = 
	    IF(p_color = 'R', 'B',
	    IF(p_color = 'B', 'Y',
	    IF(p_color = 'Y', 'G',
	    IF(p_color = 'G', 'R', p_turn))));
    END//
DELIMITER ;

-- Dumping structure for πίνακας gkriniaris.players
CREATE TABLE IF NOT EXISTS `players` (
  `username` varchar(20) DEFAULT NULL,
  `piece_color` enum('R','G','B','Y') NOT NULL,
  `token` varchar(100) DEFAULT NULL,
  `last_action` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`piece_color`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table gkriniaris.players: ~4 rows (approximately)
INSERT INTO `players` (`username`, `piece_color`, `token`, `last_action`) VALUES
	(NULL, 'R', NULL, NULL),
	(NULL, 'G', NULL, NULL),
	(NULL, 'B', NULL, NULL),
	(NULL, 'Y', NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
