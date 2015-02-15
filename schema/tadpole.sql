CREATE DATABASE  IF NOT EXISTS `tadpole` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tadpole`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: tadpole
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `tad_address`
--

DROP TABLE IF EXISTS `tad_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_address`
--

LOCK TABLES `tad_address` WRITE;
/*!40000 ALTER TABLE `tad_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `tad_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tad_city`
--

DROP TABLE IF EXISTS `tad_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKCD52B9137B8093F9` (`province_id`),
  CONSTRAINT `FKCD52B9137B8093F9` FOREIGN KEY (`province_id`) REFERENCES `tad_province` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_city`
--

LOCK TABLES `tad_city` WRITE;
/*!40000 ALTER TABLE `tad_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `tad_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tad_dev_attribute`
--

DROP TABLE IF EXISTS `tad_dev_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_dev_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `functionId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_dev_attribute`
--

LOCK TABLES `tad_dev_attribute` WRITE;
/*!40000 ALTER TABLE `tad_dev_attribute` DISABLE KEYS */;
INSERT INTO `tad_dev_attribute` VALUES (1,'Name','name','String',0,'3'),(2,'Password','password','String',0,'3'),(3,'Location Code','locationCode','String',0,'4'),(4,'Number','number','String',0,'4'),(5,'Extension','extension','String',0,'4'),(6,'Street','street','String',0,'5'),(7,'City','city','String',0,'5'),(8,'Province','province','String',0,'5'),(9,'Name','name','String',0,'6'),(10,'Location','location','String',0,'6'),(11,'Name','name','String',0,'7'),(12,'A1','a1','String',0,'8'),(13,'A2','a2','String',0,'8'),(14,'AA','aa','String',0,'9'),(15,'Title','title','String',0,'10'),(16,'Title','url','String',0,'10'),(17,'Title','elementId','String',0,'10'),(18,'Title','title','String',0,'1'),(19,'URL','url','String',0,'1'),(20,'Identity ID','elementId','String',0,'1');
/*!40000 ALTER TABLE `tad_dev_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tad_dev_function`
--

DROP TABLE IF EXISTS `tad_dev_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_dev_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actionCode` longtext,
  `description` varchar(255) DEFAULT NULL,
  `entityName` varchar(255) DEFAULT NULL,
  `jpaEntityCode` longtext,
  `jsVoCode` varchar(255) DEFAULT NULL,
  `menuTitle` varchar(255) DEFAULT NULL,
  `repositoryCode` longtext,
  `serviceImplementationCode` longtext,
  `serviceInterfaceCode` longtext,
  `strutsNamespace` varchar(255) DEFAULT NULL,
  `tableName` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `jspCode` longtext,
  `strutsConfigurationgCode` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_dev_function`
--

LOCK TABLES `tad_dev_function` WRITE;
/*!40000 ALTER TABLE `tad_dev_function` DISABLE KEYS */;
INSERT INTO `tad_dev_function` VALUES (1,'package com.tadpole.controller;\r\n\r\nimport javax.annotation.Resource;\r\n\r\nimport net.sf.json.JSONObject;\r\n\r\nimport org.apache.commons.lang.StringUtils;\r\n\r\nimport com.tadpole.entity.Menu;\r\nimport com.tadpole.service.MenuService;\r\nimport com.tadpole.vo.ResponseVo;\r\n\r\npublic class MenuAction extends AbstractAction {\r\n\r\n	private static final long serialVersionUID = 1L;\r\n\r\n	@Resource(name = \"MenuService\")\r\n	private MenuService menuService;\r\n\r\n	public String saveOrUpdateMenu() {\r\n\r\n		String menuJson = getParameter(\"menuJson\");\r\n\r\n		if (StringUtils.isEmpty(menuJson)) {\r\n			setResponse(ResponseVo.newFailMessage(\"Bad request : no data found to save or update.\"));\r\n\r\n			return SUCCESS;\r\n		}\r\n\r\n		Menu menu = (Menu)JSONObject.toBean(JSONObject.fromObject(menuJson), Menu.class);\r\n\r\n		menuService.saveOrUpdateMenu(menu);\r\n\r\n		return SUCCESS;\r\n	}\r\n\r\n}\r\n','','Menu','package com.tadpole.entity;\r\n\r\nimport java.io.Serializable;\r\n\r\nimport javax.persistence.Entity;\r\nimport javax.persistence.GeneratedValue;\r\nimport javax.persistence.Id;\r\nimport javax.persistence.Table;\r\n\r\nimport javax.persistence.Column;\r\n\r\n/**\r\n * @author Jerry Jiang\r\n */\r\n@Entity\r\n@Table(name = \"tad_menu\")\r\npublic class Menu implements Serializable {\r\n\r\n	private static final long serialVersionUID = 1L;\r\n\r\n	@Id\r\n	@GeneratedValue\r\n	protected Integer id;\r\n	\r\n	protected String title;\r\n	\r\n	protected String url;\r\n	\r\n	protected String elementId;\r\n	\r\n\r\n	public Integer getId() {\r\n\r\n		return id;\r\n	}\r\n\r\n	public void setId(Integer id) {\r\n\r\n		this.id = id;\r\n	}\r\n\r\n	public String getTitle() {\r\n\r\n		return title;\r\n	}\r\n	\r\n	public String getUrl() {\r\n\r\n		return url;\r\n	}\r\n	\r\n	public String getElementId() {\r\n\r\n		return elementId;\r\n	}\r\n	\r\n	public void setTitle(String title) {\r\n\r\n		this.title = title;\r\n	}\r\n	\r\n	public void setUrl(String url) {\r\n\r\n		this.url = url;\r\n	}\r\n	\r\n	public void setElementId(String elementId) {\r\n\r\n		this.elementId = elementId;\r\n	}\r\n	\r\n}\r\n','function Menu()  {\r\n	var self = this;\r\n	\r\n	self.id = \'\';\r\n	self.title = \'\';\r\n	self.url = \'\';\r\n	self.elementId = \'\';\r\n}','Menu Management','package com.tadpole.repository;\r\n\r\nimport org.springframework.data.jpa.repository.JpaRepository;\r\nimport org.springframework.data.jpa.repository.JpaSpecificationExecutor;\r\n\r\nimport com.tadpole.entity.Menu;\r\n\r\npublic interface MenuRepository extends JpaRepository<Menu, Integer>, JpaSpecificationExecutor<Menu> {\r\n\r\n	// public Menu findByName(String name);\r\n}\r\n','package com.tadpole.service.impl;\r\n\r\nimport org.springframework.beans.factory.annotation.Autowired;\r\nimport org.springframework.stereotype.Service;\r\n\r\nimport com.tadpole.entity.Menu;\r\nimport com.tadpole.repository.MenuRepository;\r\nimport com.tadpole.service.MenuService;\r\n\r\n@Service(\"MenuService\")\r\npublic class MenuServiceImpl implements MenuService {\r\n\r\n	@Autowired\r\n	MenuRepository menuRepository;\r\n\r\n	public Menu saveOrUpdateMenu(Menu menu) {\r\n\r\n		return menuRepository.saveAndFlush(menu);\r\n	}\r\n\r\n}\r\n','package com.tadpole.service;\r\n\r\nimport com.tadpole.entity.Menu;\r\n\r\n\r\npublic interface MenuService {\r\n\r\n	Menu saveOrUpdateMenu(Menu menu);\r\n\r\n}\r\n','dev','tad_menu','Menu',NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<!DOCTYPE struts PUBLIC \"-//Apache Software Foundation//DTD Struts Configuration 2.0//EN\" \"http://struts.apache.org/dtds/struts-2.0.dtd\">\r\n<struts>\r\n	<package name=\"dev\" namespace=\"/dev\" extends=\"struts-default\">\r\n		\r\n		<result-types>\r\n			 <result-type name=\"json\" class=\"org.apache.struts2.json.JSONResult\" />\r\n		</result-types>\r\n		<action name=\"loadMenuMgr\">\r\n			<result>dev-Menu-management.jsp</result>\r\n		</action>\r\n		<action name=\"saveOrUpdateMenu\" class=\"Menu\" method=\"saveOrUpdateMenu\">\r\n			<result name=\"input\">\r\n				dev-Menu-management.jsp\r\n			</result>\r\n			<result name=\"success\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n			<result name=\"error\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n		</action>\r\n	</package>\r\n	\r\n</struts>');
/*!40000 ALTER TABLE `tad_dev_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tad_dictionary`
--

DROP TABLE IF EXISTS `tad_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `identity` varchar(255) DEFAULT NULL,
  `optionText` varchar(255) DEFAULT NULL,
  `optionValue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_dictionary`
--

LOCK TABLES `tad_dictionary` WRITE;
/*!40000 ALTER TABLE `tad_dictionary` DISABLE KEYS */;
INSERT INTO `tad_dictionary` VALUES (1,NULL,'jpa_data_type','String','String'),(2,NULL,'jpa_data_type','Boolean','Boolean'),(7,NULL,'jpa_data_type','Date','Date'),(8,NULL,'jpa_data_type','Integer','Integer');
/*!40000 ALTER TABLE `tad_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tad_job_schedule`
--

DROP TABLE IF EXISTS `tad_job_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_job_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feStartHour` int(11) DEFAULT NULL,
  `feStartMinute` int(11) DEFAULT NULL,
  `feUrlStartHour` int(11) DEFAULT NULL,
  `feUrlStartMinute` int(11) DEFAULT NULL,
  `gjStartHour` int(11) DEFAULT NULL,
  `gjStartMinute` int(11) DEFAULT NULL,
  `gjUrlStartHour` int(11) DEFAULT NULL,
  `gjUrlStartMinute` int(11) DEFAULT NULL,
  `oteStartHour` int(11) DEFAULT NULL,
  `oteStartMinute` int(11) DEFAULT NULL,
  `oteUrlStartHour` int(11) DEFAULT NULL,
  `oteUrlStartMinute` int(11) DEFAULT NULL,
  `sleepMiliSeconds` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_job_schedule`
--

LOCK TABLES `tad_job_schedule` WRITE;
/*!40000 ALTER TABLE `tad_job_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `tad_job_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tad_menu`
--

DROP TABLE IF EXISTS `tad_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_menu`
--

LOCK TABLES `tad_menu` WRITE;
/*!40000 ALTER TABLE `tad_menu` DISABLE KEYS */;
INSERT INTO `tad_menu` VALUES (1,'userManager','用户管理','/crud/admin/loadUser.action'),(2,'develop','功能开发','/crud/dev/develop.action'),(3,'MenuLink','Menu Management','/crud/dev/loadMenuMgr.action');
/*!40000 ALTER TABLE `tad_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tad_province`
--

DROP TABLE IF EXISTS `tad_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_province`
--

LOCK TABLES `tad_province` WRITE;
/*!40000 ALTER TABLE `tad_province` DISABLE KEYS */;
/*!40000 ALTER TABLE `tad_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tad_role`
--

DROP TABLE IF EXISTS `tad_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_role`
--

LOCK TABLES `tad_role` WRITE;
/*!40000 ALTER TABLE `tad_role` DISABLE KEYS */;
INSERT INTO `tad_role` VALUES (1,'超管','ROLE_ADMIN');
/*!40000 ALTER TABLE `tad_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tad_struts_namespace`
--

DROP TABLE IF EXISTS `tad_struts_namespace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_struts_namespace` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_struts_namespace`
--

LOCK TABLES `tad_struts_namespace` WRITE;
/*!40000 ALTER TABLE `tad_struts_namespace` DISABLE KEYS */;
/*!40000 ALTER TABLE `tad_struts_namespace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tad_test_user`
--

DROP TABLE IF EXISTS `tad_test_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_test_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_test_user`
--

LOCK TABLES `tad_test_user` WRITE;
/*!40000 ALTER TABLE `tad_test_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `tad_test_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tad_user`
--

DROP TABLE IF EXISTS `tad_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_user`
--

LOCK TABLES `tad_user` WRITE;
/*!40000 ALTER TABLE `tad_user` DISABLE KEYS */;
INSERT INTO `tad_user` VALUES (1,1,'Jerry Jiang','a4a88c0872bf652bb9ed803ece5fd6e82354838a9bf59ab4babb1dab322154e1','admin'),(2,1,'江李明','e0c43cf3b1c6dac8498a4cdffdf400c64ee8984b2269a045418eeb2b7f3bf340','test1');
/*!40000 ALTER TABLE `tad_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tad_user_role`
--

DROP TABLE IF EXISTS `tad_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  KEY `FKE2815DC2370C3DB9` (`role_id`),
  KEY `FKE2815DC2DC370199` (`user_id`),
  CONSTRAINT `FKE2815DC2DC370199` FOREIGN KEY (`user_id`) REFERENCES `tad_user` (`id`),
  CONSTRAINT `FKE2815DC2370C3DB9` FOREIGN KEY (`role_id`) REFERENCES `tad_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_user_role`
--

LOCK TABLES `tad_user_role` WRITE;
/*!40000 ALTER TABLE `tad_user_role` DISABLE KEYS */;
INSERT INTO `tad_user_role` VALUES (1,1);
/*!40000 ALTER TABLE `tad_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-02-15 17:11:22
