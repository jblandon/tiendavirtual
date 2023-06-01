-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: tiendavirtual
-- ------------------------------------------------------
-- Server version	5.6.51

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_carrito`
--

DROP TABLE IF EXISTS `tb_carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_carrito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tb_producto_id` int(11) DEFAULT NULL,
  `tb_usuario_id` int(11) DEFAULT NULL,
  `cantidad` varchar(200) DEFAULT NULL,
  `compra_confirmada` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_carrito`
--

LOCK TABLES `tb_carrito` WRITE;
/*!40000 ALTER TABLE `tb_carrito` DISABLE KEYS */;
INSERT INTO `tb_carrito` VALUES (1,1,1,'1',1);
/*!40000 ALTER TABLE `tb_carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_productos`
--

DROP TABLE IF EXISTS `tb_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `tipo` varchar(30) NOT NULL,
  `promo` varchar(30) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `valor` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `empresa` varchar(100) DEFAULT NULL,
  `publicado` varchar(100) DEFAULT NULL,
  `fecha` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_productos`
--

LOCK TABLES `tb_productos` WRITE;
/*!40000 ALTER TABLE `tb_productos` DISABLE KEYS */;
INSERT INTO `tb_productos` VALUES (1,'Arroz','Arroz de grano largo','Granos','NO','arroz.jpg',2,499,'Diana','2023-04-10','2023-04-29'),(2,'Frijoles','Frijoles negros','Legumbres','NO','frijoles.jpg',1,300,'La Costeña','2023-04-10','2023-04-29'),(3,'Aceite','Aceite de oliva extra virgen','Aceites','NO','aceite.jpg',8,200,'Bertolli','2023-04-10','2023-04-29'),(4,'Leche','Leche entera pasteurizada','Lácteos','NO','leche.jpg',2,100,'Alquería','2023-04-10','2023-04-29'),(5,'Queso','Queso tipo cheddar','Lácteos','NO','queso.jpg',3,80,'Colanta','2023-04-10','2023-04-29'),(6,'Yogurt','Yogurt natural','Lácteos','NO','yogurt.jpg',1,120,'Alpina','2023-04-10','2023-04-29'),(7,'Huevos','Huevos de gallina','Huevos','NO','huevos.jpg',3,50,'Santa María','2023-04-10','2023-04-29'),(8,'Pollo','Pechuga de pollo sin hueso','Carnes','NO','pollo.jpg',8,20,'Frigo','2023-04-10','2023-04-29'),(9,'Carne Molida','Carne molida de res','Carnes','NO','carnemolida.jpg',9,10,'Carnes San Juan','2023-04-10','2023-04-29'),(10,'Cerdo','Costilla de cerdo','Carnes','NO','cerdo.jpg',6,15,'Carnes del Valle','2023-04-10','2023-04-29'),(11,'Pescado','Filete de pescado fresco','Pescados','NO','pescado.jpg',10,5,'Pescadería el Mar','2023-04-10','2023-04-29'),(12,'Salmón','Filete de salmón fresco','Pescados','NO','salmon.jpg',15,3,'Pescados del Pacífico','2023-04-29','2023-04-29'),(13,'Camaron','Camarón mediano','Pescados','SI','camaron.jpg',20,2,'Pescadería del Mar','2023-04-29','2023-04-29'),(46,'Carne de res','Lomo de res de primera calidad','Carnes','SI','carne_res.jpg',11,15,'Carnes El Corte','2023-04-29','2023-04-29'),(47,'Carne de cerdo','Pierna de cerdo sin hueso','Carnes','SI','carne_cerdo.jpg',8,10,'Carnes La Huerta','2023-04-29','2023-04-29'),(48,'Camarones','Camarones jumbo congelados','Pescados','SI','camarones.jpg',16,2,'Pescadería el Mar','2023-04-29','2023-04-29'),(49,'Arándanos','Arándanos frescos','Frutas','SI','arandanos.jpg',5,30,'Frutería El Paraíso','2023-04-29','2023-04-29'),(50,'Fresas','Fresas frescas','Frutas','SI','fresas.jpg',4,25,'Frutería La Huerta','2023-04-29','2023-04-29'),(51,'Plátanos','Plátanos maduros','Frutas','SI','platanos.jpg',1,50,'Frutería La Huerta','2023-04-29','2023-04-29'),(52,'Agua mineral','Agua mineral sin gas','Bebidas','SI','agua_mineral.jpg',1,100,'Agua de Manantial','2023-04-29','2023-04-29'),(53,'Refresco','Refresco sabor cola','Bebidas','SI','refresco.jpg',2,80,'Coca-Cola','2023-04-29','2023-04-29');
/*!40000 ALTER TABLE `tb_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuarios`
--

DROP TABLE IF EXISTS `tb_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `correo` varchar(70) NOT NULL,
  `nick` varchar(20) NOT NULL,
  `pass` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuarios`
--

LOCK TABLES `tb_usuarios` WRITE;
/*!40000 ALTER TABLE `tb_usuarios` DISABLE KEYS */;
INSERT INTO `tb_usuarios` VALUES (1,'admin@admin.com','admin','21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `tb_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-29 17:53:10
