/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.14-MariaDB : Database - azaleia
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`azaleia` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `azaleia`;

/*Table structure for table `deportivos` */

DROP TABLE IF EXISTS `deportivos`;

CREATE TABLE `deportivos` (
  `id_deportivos` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(100) DEFAULT NULL,
  `talla` varchar(100) DEFAULT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `stack` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_deportivos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `deportivos` */

/*Table structure for table `formulario` */

DROP TABLE IF EXISTS `formulario`;

CREATE TABLE `formulario` (
  `id_formulario` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id_formulario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `formulario` */

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id_login` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `contraseña` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `login` */

/*Table structure for table `sandalias` */

DROP TABLE IF EXISTS `sandalias`;

CREATE TABLE `sandalias` (
  `id_sandalias` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(100) DEFAULT NULL,
  `talla` varchar(100) DEFAULT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `stack` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_sandalias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sandalias` */

/*Table structure for table `tacones` */

DROP TABLE IF EXISTS `tacones`;

CREATE TABLE `tacones` (
  `id_tacones` int(10) NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(100) DEFAULT NULL,
  `talla` varchar(100) DEFAULT NULL,
  `referencia` varchar(100) DEFAULT NULL,
  `stack` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_tacones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tacones` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
