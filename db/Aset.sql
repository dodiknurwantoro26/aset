CREATE DATABASE  IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `test`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Smart Phone','Samsung'),(2,'Laptop','Asus'),(3,'PC AIO','Acer'),(4,'Smart Phone','Iphone'),(5,'Smarphone','Xiaomi'),(7,'Motor','Honda'),(8,'Mobil','Toyota'),(10,'PC AIO','Asus'),(11,'Mobil','Honda'),(14,'Asus','Asus');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_aset`
--

DROP TABLE IF EXISTS `tbl_aset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_aset` (
  `id_aset` int NOT NULL AUTO_INCREMENT,
  `name_aset` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `os` varchar(255) NOT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`id_aset`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aset`
--

LOCK TABLES `tbl_aset` WRITE;
/*!40000 ALTER TABLE `tbl_aset` DISABLE KEYS */;
INSERT INTO `tbl_aset` VALUES (1,'Laptop Asus','Laptop','Asus','X1404ZA-01','Windows 11 x64',10),(2,'TP Link Omada','Access Point','TP-Link','TP660HD','-',12);
/*!40000 ALTER TABLE `tbl_aset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_fakultas`
--

DROP TABLE IF EXISTS `tbl_fakultas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_fakultas` (
  `id_fakultas` int NOT NULL AUTO_INCREMENT,
  `name_fakultas` varchar(45) NOT NULL,
  PRIMARY KEY (`id_fakultas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fakultas`
--

LOCK TABLES `tbl_fakultas` WRITE;
/*!40000 ALTER TABLE `tbl_fakultas` DISABLE KEYS */;
INSERT INTO `tbl_fakultas` VALUES (1,'Ilmu Komputer'),(2,'Pendidikan'),(3,'Ekonomi');
/*!40000 ALTER TABLE `tbl_fakultas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_galeries`
--

DROP TABLE IF EXISTS `tbl_galeries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_galeries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_upload` int DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_galeries`
--

LOCK TABLES `tbl_galeries` WRITE;
/*!40000 ALTER TABLE `tbl_galeries` DISABLE KEYS */;
INSERT INTO `tbl_galeries` VALUES (14,213,'1713528962_bc3ca976391103a19138.png'),(15,445,'1713529219_969f8f4ae31ddc94b5c4.png'),(16,445,'1713529219_7221e82a7239ff9a03f9.png'),(17,445,'1713529219_4a215941b11fe8c6862e.png');
/*!40000 ALTER TABLE `tbl_galeries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_jurusan`
--

DROP TABLE IF EXISTS `tbl_jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_jurusan` (
  `id_jurusan` int NOT NULL AUTO_INCREMENT,
  `name_jurusan` varchar(45) NOT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_jurusan`
--

LOCK TABLES `tbl_jurusan` WRITE;
/*!40000 ALTER TABLE `tbl_jurusan` DISABLE KEYS */;
INSERT INTO `tbl_jurusan` VALUES (1,'Sistem Informatika'),(2,'Teknik Informatika'),(3,'Sistem Komunikasi'),(4,'Manajemen'),(5,'Akuntansi');
/*!40000 ALTER TABLE `tbl_jurusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_komik`
--

DROP TABLE IF EXISTS `tbl_komik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_komik` (
  `id` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_komik`
--

LOCK TABLES `tbl_komik` WRITE;
/*!40000 ALTER TABLE `tbl_komik` DISABLE KEYS */;
INSERT INTO `tbl_komik` VALUES (1,'Naruto','naruto','Masashi Kishimoto','Shonen Jump','naruto.jpg',NULL,NULL),(2,'One Piece','one-piece','Eichiro Oda','Gramedia','onepiece.jpg',NULL,NULL),(10,'1234','1234','123','123','123',NULL,NULL),(11,'data perubahan','data-perubahan','v','qwe','c',NULL,NULL),(12,'as','as','ds','dw','sd',NULL,NULL);
/*!40000 ALTER TABLE `tbl_komik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mahasiswa`
--

DROP TABLE IF EXISTS `tbl_mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_mahasiswa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama_mhs` varchar(255) NOT NULL,
  `id_fakultas` int NOT NULL,
  `id_jurusan` int NOT NULL,
  `alamat` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mahasiswa`
--

LOCK TABLES `tbl_mahasiswa` WRITE;
/*!40000 ALTER TABLE `tbl_mahasiswa` DISABLE KEYS */;
INSERT INTO `tbl_mahasiswa` VALUES (1,'Dodik',1,1,'Jakarta'),(2,'Budi',1,2,'Bogor'),(3,'Ani',2,3,'Bekasi'),(4,'Rio',2,4,'Tangerang'),(5,'Devi',3,5,'Depok'),(6,'Anggun',3,6,'Bandung');
/*!40000 ALTER TABLE `tbl_mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_siswa`
--

DROP TABLE IF EXISTS `tbl_siswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_siswa` (
  `id_siswa` int NOT NULL AUTO_INCREMENT,
  `nis` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `foto_siswa` varchar(255) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_siswa`
--

LOCK TABLES `tbl_siswa` WRITE;
/*!40000 ALTER TABLE `tbl_siswa` DISABLE KEYS */;
INSERT INTO `tbl_siswa` VALUES (1,'123456','Dodik','dodik@test.com','1712205326_6442cb6d78bc872aee5e.png'),(2,'1234567','Dodik','dodik@test.com','1712205595_a6c2d9d8fa4ee23cd063.png');
/*!40000 ALTER TABLE `tbl_siswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_upload`
--

DROP TABLE IF EXISTS `tbl_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_upload` (
  `id_upload` int NOT NULL AUTO_INCREMENT,
  `ket` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  PRIMARY KEY (`id_upload`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_upload`
--

LOCK TABLES `tbl_upload` WRITE;
/*!40000 ALTER TABLE `tbl_upload` DISABLE KEYS */;
INSERT INTO `tbl_upload` VALUES (1,'gambar1','gambar1.jpg'),(2,'Test','screencapture-192-168-200-254-4444-webconsole-webpages-index-jsp-2024-03-07-08_56_17.png'),(3,'TEST 2','screencapture-192-168-200-254-4444-webconsole-webpages-index-jsp-2024-03-07-08_56_18.png'),(4,'test 3','screencapture-192-168-200-254-4444-webconsole-webpages-index-jsp-2024-03-06-08_41_27.png'),(5,'Test 4','Screenshot 2024-03-01 151355.png'),(6,'test 5','Screenshot 2024-02-29 145109.png'),(7,'Test 6','Screenshot 2024-02-29 170409.png'),(8,'test 7','medium-shot-man-with-hoodie-holding-laptop-e1646646997479-removebg-preview.png');
/*!40000 ALTER TABLE `tbl_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_uploads`
--

DROP TABLE IF EXISTS `tbl_uploads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_uploads` (
  `id_upload` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_upload`)
) ENGINE=InnoDB AUTO_INCREMENT=759 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_uploads`
--

LOCK TABLES `tbl_uploads` WRITE;
/*!40000 ALTER TABLE `tbl_uploads` DISABLE KEYS */;
INSERT INTO `tbl_uploads` VALUES (213,'test 1'),(445,'Test Album 1');
/*!40000 ALTER TABLE `tbl_uploads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_upload`
--

DROP TABLE IF EXISTS `test_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_upload` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_upload`
--

LOCK TABLES `test_upload` WRITE;
/*!40000 ALTER TABLE `test_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_upload` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-24  1:01:32
