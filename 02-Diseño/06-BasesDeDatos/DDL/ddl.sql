-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kairosbd
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actividad`
--

DROP TABLE IF EXISTS `actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `actividad` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `numero_actividad` int(11) NOT NULL,
  `nombre_actividad` varchar(400) NOT NULL,
  `fase_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fase_id` (`fase_id`,`numero_actividad`),
  CONSTRAINT `fk_actividad_fase_id` FOREIGN KEY (`fase_id`) REFERENCES `fase` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `actividad_planeacion`
--

DROP TABLE IF EXISTS `actividad_planeacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `actividad_planeacion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `actividad_id` bigint(20) NOT NULL,
  `planeacion_trimestre_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `actividad_id` (`actividad_id`,`planeacion_trimestre_id`),
  KEY `fk_actividad_planeacion_planeacion_trimestre_id` (`planeacion_trimestre_id`),
  CONSTRAINT `fk_actividad_planeacion_actividad_id` FOREIGN KEY (`actividad_id`) REFERENCES `actividad` (`id`),
  CONSTRAINT `fk_actividad_planeacion_planeacion_trimestre_id` FOREIGN KEY (`planeacion_trimestre_id`) REFERENCES `planeacion_trimestre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ambiente`
--

DROP TABLE IF EXISTS `ambiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ambiente` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `numero_ambiente` varchar(50) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `estado` varchar(40) NOT NULL,
  `limitacion` varchar(40) NOT NULL,
  `sede_id` bigint(20) NOT NULL,
  `ambiente_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sede_id` (`sede_id`,`ambiente_id`,`numero_ambiente`),
  KEY `fk_ambiente_ambiente_id` (`ambiente_id`),
  CONSTRAINT `fk_ambiente_ambiente_id` FOREIGN KEY (`ambiente_id`) REFERENCES `tipo_ambiente` (`id`),
  CONSTRAINT `fk_ambiente_sede_id` FOREIGN KEY (`sede_id`) REFERENCES `sede` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_area` varchar(40) NOT NULL,
  `estado` varchar(40) NOT NULL,
  `url_logo` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_area_nombre_area` (`nombre_area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `area_instructor`
--

DROP TABLE IF EXISTS `area_instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `area_instructor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `estado` varchar(40) NOT NULL,
  `instructor_id` bigint(20) NOT NULL,
  `area_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `instructor_id` (`instructor_id`,`area_id`),
  KEY `fk_area_instructor_area_id` (`area_id`),
  CONSTRAINT `fk_area_instructor_area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
  CONSTRAINT `fk_area_instructor_instructor_id` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cliente` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `numero_documento` varchar(50) NOT NULL,
  `primer_nombre` varchar(50) NOT NULL,
  `segundo_nombre` varchar(50) DEFAULT NULL,
  `primer_apellido` varchar(50) NOT NULL,
  `segundo_apellido` varchar(50) DEFAULT NULL,
  `tipo_docuemento_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_cliente_user_id` (`user_id`),
  UNIQUE KEY `tipo_docuemento_id` (`tipo_docuemento_id`,`numero_documento`),
  CONSTRAINT `fk_cliente_tipo_docuemento_id` FOREIGN KEY (`tipo_docuemento_id`) REFERENCES `tipo_documento` (`id`),
  CONSTRAINT `fk_cliente_user_id` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `competencia`
--

DROP TABLE IF EXISTS `competencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `competencia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigo_competencia` varchar(50) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `programa_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `programa_id` (`programa_id`,`codigo_competencia`),
  CONSTRAINT `fk_competencia_programa_id` FOREIGN KEY (`programa_id`) REFERENCES `programa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `databasechangelog`
--

DROP TABLE IF EXISTS `databasechangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `databasechangelog` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `databasechangeloglock`
--

DROP TABLE IF EXISTS `databasechangeloglock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `databasechangeloglock` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dia`
--

DROP TABLE IF EXISTS `dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_dia` varchar(40) NOT NULL,
  `estado` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_dia_nombre_dia` (`nombre_dia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dia_jornada`
--

DROP TABLE IF EXISTS `dia_jornada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dia_jornada` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hora_inicio` date NOT NULL,
  `hora_fin` date NOT NULL,
  `jornada_instructor_id` bigint(20) NOT NULL,
  `dia_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hora_inicio` (`hora_inicio`,`hora_fin`,`jornada_instructor_id`,`dia_id`),
  KEY `fk_dia_jornada_jornada_instructor_id` (`jornada_instructor_id`),
  KEY `fk_dia_jornada_dia_id` (`dia_id`),
  CONSTRAINT `fk_dia_jornada_dia_id` FOREIGN KEY (`dia_id`) REFERENCES `dia` (`id`),
  CONSTRAINT `fk_dia_jornada_jornada_instructor_id` FOREIGN KEY (`jornada_instructor_id`) REFERENCES `jornada_instructor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `disponibilidad_competencias`
--

DROP TABLE IF EXISTS `disponibilidad_competencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `disponibilidad_competencias` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `instructor_id` bigint(20) NOT NULL,
  `competencia_id` bigint(20) NOT NULL,
  `vinculacion_instructor_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `instructor_id` (`instructor_id`,`competencia_id`,`vinculacion_instructor_id`),
  KEY `fk_disponibilidad_competencias_competencia_id` (`competencia_id`),
  KEY `fk_disponibilidad_competencias_vinculacion_instructor_id` (`vinculacion_instructor_id`),
  CONSTRAINT `fk_disponibilidad_competencias_competencia_id` FOREIGN KEY (`competencia_id`) REFERENCES `competencia` (`id`),
  CONSTRAINT `fk_disponibilidad_competencias_instructor_id` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`),
  CONSTRAINT `fk_disponibilidad_competencias_vinculacion_instructor_id` FOREIGN KEY (`vinculacion_instructor_id`) REFERENCES `vinculacion_instructor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `disponibilidad_horaria`
--

DROP TABLE IF EXISTS `disponibilidad_horaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `disponibilidad_horaria` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `instructor_id` bigint(20) NOT NULL,
  `disponibilidad_horaria_id` bigint(20) NOT NULL,
  `vinculacion_instructor_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `instructor_id` (`instructor_id`,`disponibilidad_horaria_id`,`vinculacion_instructor_id`),
  KEY `fk_disponibilidad_horaria_disponibilidad_horaria_id` (`disponibilidad_horaria_id`),
  KEY `fk_disponibilidad_horaria_vinculacion_instructor_id` (`vinculacion_instructor_id`),
  CONSTRAINT `fk_disponibilidad_horaria_disponibilidad_horaria_id` FOREIGN KEY (`disponibilidad_horaria_id`) REFERENCES `jornada_instructor` (`id`),
  CONSTRAINT `fk_disponibilidad_horaria_instructor_id` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`),
  CONSTRAINT `fk_disponibilidad_horaria_vinculacion_instructor_id` FOREIGN KEY (`vinculacion_instructor_id`) REFERENCES `vinculacion_instructor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estado_ficha`
--

DROP TABLE IF EXISTS `estado_ficha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `estado_ficha` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_estado` varchar(20) NOT NULL,
  `estado` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_estado_ficha_nombre_estado` (`nombre_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fase`
--

DROP TABLE IF EXISTS `fase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fase` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) NOT NULL,
  `estado` varchar(40) NOT NULL,
  `proyecto_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `proyecto_id` (`proyecto_id`,`nombre`),
  CONSTRAINT `fk_fase_proyecto_id` FOREIGN KEY (`proyecto_id`) REFERENCES `proyecto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ficha`
--

DROP TABLE IF EXISTS `ficha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ficha` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `numero_ficha` varchar(100) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `ruta` varchar(40) NOT NULL,
  `estado_ficha_id` bigint(20) NOT NULL,
  `programa_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_ficha_numero_ficha` (`numero_ficha`),
  KEY `fk_ficha_estado_ficha_id` (`estado_ficha_id`),
  KEY `fk_ficha_programa_id` (`programa_id`),
  CONSTRAINT `fk_ficha_estado_ficha_id` FOREIGN KEY (`estado_ficha_id`) REFERENCES `estado_ficha` (`id`),
  CONSTRAINT `fk_ficha_programa_id` FOREIGN KEY (`programa_id`) REFERENCES `programa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ficha_has_trimestre`
--

DROP TABLE IF EXISTS `ficha_has_trimestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ficha_has_trimestre` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `trimestre_id` bigint(20) NOT NULL,
  `ficha_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trimestre_id` (`trimestre_id`,`ficha_id`),
  KEY `fk_ficha_has_trimestre_ficha_id` (`ficha_id`),
  CONSTRAINT `fk_ficha_has_trimestre_ficha_id` FOREIGN KEY (`ficha_id`) REFERENCES `ficha` (`id`),
  CONSTRAINT `fk_ficha_has_trimestre_trimestre_id` FOREIGN KEY (`trimestre_id`) REFERENCES `trimestre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `horario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hora_inicio` datetime NOT NULL,
  `hora_fin` datetime NOT NULL,
  `instructor_id` bigint(20) NOT NULL,
  `modalidad_id` bigint(20) NOT NULL,
  `dia_id` bigint(20) NOT NULL,
  `version_horario_id` bigint(20) NOT NULL,
  `ambiente_id` bigint(20) NOT NULL,
  `ficha_has_trimestre_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hora_inicio` (`hora_inicio`,`instructor_id`,`modalidad_id`,`dia_id`,`version_horario_id`,`ambiente_id`,`ficha_has_trimestre_id`),
  KEY `fk_horario_instructor_id` (`instructor_id`),
  KEY `fk_horario_modalidad_id` (`modalidad_id`),
  KEY `fk_horario_dia_id` (`dia_id`),
  KEY `fk_horario_version_horario_id` (`version_horario_id`),
  KEY `fk_horario_ambiente_id` (`ambiente_id`),
  KEY `fk_horario_ficha_has_trimestre_id` (`ficha_has_trimestre_id`),
  CONSTRAINT `fk_horario_ambiente_id` FOREIGN KEY (`ambiente_id`) REFERENCES `ambiente` (`id`),
  CONSTRAINT `fk_horario_dia_id` FOREIGN KEY (`dia_id`) REFERENCES `dia` (`id`),
  CONSTRAINT `fk_horario_ficha_has_trimestre_id` FOREIGN KEY (`ficha_has_trimestre_id`) REFERENCES `ficha_has_trimestre` (`id`),
  CONSTRAINT `fk_horario_instructor_id` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`),
  CONSTRAINT `fk_horario_modalidad_id` FOREIGN KEY (`modalidad_id`) REFERENCES `modalidad` (`id`),
  CONSTRAINT `fk_horario_version_horario_id` FOREIGN KEY (`version_horario_id`) REFERENCES `version_horario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `instructor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `estado` varchar(40) NOT NULL,
  `cliente_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_instructor_cliente_id` (`cliente_id`),
  CONSTRAINT `fk_instructor_cliente_id` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jhi_authority`
--

DROP TABLE IF EXISTS `jhi_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jhi_authority` (
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jhi_persistent_audit_event`
--

DROP TABLE IF EXISTS `jhi_persistent_audit_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jhi_persistent_audit_event` (
  `event_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `principal` varchar(50) NOT NULL,
  `event_date` timestamp NULL DEFAULT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `idx_persistent_audit_event` (`principal`,`event_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jhi_persistent_audit_evt_data`
--

DROP TABLE IF EXISTS `jhi_persistent_audit_evt_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jhi_persistent_audit_evt_data` (
  `event_id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event_id`,`name`),
  KEY `idx_persistent_audit_evt_data` (`event_id`),
  CONSTRAINT `fk_evt_pers_audit_evt_data` FOREIGN KEY (`event_id`) REFERENCES `jhi_persistent_audit_event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jhi_user`
--

DROP TABLE IF EXISTS `jhi_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jhi_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `image_url` varchar(256) DEFAULT NULL,
  `activated` bit(1) NOT NULL,
  `lang_key` varchar(6) DEFAULT NULL,
  `activation_key` varchar(20) DEFAULT NULL,
  `reset_key` varchar(20) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` timestamp NULL,
  `reset_date` timestamp NULL DEFAULT NULL,
  `last_modified_by` varchar(50) DEFAULT NULL,
  `last_modified_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_user_login` (`login`),
  UNIQUE KEY `ux_user_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jhi_user_authority`
--

DROP TABLE IF EXISTS `jhi_user_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jhi_user_authority` (
  `user_id` bigint(20) NOT NULL,
  `authority_name` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`,`authority_name`),
  KEY `fk_authority_name` (`authority_name`),
  CONSTRAINT `fk_authority_name` FOREIGN KEY (`authority_name`) REFERENCES `jhi_authority` (`name`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `jhi_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jornada`
--

DROP TABLE IF EXISTS `jornada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jornada` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sigla_jornada` varchar(20) NOT NULL,
  `nombre_jornada` varchar(40) NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `imagen_url` varchar(400) DEFAULT NULL,
  `estado` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_jornada_sigla_jornada` (`sigla_jornada`),
  UNIQUE KEY `ux_jornada_nombre_jornada` (`nombre_jornada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jornada_instructor`
--

DROP TABLE IF EXISTS `jornada_instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `jornada_instructor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_jornada` varchar(80) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `estado` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_jornada_instructor_nombre_jornada` (`nombre_jornada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `limitacion_ambiente`
--

DROP TABLE IF EXISTS `limitacion_ambiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `limitacion_ambiente` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ambiente_id` bigint(20) NOT NULL,
  `resultado_aprendizaje_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resultado_aprendizaje_id` (`resultado_aprendizaje_id`,`ambiente_id`),
  KEY `fk_limitacion_ambiente_ambiente_id` (`ambiente_id`),
  CONSTRAINT `fk_limitacion_ambiente_ambiente_id` FOREIGN KEY (`ambiente_id`) REFERENCES `ambiente` (`id`),
  CONSTRAINT `fk_limitacion_ambiente_resultado_aprendizaje_id` FOREIGN KEY (`resultado_aprendizaje_id`) REFERENCES `resultado_aprendizaje` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modalidad`
--

DROP TABLE IF EXISTS `modalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `modalidad` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_modalidad` varchar(40) NOT NULL,
  `color` varchar(50) NOT NULL,
  `estado` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_modalidad_nombre_modalidad` (`nombre_modalidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nivel_formacion`
--

DROP TABLE IF EXISTS `nivel_formacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nivel_formacion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nivel` varchar(40) NOT NULL,
  `estado` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_nivel_formacion_nivel` (`nivel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `planeacion`
--

DROP TABLE IF EXISTS `planeacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `planeacion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigo_planeacion` varchar(50) NOT NULL,
  `estado` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_planeacion_codigo_planeacion` (`codigo_planeacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `planeacion_trimestre`
--

DROP TABLE IF EXISTS `planeacion_trimestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `planeacion_trimestre` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `planeacion_id` bigint(20) NOT NULL,
  `resultado_aprendizaje_id` bigint(20) NOT NULL,
  `trimestre_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `planeacion_id` (`planeacion_id`,`resultado_aprendizaje_id`,`trimestre_id`),
  KEY `fk_planeacion_trimestre_resultado_aprendizaje_id` (`resultado_aprendizaje_id`),
  KEY `fk_planeacion_trimestre_trimestre_id` (`trimestre_id`),
  CONSTRAINT `fk_planeacion_trimestre_planeacion_id` FOREIGN KEY (`planeacion_id`) REFERENCES `planeacion` (`id`),
  CONSTRAINT `fk_planeacion_trimestre_resultado_aprendizaje_id` FOREIGN KEY (`resultado_aprendizaje_id`) REFERENCES `resultado_aprendizaje` (`id`),
  CONSTRAINT `fk_planeacion_trimestre_trimestre_id` FOREIGN KEY (`trimestre_id`) REFERENCES `trimestre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `programa`
--

DROP TABLE IF EXISTS `programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `programa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) NOT NULL,
  `version` varchar(40) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `sigla` varchar(40) NOT NULL,
  `estado` varchar(40) NOT NULL,
  `nivel_formacion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`,`version`),
  KEY `fk_programa_nivel_formacion_id` (`nivel_formacion_id`),
  CONSTRAINT `fk_programa_nivel_formacion_id` FOREIGN KEY (`nivel_formacion_id`) REFERENCES `nivel_formacion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proyecto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(40) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `estado` varchar(40) NOT NULL,
  `programa_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_proyecto_codigo` (`codigo`),
  KEY `fk_proyecto_programa_id` (`programa_id`),
  CONSTRAINT `fk_proyecto_programa_id` FOREIGN KEY (`programa_id`) REFERENCES `programa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resultado_aprendizaje`
--

DROP TABLE IF EXISTS `resultado_aprendizaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resultado_aprendizaje` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `codigo_resultado` varchar(40) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `competencia_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `competencia_id` (`competencia_id`,`codigo_resultado`),
  CONSTRAINT `fk_resultado_aprendizaje_competencia_id` FOREIGN KEY (`competencia_id`) REFERENCES `competencia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resultados_vistos`
--

DROP TABLE IF EXISTS `resultados_vistos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resultados_vistos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ficha_has_trimestre_id` bigint(20) NOT NULL,
  `resultado_aprendizaje_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resultado_aprendizaje_id` (`resultado_aprendizaje_id`,`ficha_has_trimestre_id`),
  KEY `fk_resultados_vistos_ficha_has_trimestre_id` (`ficha_has_trimestre_id`),
  CONSTRAINT `fk_resultados_vistos_ficha_has_trimestre_id` FOREIGN KEY (`ficha_has_trimestre_id`) REFERENCES `ficha_has_trimestre` (`id`),
  CONSTRAINT `fk_resultados_vistos_resultado_aprendizaje_id` FOREIGN KEY (`resultado_aprendizaje_id`) REFERENCES `resultado_aprendizaje` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sede`
--

DROP TABLE IF EXISTS `sede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sede` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_sede` varchar(50) NOT NULL,
  `direccion` varchar(400) NOT NULL,
  `estado` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_sede_nombre_sede` (`nombre_sede`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo_ambiente`
--

DROP TABLE IF EXISTS `tipo_ambiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipo_ambiente` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(40) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `estado` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_tipo_ambiente_tipo` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo_documento`
--

DROP TABLE IF EXISTS `tipo_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipo_documento` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sigla` varchar(10) NOT NULL,
  `nombre_documento` varchar(100) NOT NULL,
  `estado` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_tipo_documento_nombre_documento` (`nombre_documento`),
  UNIQUE KEY `ux_tipo_documento_sigla` (`sigla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trimestre`
--

DROP TABLE IF EXISTS `trimestre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trimestre` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_trimestre` varchar(40) NOT NULL,
  `estado` varchar(40) NOT NULL,
  `nivel_formacion_id` bigint(20) NOT NULL,
  `jornada_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_trimestre` (`nombre_trimestre`,`jornada_id`,`nivel_formacion_id`),
  KEY `fk_trimestre_nivel_formacion_id` (`nivel_formacion_id`),
  KEY `fk_trimestre_jornada_id` (`jornada_id`),
  CONSTRAINT `fk_trimestre_jornada_id` FOREIGN KEY (`jornada_id`) REFERENCES `jornada` (`id`),
  CONSTRAINT `fk_trimestre_nivel_formacion_id` FOREIGN KEY (`nivel_formacion_id`) REFERENCES `nivel_formacion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trimestre_vigente`
--

DROP TABLE IF EXISTS `trimestre_vigente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trimestre_vigente` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `trimestre_programado` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `estado` varchar(40) NOT NULL,
  `year_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `year_id` (`year_id`,`trimestre_programado`),
  CONSTRAINT `fk_trimestre_vigente_year_id` FOREIGN KEY (`year_id`) REFERENCES `year` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `version_horario`
--

DROP TABLE IF EXISTS `version_horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `version_horario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `numero_version` int(11) NOT NULL,
  `estado` varchar(40) NOT NULL,
  `trimestre_vigente_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_version` (`numero_version`,`trimestre_vigente_id`),
  KEY `fk_version_horario_trimestre_vigente_id` (`trimestre_vigente_id`),
  CONSTRAINT `fk_version_horario_trimestre_vigente_id` FOREIGN KEY (`trimestre_vigente_id`) REFERENCES `trimestre_vigente` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vinculacion`
--

DROP TABLE IF EXISTS `vinculacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vinculacion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tipo_vinculacion` varchar(40) NOT NULL,
  `hora` int(11) NOT NULL,
  `estado` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_vinculacion_tipo_vinculacion` (`tipo_vinculacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vinculacion_instructor`
--

DROP TABLE IF EXISTS `vinculacion_instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vinculacion_instructor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha_incio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `instructor_id` bigint(20) NOT NULL,
  `vinculacion_id` bigint(20) NOT NULL,
  `year_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fecha_incio` (`fecha_incio`,`fecha_fin`,`instructor_id`,`vinculacion_id`,`year_id`),
  KEY `fk_vinculacion_instructor_instructor_id` (`instructor_id`),
  KEY `fk_vinculacion_instructor_vinculacion_id` (`vinculacion_id`),
  KEY `fk_vinculacion_instructor_year_id` (`year_id`),
  CONSTRAINT `fk_vinculacion_instructor_instructor_id` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`),
  CONSTRAINT `fk_vinculacion_instructor_vinculacion_id` FOREIGN KEY (`vinculacion_id`) REFERENCES `vinculacion` (`id`),
  CONSTRAINT `fk_vinculacion_instructor_year_id` FOREIGN KEY (`year_id`) REFERENCES `year` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `year`
--

DROP TABLE IF EXISTS `year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `year` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `number_year` varchar(11) NOT NULL,
  `estado` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_year_number_year` (`number_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-10 13:20:40
