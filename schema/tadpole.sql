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
-- Table structure for table `tad1`
--

DROP TABLE IF EXISTS `tad1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `t1` varchar(255) DEFAULT NULL,
  `t2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad1`
--

LOCK TABLES `tad1` WRITE;
/*!40000 ALTER TABLE `tad1` DISABLE KEYS */;
/*!40000 ALTER TABLE `tad1` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `tad_customer`
--

DROP TABLE IF EXISTS `tad_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `fixedPhone` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_customer`
--

LOCK TABLES `tad_customer` WRITE;
/*!40000 ALTER TABLE `tad_customer` DISABLE KEYS */;
INSERT INTO `tad_customer` VALUES (1,'上hai','2015-03-16 00:00:00',NULL,'Allan-BIGw','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(2,'上海','2015-03-16 00:00:00',NULL,'Jerry','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(3,'上海','2015-03-16 00:00:00',NULL,'Jerry2','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(4,'上海','2015-03-16 00:00:00',NULL,'ZeKe','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(6,'上海','2015-03-16 00:00:00',NULL,'Jerry4','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(7,'上海','2015-03-16 00:00:00',NULL,'Jerry5','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(8,'上海','2015-03-16 00:00:00',NULL,'Jerry6','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(9,'上海','2015-03-16 00:00:00',NULL,'Jerry7','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(13,'上海','2015-03-16 00:00:00',NULL,'Jerry8','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(14,'上海','2015-03-16 00:00:00',NULL,'Jerry9','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(15,'上海','2015-03-16 00:00:00',NULL,'Jerry11','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(16,'上海','2015-03-16 00:00:00',NULL,'Jerry12','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(17,'上海','2015-03-16 00:00:00',NULL,'Jerry13','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(18,'上海','2015-03-16 00:00:00',NULL,'Jerry14','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(19,'上海','2015-03-16 00:00:00',NULL,'Jerry15','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(20,'上海','2015-03-16 00:00:00',NULL,'Jerry16','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(28,'上海','2015-03-16 00:00:00',NULL,'Jerry17','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(29,'上海','2015-03-16 00:00:00',NULL,'Jerry18','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(30,'上海','2015-03-16 00:00:00',NULL,'Jerry19','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(31,'上海','2015-03-16 00:00:00',NULL,'Jerry22','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(32,'上海','2015-03-16 00:00:00',NULL,'Jerry222','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(33,'上海','2015-03-16 00:00:00',NULL,'Jerry233','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(34,'上海','2015-03-16 00:00:00',NULL,'Jerry32','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(35,'上海','2015-03-16 00:00:00',NULL,'Jerry','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(36,'上海','2015-03-16 00:00:00',NULL,'Jerry','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(37,'上海','2015-03-16 00:00:00',NULL,'Jerry','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(38,'上海','2015-03-16 00:00:00',NULL,'Jerry','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(39,'上海','2015-03-16 00:00:00',NULL,'Jerry','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(40,'上海','2015-03-16 00:00:00',NULL,'Jerry','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(41,'上海','2015-03-16 00:00:00',NULL,'Jerry','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(42,'上海','2015-03-16 00:00:00',NULL,'Jerry','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(43,'上海','2015-03-16 00:00:00',NULL,'Jerry','13761209451','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(44,'苏州',NULL,NULL,'Gary','123456789',NULL,'http://xinxinguanli.oicp.net/crud/public/a2.png'),(45,'dingding',NULL,NULL,'JERRY Jiang','1245667888','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(46,'上海',NULL,NULL,'Eric','12355433453','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(47,'shanghai',NULL,NULL,'J2','123123123','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(48,'aa',NULL,NULL,'aaa','123123123','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(49,'as',NULL,NULL,'sadfs','24234','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(50,'sss',NULL,NULL,'asdfsdf','123132123','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(51,'22222',NULL,NULL,'zzzzz','11111111','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(52,'11111',NULL,NULL,'xxxxxx','22222','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(53,'aaa',NULL,NULL,'Gray wing','22334455555','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(54,'Sass\'s1111',NULL,NULL,'Adam for','33344555555','Male','http://xinxinguanli.oicp.net/crud/public/a2.png'),(55,'adfasdf',NULL,NULL,'ddddd','123123123','Male','http://xinxinguanli.oicp.net/crud/public/a2.png');
/*!40000 ALTER TABLE `tad_customer` ENABLE KEYS */;
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
  `searchable` tinyint(1) DEFAULT NULL,
  `optionText` varchar(255) DEFAULT NULL,
  `dataSourceName` varchar(255) DEFAULT NULL,
  `searchTextDataSourceName` varchar(255) DEFAULT NULL,
  `shownInTable` tinyint(1) DEFAULT NULL,
  `isUnique` tinyint(1) DEFAULT NULL,
  `textLong` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_dev_attribute`
--

LOCK TABLES `tad_dev_attribute` WRITE;
/*!40000 ALTER TABLE `tad_dev_attribute` DISABLE KEYS */;
INSERT INTO `tad_dev_attribute` VALUES (18,'Title','title','String',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'URL','url','String',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Identity ID','elementId','String',0,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'Name','name','String',0,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Created By','createBy','String',0,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Updated By','updatedBy','String',0,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'Name','name','String',1,'14',1,'',NULL,'DataSources',NULL,1,NULL),(56,'Type','type','String',1,'14',0,'','QuickDataType',NULL,NULL,NULL,NULL),(57,'Fixed Values','keyValues','String',0,'14',0,'',NULL,NULL,NULL,NULL,NULL),(58,'SQL','querySql','String',0,'14',0,'',NULL,NULL,NULL,NULL,NULL),(59,'Description','description','String',0,'14',0,'','DataSources',NULL,NULL,NULL,NULL),(60,'Name','name','String',1,'15',1,'','','',1,0,NULL),(61,'phone','phone','String',1,'15',1,'','','',1,0,NULL),(62,'fixed phone','fixedPhone','String',0,'15',0,'','','',0,0,NULL),(63,'Address','address','String',0,'15',0,'','','',0,0,NULL),(64,'Sex','sex','String',0,'15',0,'','sexDatasource','',1,0,NULL),(65,'Birthday','birthday','Date',0,'15',1,'','','',1,0,NULL),(66,'Avatar URL','avatar','String',0,'15',0,'','','',0,0,NULL),(67,'Tag Name','name','String',1,'16',1,'','','',1,1,NULL),(68,'Content','content','String',1,'16',0,'','','',0,0,1);
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
  `actionFilePath` varchar(255) DEFAULT NULL,
  `jpaEntityFilePath` varchar(255) DEFAULT NULL,
  `jsVoFilePath` varchar(255) DEFAULT NULL,
  `jspFilePath` varchar(255) DEFAULT NULL,
  `repositoryFilePath` varchar(255) DEFAULT NULL,
  `serviceImplementationFilePath` varchar(255) DEFAULT NULL,
  `serviceInterfaceFilePath` varchar(255) DEFAULT NULL,
  `strutsConfigurationgFilePath` varchar(255) DEFAULT NULL,
  `menuId` int(11) DEFAULT NULL,
  `javaSearchVoCode` longtext,
  `javaSearchVoFilePath` varchar(255) DEFAULT NULL,
  `jsSearchVoCode` longtext,
  `jsSearchVoFilePath` varchar(255) DEFAULT NULL,
  `restCode` longtext,
  `restFilePath` varchar(255) DEFAULT NULL,
  `repositoryAdditionalCode` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_dev_function`
--

LOCK TABLES `tad_dev_function` WRITE;
/*!40000 ALTER TABLE `tad_dev_function` DISABLE KEYS */;
INSERT INTO `tad_dev_function` VALUES (1,'package com.tadpole.controller;\r\n\r\nimport javax.annotation.Resource;\r\n\r\nimport net.sf.json.JSONObject;\r\n\r\nimport org.apache.commons.lang.StringUtils;\r\n\r\nimport com.tadpole.entity.Menu;\r\nimport com.tadpole.service.MenuService;\r\nimport com.tadpole.vo.ResponseVo;\r\n\r\npublic class MenuAction extends AbstractAction {\r\n\r\n	private static final long serialVersionUID = 1L;\r\n\r\n	@Resource(name = \"MenuService\")\r\n	private MenuService menuService;\r\n\r\n	public String saveOrUpdateMenu() {\r\n\r\n		String menuJson = getParameter(\"menuJson\");\r\n\r\n		if (StringUtils.isEmpty(menuJson)) {\r\n			setResponse(ResponseVo.newFailMessage(\"Bad request : no data found to save or update.\"));\r\n\r\n			return SUCCESS;\r\n		}\r\n\r\n		Menu menu = (Menu)JSONObject.toBean(JSONObject.fromObject(menuJson), Menu.class);\r\n\r\n		menuService.saveOrUpdateMenu(menu);\r\n\r\n		return SUCCESS;\r\n	}\r\n\r\n}\r\n','','Menu','package com.tadpole.entity;\r\n\r\nimport java.io.Serializable;\r\n\r\nimport javax.persistence.Entity;\r\nimport javax.persistence.GeneratedValue;\r\nimport javax.persistence.Id;\r\nimport javax.persistence.Table;\r\n\r\nimport javax.persistence.Column;\r\n\r\n/**\r\n * @author Jerry Jiang\r\n */\r\n@Entity\r\n@Table(name = \"tad_menu\")\r\npublic class Menu implements Serializable {\r\n\r\n	private static final long serialVersionUID = 1L;\r\n\r\n	@Id\r\n	@GeneratedValue\r\n	protected Integer id;\r\n	\r\n	protected String title;\r\n	\r\n	protected String url;\r\n	\r\n	protected String elementId;\r\n	\r\n\r\n	public Integer getId() {\r\n\r\n		return id;\r\n	}\r\n\r\n	public void setId(Integer id) {\r\n\r\n		this.id = id;\r\n	}\r\n\r\n	public String getTitle() {\r\n\r\n		return title;\r\n	}\r\n	\r\n	public String getUrl() {\r\n\r\n		return url;\r\n	}\r\n	\r\n	public String getElementId() {\r\n\r\n		return elementId;\r\n	}\r\n	\r\n	public void setTitle(String title) {\r\n\r\n		this.title = title;\r\n	}\r\n	\r\n	public void setUrl(String url) {\r\n\r\n		this.url = url;\r\n	}\r\n	\r\n	public void setElementId(String elementId) {\r\n\r\n		this.elementId = elementId;\r\n	}\r\n	\r\n}\r\n','function Menu()  {\r\n	var self = this;\r\n	\r\n	self.id = \'\';\r\n	self.title = \'\';\r\n	self.url = \'\';\r\n	self.elementId = \'\';\r\n}','Menu Management','package com.tadpole.repository;\r\n\r\nimport org.springframework.data.jpa.repository.JpaRepository;\r\nimport org.springframework.data.jpa.repository.JpaSpecificationExecutor;\r\n\r\nimport com.tadpole.entity.Menu;\r\n\r\npublic interface MenuRepository extends JpaRepository<Menu, Integer>, JpaSpecificationExecutor<Menu> {\r\n\r\n	// public Menu findByName(String name);\r\n}\r\n','package com.tadpole.service.impl;\r\n\r\nimport org.springframework.beans.factory.annotation.Autowired;\r\nimport org.springframework.stereotype.Service;\r\n\r\nimport com.tadpole.entity.Menu;\r\nimport com.tadpole.repository.MenuRepository;\r\nimport com.tadpole.service.MenuService;\r\n\r\n@Service(\"MenuService\")\r\npublic class MenuServiceImpl implements MenuService {\r\n\r\n	@Autowired\r\n	MenuRepository menuRepository;\r\n\r\n	public Menu saveOrUpdateMenu(Menu menu) {\r\n\r\n		return menuRepository.saveAndFlush(menu);\r\n	}\r\n\r\n}\r\n','package com.tadpole.service;\r\n\r\nimport com.tadpole.entity.Menu;\r\n\r\n\r\npublic interface MenuService {\r\n\r\n	Menu saveOrUpdateMenu(Menu menu);\r\n\r\n}\r\n','dev','tad_menu','Menu',NULL,'<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<!DOCTYPE struts PUBLIC \"-//Apache Software Foundation//DTD Struts Configuration 2.0//EN\" \"http://struts.apache.org/dtds/struts-2.0.dtd\">\r\n<struts>\r\n	<package name=\"dev\" namespace=\"/dev\" extends=\"struts-default\">\r\n		\r\n		<result-types>\r\n			 <result-type name=\"json\" class=\"org.apache.struts2.json.JSONResult\" />\r\n		</result-types>\r\n		<action name=\"loadMenuMgr\">\r\n			<result>dev-Menu-management.jsp</result>\r\n		</action>\r\n		<action name=\"saveOrUpdateMenu\" class=\"Menu\" method=\"saveOrUpdateMenu\">\r\n			<result name=\"input\">\r\n				dev-Menu-management.jsp\r\n			</result>\r\n			<result name=\"success\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n			<result name=\"error\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n		</action>\r\n	</package>\r\n	\r\n</struts>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'package com.tadpole.controller;\r\n\r\nimport javax.annotation.Resource;\r\n\r\nimport net.sf.json.JSONObject;\r\n\r\nimport org.apache.commons.lang.StringUtils;\r\n\r\nimport com.tadpole.entity.TadStrutsNamespace;\r\nimport com.tadpole.service.TadStrutsNamespaceService;\r\nimport com.tadpole.vo.ResponseVo;\r\nimport com.tadpole.vo.PagedElement;\r\nimport org.springframework.stereotype.Component;\r\nimport org.springframework.context.annotation.Scope;\r\nimport org.springframework.data.domain.Page;\r\n\r\n@Component(\"TadStrutsNamespaceAction\")\r\n@Scope(\"prototype\")\r\npublic class TadStrutsNamespaceAction extends AbstractAction {\r\n\r\n	private static final long serialVersionUID = 1L;\r\n\r\n	@Resource(name = \"TadStrutsNamespaceService\")\r\n	private TadStrutsNamespaceService tadStrutsNamespaceService;\r\n\r\n	public String saveOrUpdateTadStrutsNamespace() {\r\n	\r\n		try {\r\n			String tadStrutsNamespaceJson = getParameter(\"tadStrutsNamespaceJson\");\r\n\r\n			if (StringUtils.isEmpty(tadStrutsNamespaceJson)) {\r\n				setResponse(ResponseVo.newFailMessage(\"Bad request : no data found to save or update.\"));\r\n\r\n				return SUCCESS;\r\n			}\r\n\r\n			TadStrutsNamespace tadStrutsNamespace = (TadStrutsNamespace)JSONObject.toBean(JSONObject.fromObject(tadStrutsNamespaceJson), TadStrutsNamespace.class);\r\n\r\n			TadStrutsNamespace saved = tadStrutsNamespaceService.saveOrUpdateTadStrutsNamespace(tadStrutsNamespace);\r\n			\r\n			ResponseVo response = ResponseVo.newSuccessMessage(\"The tadStrutsNamespace is successfully saved.\");\r\n			response.setObject(saved);\r\n			\r\n			setResponse(response);\r\n			\r\n		} catch (Exception e) {\r\n			\r\n			setResponse(ResponseVo.newFailMessage(e.getMessage()));\r\n		}\r\n\r\n		return SUCCESS;\r\n	}\r\n\r\n	public String loadTadStrutsNamespaces() {\r\n\r\n		try {\r\n			Page<TadStrutsNamespace> tadStrutsNamespaces = tadStrutsNamespaceService.loadTadStrutsNamespaces();\r\n\r\n			PagedElement<TadStrutsNamespace> pageElement = new PagedElement<TadStrutsNamespace>(tadStrutsNamespaces);\r\n\r\n			ResponseVo response = ResponseVo.newSuccessMessage(\"loaded successfully.\");\r\n			response.setObject(pageElement);\r\n\r\n			setResponse(response);\r\n\r\n		} catch (Exception e) {\r\n			setResponse(ResponseVo.newFailMessage(e.getMessage()));\r\n\r\n		}\r\n\r\n		return SUCCESS;\r\n	}\r\n}\r\n','','TadStrutsNamespace','package com.tadpole.entity;\r\n\r\nimport java.io.Serializable;\r\n\r\nimport javax.persistence.Entity;\r\nimport javax.persistence.GeneratedValue;\r\nimport javax.persistence.Id;\r\nimport javax.persistence.Table;\r\n\r\nimport javax.persistence.Column;\r\n\r\n/**\r\n * @author Jerry Jiang\r\n */\r\n@Entity\r\n@Table(name = \"tad_struts_namespace\")\r\npublic class TadStrutsNamespace implements Serializable {\r\n\r\n	private static final long serialVersionUID = 1L;\r\n\r\n	@Id\r\n	@GeneratedValue\r\n	protected Integer id;\r\n	\r\n	protected String name;\r\n	\r\n	protected String createBy;\r\n	\r\n	protected String updatedBy;\r\n	\r\n\r\n	public Integer getId() {\r\n\r\n		return id;\r\n	}\r\n\r\n	public void setId(Integer id) {\r\n\r\n		this.id = id;\r\n	}\r\n\r\n	public String getName() {\r\n\r\n		return name;\r\n	}\r\n	\r\n	public String getCreateBy() {\r\n\r\n		return createBy;\r\n	}\r\n	\r\n	public String getUpdatedBy() {\r\n\r\n		return updatedBy;\r\n	}\r\n	\r\n	public void setName(String name) {\r\n\r\n		this.name = name;\r\n	}\r\n	\r\n	public void setCreateBy(String createBy) {\r\n\r\n		this.createBy = createBy;\r\n	}\r\n	\r\n	public void setUpdatedBy(String updatedBy) {\r\n\r\n		this.updatedBy = updatedBy;\r\n	}\r\n	\r\n}\r\n','function TadStrutsNamespace()  {\r\n	var self = this;\r\n	\r\n	self.id = \'\';\r\n	self.name = \'\';\r\n	self.createBy = \'\';\r\n	self.updatedBy = \'\';\r\n}','Struts namespaces','package com.tadpole.repository;\r\n\r\nimport org.springframework.data.jpa.repository.JpaRepository;\r\nimport org.springframework.data.jpa.repository.JpaSpecificationExecutor;\r\n\r\nimport com.tadpole.entity.TadStrutsNamespace;\r\n\r\npublic interface TadStrutsNamespaceRepository extends JpaRepository<TadStrutsNamespace, Integer>, JpaSpecificationExecutor<TadStrutsNamespace> {\r\n\r\n}\r\n','package com.tadpole.service.impl;\r\n\r\nimport org.springframework.beans.factory.annotation.Autowired;\r\nimport org.springframework.stereotype.Service;\r\nimport org.springframework.data.domain.Page;\r\nimport org.springframework.data.domain.PageRequest;\r\n\r\nimport com.tadpole.entity.TadStrutsNamespace;\r\nimport com.tadpole.repository.TadStrutsNamespaceRepository;\r\nimport com.tadpole.service.TadStrutsNamespaceService;\r\n\r\n@Service(\"TadStrutsNamespaceService\")\r\npublic class TadStrutsNamespaceServiceImpl implements TadStrutsNamespaceService {\r\n\r\n	@Autowired\r\n	TadStrutsNamespaceRepository tadStrutsNamespaceRepository;\r\n\r\n	public TadStrutsNamespace saveOrUpdateTadStrutsNamespace(TadStrutsNamespace tadStrutsNamespace) {\r\n\r\n		return tadStrutsNamespaceRepository.saveAndFlush(tadStrutsNamespace);\r\n	}\r\n	\r\n	public Page<TadStrutsNamespace> loadTadStrutsNamespaces() {\r\n\r\n		return tadStrutsNamespaceRepository.findAll(new PageRequest(0, 10));\r\n	}\r\n\r\n}\r\n','package com.tadpole.service;\r\n\r\nimport org.springframework.data.domain.Page;\r\n\r\nimport com.tadpole.entity.TadStrutsNamespace;\r\n\r\n\r\npublic interface TadStrutsNamespaceService {\r\n\r\n	TadStrutsNamespace saveOrUpdateTadStrutsNamespace(TadStrutsNamespace tadStrutsNamespace);\r\n\r\n	Page<TadStrutsNamespace> loadTadStrutsNamespaces();\r\n}\r\n','dev','tad_struts_namespace','Struts namespace','<%@ page contentType=\"text/html;charset=utf8\"%>\r\n<%@ taglib prefix=\"s\" uri=\"/struts-tags\"%>\r\n<!DOCTYPE html>\r\n<!--[if lt IE 7]> <html class=\"no-js lt-ie9 lt-ie8 lt-ie7\" lang=\"en\"> <![endif]-->\r\n<!--[if IE 7]>	<html class=\"no-js lt-ie9 lt-ie8\" lang=\"en\"> <![endif]-->\r\n<!--[if IE 8]>	<html class=\"no-js lt-ie9\" lang=\"en\"> <![endif]-->\r\n<!--[if gt IE 8]> <html class=\"no-js ie9\" lang=\"en\"> <!-->\r\n<html lang=\"en\">\r\n<!--<![endif]-->\r\n<head>\r\n<!-- Set the viewport width to device width for mobile -->\r\n<meta name=\"viewport\" content=\"width=device-width\" />\r\n<title>Struts namespace</title>\r\n<s:include value=\"/jsps/common/head.jsp\" />\r\n\r\n</head>\r\n<body>\r\n	<s:include value=\"/jsps/common/brand.jsp\" />\r\n	<s:include value=\"/jsps/common/menu.jsp\" />\r\n	<section class=\"mainbg\">\r\n		<div class=\"container\" id=\"TadStrutsNamespaceDataModelContainer\">\r\n			<div class=\"row\">\r\n				<div style=\"color: red\">\r\n					<s:fielderror />\r\n				</div>\r\n				<div id=\"tadStrutsNamespaceDialog\" title=\"TadStrutsNamespace Management\" style=\"display: none\" data-bind=\"with : selectedTadStrutsNamespace\">\r\n					<div class=\"row\">\r\n						<div class=\"six columns\">\r\n							<label>Name</label> \r\n							<input type=\"text\" data-bind=\"value : name\" />\r\n						</div>\r\n						<div class=\"six columns\">\r\n							<label>Created By</label> \r\n							<input type=\"text\" data-bind=\"value : createBy\" />\r\n						</div>\r\n					</div>\r\n					<div class=\"row\">\r\n						<div class=\"six columns\">\r\n							<label>Updated By</label> \r\n							<input type=\"text\" data-bind=\"value : updatedBy\" />\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"row\">\r\n					<div class=\"app-wrapper ui-corner-top\">\r\n						<div class=\"blue module ui-corner-top clearfix\">\r\n							<h2>TadStrutsNamespace List</h2>\r\n							<h2 class=\"right\"></h2>\r\n						</div>\r\n						<div class=\"content\">\r\n						\r\n							<div class=\"row\">\r\n									<div class=\"nine columns\"></div>\r\n									<div class=\"three columns\">\r\n										<a title=\"add attribute\" data-bind=\"click : $root.openManageTadStrutsNamespaceDialog\" href=\"#\" class=\"right\" style=\"margin-right: 10px\"><i class=\"small icon-plus icon-green\"></i></a>\r\n									</div>\r\n								</div>\r\n								<div class=\"row\">\r\n									<table class=\"dataTable\">\r\n										<thead>\r\n											<tr>\r\n												<th style=\"text-align: center\">Name</th>\r\n												<th style=\"text-align: center\">Created By</th>\r\n												<th style=\"text-align: center\">Updated By</th>\r\n												<th></th>\r\n											</tr>\r\n										</thead>\r\n										<tbody data-bind=\"foreach : tadStrutsNamespaceList\">\r\n											<tr>\r\n												<td style=\"text-align: center\" data-bind=\"text : name\"></td>\r\n												<td style=\"text-align: center\" data-bind=\"text : createBy\"></td>\r\n												<td style=\"text-align: center\" data-bind=\"text : updatedBy\"></td>\r\n												<td style=\"text-align: center\">\r\n													<a title=\"update tadStrutsNamespace\" data-bind=\"click : $root.openManageTadStrutsNamespaceDialog\" style=\"margin-left: 10px;\" href=\"#\"><i class=\"icon-pencil small icon-blue\"></i></a>\r\n													<a title=\"delete tadStrutsNamespace\" data-bind=\"click : $root.deleteTadStrutsNamespace\" style=\"margin-left: 10px;\" href=\"#\"><i class=\"icon-trash small icon-red\"></i></a>\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n									<br>\r\n								</div>\r\n						</div>\r\n					</div>\r\n\r\n				</div>\r\n\r\n			</div>\r\n		</div>\r\n	</section>\r\n	<s:include value=\"/jsps/common/footer.jsp\" />\r\n	<script src=\"/crud/js/vo/TadStrutsNamespace.js\"></script>\r\n\r\n	<script>\r\n		$(document).ready(function() {\r\n\r\n			var TadStrutsNamespaceDataModel = function() {\r\n\r\n				var self = this;\r\n				\r\n				self.selectedTadStrutsNamespace = ko.observable(new TadStrutsNamespace());\r\n				self.tadStrutsNamespaceList = ko.observableArray([]);\r\n				\r\n				self.searchTadStrutsNamespace = function() {\r\n					\r\n					$.ajax({\r\n						url : \'loadTadStrutsNamespaces.action\',\r\n						success : function(data) {\r\n							\r\n							if (data && data.object && data.object.elements) {\r\n								self.tadStrutsNamespaceList(data.object.elements);\r\n							}\r\n							\r\n							handleStanderdResponse(data);\r\n							\r\n						}\r\n					});\r\n				};\r\n				\r\n				self.searchTadStrutsNamespace();\r\n				\r\n				self.saveOrUpdateTadStrutsNamespace = function() {\r\n					\r\n					$.ajax({\r\n						url : \'saveOrUpdateTadStrutsNamespace.action\',\r\n						method : \'POST\',\r\n						data : {\r\n							tadStrutsNamespaceJson : JSON.stringify(self.selectedTadStrutsNamespace())\r\n						},\r\n						success : function(data) {\r\n							handleStanderdResponse(data);\r\n							\r\n							if(data.object && data.object.id) {\r\n								self.selectedTadStrutsNamespace(data.object);\r\n							}\r\n						}\r\n					});	\r\n					\r\n				};\r\n				\r\n				self.openManageTadStrutsNamespaceDialog = function(item, event) {\r\n					\r\n					if(item.id) {\r\n						self.selectedTadStrutsNamespace(item);\r\n					} else {\r\n						self.selectedTadStrutsNamespace(new TadStrutsNamespace());\r\n					}\r\n					\r\n					$(\'#tadStrutsNamespaceDialog\').dialog({\r\n						modal : true,\r\n						width : 700,\r\n						height : 350,\r\n						open : function(e) {\r\n							changeButtonStyleForPopup(e);\r\n						},\r\n						\r\n						buttons : {\r\n							\'Save\' : function() {\r\n								self.saveOrUpdateTadStrutsNamespace();\r\n							},\r\n							\'Close\' : function() {\r\n								closeDialog(\'tadStrutsNamespaceDialog\');\r\n							}\r\n						}\r\n					});\r\n				};\r\n				\r\n			};\r\n\r\n			var tadStrutsNamespaceDataModel = new TadStrutsNamespaceDataModel();\r\n\r\n			var $tadStrutsNamespaceDataModelContainer = $(\'#TadStrutsNamespaceDataModelContainer\')[0];\r\n			\r\n			ko.applyBindings(tadStrutsNamespaceDataModel, $tadStrutsNamespaceDataModelContainer);\r\n		});\r\n\r\n		function activeCurrentMenuItem() {\r\n			$(\'#TadStrutsNamespaceLink\').addClass(\'active\');\r\n		}\r\n	</script>\r\n</body>\r\n</html>','<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<!DOCTYPE struts PUBLIC \"-//Apache Software Foundation//DTD Struts Configuration 2.0//EN\" \"http://struts.apache.org/dtds/struts-2.0.dtd\">\r\n<struts>\r\n	<package name=\"devTadStrutsNamespace\" namespace=\"/dev\" extends=\"struts-default\">\r\n		\r\n		<result-types>\r\n			 <result-type name=\"json\" class=\"org.apache.struts2.json.JSONResult\" />\r\n		</result-types>\r\n		<action name=\"loadTadStrutsNamespaceMgr\">\r\n			<result>dev-TadStrutsNamespace-management.jsp</result>\r\n		</action>\r\n		<action name=\"saveOrUpdateTadStrutsNamespace\" class=\"TadStrutsNamespaceAction\" method=\"saveOrUpdateTadStrutsNamespace\">\r\n			<result name=\"input\">\r\n				dev-TadStrutsNamespace-management.jsp\r\n			</result>\r\n			<result name=\"success\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n			<result name=\"error\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n		</action>\r\n		<action name=\"loadTadStrutsNamespaces\" class=\"TadStrutsNamespaceAction\" method=\"loadTadStrutsNamespaces\">\r\n			<result name=\"success\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n			<result name=\"error\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n		</action>\r\n	</package>\r\n	\r\n</struts>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'package com.tadpole.controller;\r\n\r\nimport javax.annotation.Resource;\r\n\r\nimport net.sf.json.JSONObject;\r\nimport net.sf.json.util.JSONUtils;\r\nimport net.sf.ezmorph.object.DateMorpher;\r\n\r\nimport org.apache.commons.lang.StringUtils;\r\n\r\nimport com.tadpole.vo.search.QuickDataSourceSearchVo;\r\n\r\nimport com.tadpole.entity.QuickDataSource;\r\nimport com.tadpole.service.QuickDataSourceService;\r\nimport com.tadpole.vo.ResponseVo;\r\nimport com.tadpole.vo.PagedElement;\r\nimport org.springframework.stereotype.Component;\r\nimport org.springframework.context.annotation.Scope;\r\nimport org.springframework.data.domain.Page;\r\n\r\n@Component(\"QuickDataSourceAction\")\r\n@Scope(\"prototype\")\r\npublic class QuickDataSourceAction extends AbstractAction {\r\n\r\n	private static final long serialVersionUID = 1L;\r\n\r\n	@Resource(name = \"QuickDataSourceService\")\r\n	private QuickDataSourceService quickDataSourceService;\r\n\r\n	public String saveOrUpdateQuickDataSource() {\r\n	\r\n		try {\r\n			String quickDataSourceJson = getParameter(\"quickDataSourceJson\");\r\n\r\n			if (StringUtils.isEmpty(quickDataSourceJson)) {\r\n				setResponse(ResponseVo.newFailMessage(\"Bad request : no data found to save or update.\"));\r\n\r\n				return SUCCESS;\r\n			}\r\n			\r\n			JSONUtils.getMorpherRegistry().registerMorpher(new DateMorpher(new String[]{\"yyyy-MM-dd\"}));\r\n			\r\n			QuickDataSource quickDataSource = (QuickDataSource)JSONObject.toBean(JSONObject.fromObject(quickDataSourceJson), QuickDataSource.class);\r\n\r\n			QuickDataSource saved = quickDataSourceService.saveOrUpdateQuickDataSource(quickDataSource);\r\n			\r\n			ResponseVo response = ResponseVo.newSuccessMessage(\"The quickDataSource is successfully saved.\");\r\n			response.setObject(saved);\r\n			\r\n			setResponse(response);\r\n			\r\n		} catch (Exception e) {\r\n			\r\n			setResponse(ResponseVo.newFailMessage(e.getMessage()));\r\n		}\r\n\r\n		return SUCCESS;\r\n	}\r\n\r\n	public String deleteQuickDataSource() {\r\n	\r\n		try {\r\n			String quickDataSourceId = getParameter(\"quickDataSourceId\");\r\n\r\n			if (StringUtils.isEmpty(quickDataSourceId)) {\r\n				setResponse(ResponseVo.newFailMessage(\"Bad request : no data is provided to delete.\"));\r\n\r\n				return SUCCESS;\r\n			}\r\n\r\n			quickDataSourceService.deleteQuickDataSource(quickDataSourceId);\r\n			\r\n			ResponseVo response = ResponseVo.newSuccessMessage(\"The quickDataSource is successfully deleted.\");\r\n			\r\n			setResponse(response);\r\n			\r\n		} catch (Exception e) {\r\n			\r\n			setResponse(ResponseVo.newFailMessage(e.getMessage()));\r\n		}\r\n\r\n		return SUCCESS;\r\n	}\r\n	\r\n	public String loadQuickDataSources() {\r\n\r\n		try {\r\n			String currentIndex = getParameter(\"currentIndex\");\r\n			if (StringUtils.isEmpty(currentIndex)) {\r\n        		currentIndex = \"1\";\r\n			}\r\n			\r\n			String quickDataSourceSearchVoJson = getParameter(\"quickDataSourceSearchVoJson\");\r\n			\r\n			JSONUtils.getMorpherRegistry().registerMorpher(new DateMorpher(new String[]{\"yyyy-MM-dd\"}));\r\n			\r\n			QuickDataSourceSearchVo quickDataSourceSearchVo = (QuickDataSourceSearchVo)JSONObject.toBean(JSONObject.fromObject(quickDataSourceSearchVoJson), QuickDataSourceSearchVo.class);\r\n			\r\n			Page<QuickDataSource> quickDataSources = quickDataSourceService.loadQuickDataSources(currentIndex, quickDataSourceSearchVo);\r\n\r\n			PagedElement<QuickDataSource> pageElement = new PagedElement<QuickDataSource>(quickDataSources);\r\n\r\n			ResponseVo response = ResponseVo.newSuccessMessage(\"loaded successfully.\");\r\n			response.setObject(pageElement);\r\n\r\n			setResponse(response);\r\n\r\n		} catch (Exception e) {\r\n			setResponse(ResponseVo.newFailMessage(e.getMessage()));\r\n\r\n		}\r\n\r\n		return SUCCESS;\r\n	}\r\n}\r\n','','QuickDataSource','package com.tadpole.entity;\r\n\r\nimport java.io.Serializable;\r\nimport java.util.Date;\r\n\r\nimport javax.persistence.Entity;\r\nimport javax.persistence.GeneratedValue;\r\nimport javax.persistence.Id;\r\nimport javax.persistence.Table;\r\n\r\nimport javax.persistence.Column;\r\nimport org.apache.struts2.json.annotations.JSON;\r\n\r\n/**\r\n * @author Jerry Jiang\r\n */\r\n@Entity\r\n@Table(name = \"tad_quick_datasource\")\r\npublic class QuickDataSource implements Serializable {\r\n\r\n	private static final long serialVersionUID = 1L;\r\n\r\n	@Id\r\n	@GeneratedValue\r\n	protected Integer id;\r\n	\r\n	protected String name;\r\n	\r\n	protected String type;\r\n	\r\n	protected String keyValues;\r\n	\r\n	protected String querySql;\r\n	\r\n	protected String description;\r\n	\r\n\r\n	public Integer getId() {\r\n\r\n		return id;\r\n	}\r\n\r\n	public void setId(Integer id) {\r\n\r\n		this.id = id;\r\n	}\r\n\r\n	public String getName() {\r\n\r\n		return name;\r\n	}\r\n	\r\n	public String getType() {\r\n\r\n		return type;\r\n	}\r\n	\r\n	public String getKeyValues() {\r\n\r\n		return keyValues;\r\n	}\r\n	\r\n	public String getQuerySql() {\r\n\r\n		return querySql;\r\n	}\r\n	\r\n	public String getDescription() {\r\n\r\n		return description;\r\n	}\r\n	\r\n	public void setName(String name) {\r\n\r\n		this.name = name;\r\n	}\r\n	\r\n	public void setType(String type) {\r\n\r\n		this.type = type;\r\n	}\r\n	\r\n	public void setKeyValues(String keyValues) {\r\n\r\n		this.keyValues = keyValues;\r\n	}\r\n	\r\n	public void setQuerySql(String querySql) {\r\n\r\n		this.querySql = querySql;\r\n	}\r\n	\r\n	public void setDescription(String description) {\r\n\r\n		this.description = description;\r\n	}\r\n	\r\n}\r\n','function QuickDataSource()  {\r\n	var self = this;\r\n	\r\n	self.id = \'\';\r\n	self.name = null;\r\n	self.type = null;\r\n	self.keyValues = null;\r\n	self.querySql = null;\r\n	self.description = null;\r\n}','Data Sources','package com.tadpole.repository;\r\n\r\nimport org.springframework.data.jpa.repository.JpaRepository;\r\nimport org.springframework.data.jpa.repository.JpaSpecificationExecutor;\r\n\r\nimport com.tadpole.entity.QuickDataSource;\r\n\r\npublic interface QuickDataSourceRepository extends JpaRepository<QuickDataSource, Integer>, JpaSpecificationExecutor<QuickDataSource> {\r\n\r\n	/********************************** additional code start line *******************************************************************/\r\n	\r\n	QuickDataSource findByName(String dataSourceName);\r\n	\r\n}\r\n','package com.tadpole.service.impl;\r\n\r\nimport java.util.Date;\r\n\r\nimport javax.persistence.criteria.CriteriaBuilder;\r\nimport javax.persistence.criteria.CriteriaQuery;\r\nimport javax.persistence.criteria.Predicate;\r\nimport javax.persistence.criteria.Root;\r\n\r\nimport org.apache.commons.lang.StringUtils;\r\nimport org.springframework.beans.factory.annotation.Autowired;\r\nimport org.springframework.stereotype.Service;\r\nimport org.springframework.data.domain.Page;\r\nimport org.springframework.data.domain.PageRequest;\r\nimport org.springframework.data.jpa.domain.Specification;\r\nimport org.springframework.data.jpa.domain.Specifications;\r\n\r\nimport com.tadpole.entity.QuickDataSource;\r\nimport com.tadpole.repository.QuickDataSourceRepository;\r\nimport com.tadpole.service.QuickDataSourceService;\r\nimport com.tadpole.vo.search.QuickDataSourceSearchVo;\r\n\r\n@Service(\"QuickDataSourceService\")\r\npublic class QuickDataSourceServiceImpl implements QuickDataSourceService {\r\n\r\n	@Autowired\r\n	QuickDataSourceRepository quickDataSourceRepository;\r\n\r\n	public QuickDataSource saveOrUpdateQuickDataSource(QuickDataSource quickDataSource) {\r\n\r\n		return quickDataSourceRepository.saveAndFlush(quickDataSource);\r\n	}\r\n	\r\n	public void deleteQuickDataSource(String quickDataSourceId) {\r\n\r\n		quickDataSourceRepository.delete(Integer.valueOf(quickDataSourceId));\r\n	}\r\n	\r\n	public Page<QuickDataSource> loadQuickDataSources(String currentIndex, QuickDataSourceSearchVo quickDataSourceSearchVo) {\r\n		Specifications<QuickDataSource> quickDataSourceSpecification = null;\r\n		if (StringUtils.isNotBlank(quickDataSourceSearchVo.getName())) {\r\n			\r\n       	 	quickDataSourceSpecification = Specifications.where(quickDataSourceNameSpecification(quickDataSourceSearchVo.getName()));\r\n		}\r\n\r\n		if (quickDataSourceSpecification == null) {\r\n       		return quickDataSourceRepository.findAll(new PageRequest(Integer.valueOf(currentIndex) - 1, 10));\r\n		} else {\r\n        	return quickDataSourceRepository.findAll(quickDataSourceSpecification, new PageRequest(Integer.valueOf(currentIndex) - 1, 10));\r\n		}		\r\n		\r\n	}\r\n\r\n	private Specification<QuickDataSource> quickDataSourceNameSpecification(final String name) {\r\n\r\n		return new Specification<QuickDataSource>(){\r\n\r\n			public Predicate toPredicate(Root<QuickDataSource> root, CriteriaQuery<?> query, CriteriaBuilder cb) {\r\n\r\n				return cb.equal(root.get(\"name\"), name);\r\n			}\r\n		};\r\n	}\r\n}\r\n','package com.tadpole.service;\r\n\r\nimport org.springframework.data.domain.Page;\r\n\r\nimport com.tadpole.entity.QuickDataSource;\r\nimport com.tadpole.vo.search.QuickDataSourceSearchVo;\r\n\r\npublic interface QuickDataSourceService {\r\n\r\n	QuickDataSource saveOrUpdateQuickDataSource(QuickDataSource quickDataSource);\r\n\r\n	void deleteQuickDataSource(String quickDataSourceId);\r\n	\r\n	Page<QuickDataSource> loadQuickDataSources(String currentIndex, QuickDataSourceSearchVo quickDataSourceSearchVo);\r\n}\r\n','dev','tad_quick_datasource','Data Source','<%@ page contentType=\"text/html;charset=utf8\"%>\r\n<%@ taglib prefix=\"s\" uri=\"/struts-tags\"%>\r\n<!DOCTYPE html>\r\n<!--[if lt IE 7]> <html class=\"no-js lt-ie9 lt-ie8 lt-ie7\" lang=\"en\"> <![endif]-->\r\n<!--[if IE 7]>	<html class=\"no-js lt-ie9 lt-ie8\" lang=\"en\"> <![endif]-->\r\n<!--[if IE 8]>	<html class=\"no-js lt-ie9\" lang=\"en\"> <![endif]-->\r\n<!--[if gt IE 8]> <html class=\"no-js ie9\" lang=\"en\"> <!-->\r\n<html lang=\"en\">\r\n<!--<![endif]-->\r\n<head>\r\n<!-- Set the viewport width to device width for mobile -->\r\n<meta name=\"viewport\" content=\"width=device-width\" />\r\n<title>Data Source</title>\r\n<s:include value=\"/jsps/common/head.jsp\" />\r\n\r\n</head>\r\n<body>\r\n	<s:include value=\"/jsps/common/brand.jsp\" />\r\n	<s:include value=\"/jsps/common/menu.jsp\" />\r\n	<section class=\"mainbg\">\r\n		<div class=\"container\" id=\"QuickDataSourceDataModelContainer\">\r\n			<div class=\"row\">\r\n				<div style=\"color: red\">\r\n					<s:fielderror />\r\n				</div>\r\n				<div id=\"quickDataSourceDialog\" title=\"QuickDataSource Management\" style=\"display: none\" data-bind=\"with : selectedQuickDataSource\">\r\n					<div class=\"row\">\r\n						<div class=\"three columns\">\r\n							<label>Name</label>\r\n							<input type=\"text\" data-bind=\"value : name\" />\r\n						</div>\r\n						<div class=\"three columns\">\r\n							<label>Type</label>\r\n							<select data-bind=\"options: $root.QuickDataType,\r\n                      					       optionsText: \'optionText\',\r\n                       					       value: type,\r\n                       					       optionsValue : \'optionValue\',\r\n                       						   selectedOption : type,\r\n                       						   optionsCaption: \'Please select\'\">\r\n							</select>		\r\n						</div>\r\n						<div class=\"three columns\">\r\n							<label>Fixed Values</label>\r\n							<input type=\"text\" data-bind=\"value : keyValues\" />\r\n						</div>\r\n						<div class=\"three columns\">\r\n							<label>SQL</label>\r\n							<input type=\"text\" data-bind=\"value : querySql\" />\r\n						</div>\r\n					</div>\r\n					<div class=\"row\">\r\n						<div class=\"three columns\">\r\n							<label>Description</label>\r\n							<select data-bind=\"options: $root.DataSources,\r\n                      					       optionsText: \'optionText\',\r\n                       					       value: description,\r\n                       					       optionsValue : \'optionValue\',\r\n                       						   selectedOption : description,\r\n                       						   optionsCaption: \'Please select\'\">\r\n							</select>		\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"row\">\r\n					<div class=\"app-wrapper ui-corner-top\">\r\n						<div class=\"blue module ui-corner-top clearfix\">\r\n							<h2>Search QuickDataSource</h2>\r\n							<h2 class=\"right\"></h2>\r\n						</div>\r\n						<div class=\"content\" data-bind=\"with : quickDataSourceSearch\">\r\n								<div class=\"row\">\r\n									<div class=\"three columns\">\r\n										<label>Name</label>\r\n												<select data-bind=\"options: $root.DataSources,\r\n                      					       		optionsText: \'optionText\',\r\n                       					       		value: name,\r\n                       					      		optionsValue : \'optionValue\',\r\n                       						   		selectedOption : name,\r\n                       						   		optionsCaption: \'Please select\'\">\r\n												</select>		\r\n									</div>\r\n							</div>\r\n							\r\n							<div class=\"row\">\r\n								<a title=\"Search QuickDataSource\" data-bind=\"click : $root.searchQuickDataSourceWithConditions\" href=\"#\" class=\"small blue button\">Seach QuickDataSource</a>\r\n								<a title=\"Search QuickDataSource\" data-bind=\"click : $root.resetSearchConditions\" href=\"#\" class=\"small blue button\">Reset</a>\r\n							</div>\r\n						</div>\r\n					</div>	\r\n				</div>\r\n				<div class=\"row\">\r\n					<div class=\"app-wrapper ui-corner-top\">\r\n						<div class=\"blue module ui-corner-top clearfix\">\r\n							<h2>QuickDataSource List</h2>\r\n							<h2 class=\"right\"></h2>\r\n						</div>\r\n						<div class=\"content\">\r\n						\r\n								<div class=\"row\" style=\"margin-bottom: 5px\">\r\n									<div class=\"nine columns\">\r\n										Find <span class=\"label\" data-bind=\"text : $root.totalCount\"></span> records, <span class=\"label\" data-bind=\"text : $root.totalPageCount\"></span> pages.\r\n									</div>\r\n									<div class=\"three columns\">\r\n										<a title=\"add attribute\" data-bind=\"click : $root.openManageQuickDataSourceDialog\" href=\"#\" class=\"right\" style=\"margin-right: 10px\"><i class=\"small icon-plus icon-green\"></i></a>\r\n									</div>\r\n								</div>\r\n								<div class=\"row\">\r\n									<table class=\"infoTable\">\r\n										<thead>\r\n											<tr>\r\n												<th style=\"text-align: center\">Name</th>\r\n												<th style=\"text-align: center\">Type</th>\r\n												<th style=\"text-align: center\">Fixed Values</th>\r\n												<th style=\"text-align: center\">SQL</th>\r\n												<th style=\"text-align: center\">Description</th>\r\n												<th></th>\r\n											</tr>\r\n										</thead>\r\n										<tbody data-bind=\"foreach : quickDataSourceList\">\r\n											<tr>\r\n												<td style=\"text-align: center\" data-bind=\"text : name\"></td>\r\n												<td style=\"text-align: center\" data-bind=\"text : type\"></td>\r\n												<td style=\"text-align: center\" data-bind=\"text : keyValues\"></td>\r\n												<td style=\"text-align: center\" data-bind=\"text : querySql\"></td>\r\n												<td style=\"text-align: center\" data-bind=\"text : description\"></td>\r\n												<td style=\"text-align: center\">\r\n													<a title=\"update quickDataSource\" data-bind=\"click : $root.openManageQuickDataSourceDialog\" style=\"margin-left: 10px;\" href=\"#\"><i class=\"icon-pencil small icon-blue\"></i></a>\r\n													<a title=\"delete quickDataSource\" data-bind=\"click : $root.deleteQuickDataSource\" style=\"margin-left: 10px;\" href=\"#\"><i class=\"icon-trash small icon-red\"></i></a>\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n									<br>\r\n								</div>\r\n								<div class=\"row\" id=\"quickDataSourcePageNavigation\"></div>\r\n						</div>\r\n					</div>\r\n\r\n				</div>\r\n\r\n			</div>\r\n		</div>\r\n	</section>\r\n	<s:include value=\"/jsps/common/footer.jsp\" />\r\n	<script src=\"/crud/js/vo/QuickDataSource.js\"></script>\r\n	<script src=\"/crud/js/vo/search/QuickDataSourceSearch.js\"></script>\r\n	<script>\r\n		$(document).ready(function() {\r\n\r\n			var QuickDataSourceDataModel = function() {\r\n\r\n				var self = this;\r\n				\r\n				self.selectedQuickDataSource = ko.observable(new QuickDataSource());\r\n				self.quickDataSourceList = ko.observableArray([]);\r\n				self.totalCount = ko.observable(0);\r\n				self.totalPageCount = ko.observable(0);\r\n				self.currentIndex = ko.observable(1);\r\n				self.quickDataSourceSearch = ko.observable(new QuickDataSourceSearch());\r\n				self.QuickDataType = ko.observableArray([]);\r\n				self.DataSources = ko.observableArray([]);\r\n				$.ajax({ url : \'/crud/loadDatasource.action\',\r\n						 data : { dataSourceName : \'QuickDataType\' },\r\n						 success : function(data) {\r\n								self.QuickDataType(data);\r\n						}\r\n					});\r\n				$.ajax({ url : \'/crud/loadDatasource.action\',\r\n						 data : { dataSourceName : \'DataSources\' },\r\n						 success : function(data) {\r\n								self.DataSources(data);\r\n						}\r\n					});\r\n				\r\n				self.resetSearchConditions = function() {\r\n					self.quickDataSourceSearch(new QuickDataSourceSearch());\r\n				};\r\n				\r\n				self.searchQuickDataSource = function() {\r\n				\r\n					for(var key in self.quickDataSourceSearch()) {\r\n						if (eval(\"self.quickDataSourceSearch().\" + key) == \'\') {\r\n							eval(\"self.quickDataSourceSearch().\" + key + \" = null\");\r\n						}\r\n					}\r\n					\r\n					$.ajax({\r\n						url : \'loadQuickDataSources.action\',\r\n						data : {currentIndex : self.currentIndex(),\r\n								quickDataSourceSearchVoJson : JSON.stringify(self.quickDataSourceSearch())\r\n								},\r\n						success : function(data) {\r\n							\r\n							if (data && data.object && data.object.elements) {\r\n							\r\n								self.quickDataSourceList(data.object.elements);\r\n								self.totalCount(data.object.total);\r\n								self.totalPageCount(data.object.totalPages);\r\n								\r\n								$(\'#quickDataSourcePageNavigation\').pagination(\r\n                				self.totalCount(),\r\n        							{\r\n                					num_edge_entries: 1,\r\n                					num_display_entries: 15,\r\n                					callback: self.pageSelectCallback,\r\n                					items_per_page: 10,\r\n                					prev_text: \"Last Page\",\r\n                					next_text: \"Next Page\",\r\n                					current_page : self.currentIndex() - 1,\r\n                					load_first_page : false\r\n        							}\r\n								);\r\n							} else {\r\n								\r\n								if (!isOK(data)) {\r\n									\r\n									fail(\"Error: \" + data.message);\r\n									\r\n									self.quickDataSourceList([]);\r\n									self.totalCount(0);\r\n									self.totalPageCount(0);\r\n								}\r\n							}\r\n						}\r\n					});\r\n				};\r\n				\r\n				self.searchQuickDataSource();\r\n				\r\n				self.searchQuickDataSourceWithConditions = function() {\r\n					self.currentIndex(1);\r\n					self.searchQuickDataSource();\r\n				};\r\n				\r\n				self.pageSelectCallback = function(page_index, jq){\r\n        				self.currentIndex(page_index + 1);\r\n        				self.searchQuickDataSource();\r\n        				return false;\r\n				};\r\n				\r\n				self.saveOrUpdateQuickDataSource = function() {\r\n					\r\n					$.ajax({\r\n						url : \'saveOrUpdateQuickDataSource.action\',\r\n						method : \'POST\',\r\n						data : {\r\n							quickDataSourceJson : JSON.stringify(self.selectedQuickDataSource())\r\n						},\r\n						success : function(data) {\r\n							handleStanderdResponse(data);\r\n							\r\n							if(data.object && data.object.id) {\r\n								self.selectedQuickDataSource(data.object);\r\n								closeDialog(\'quickDataSourceDialog\');\r\n								\r\n								self.searchQuickDataSource();\r\n							}\r\n						}\r\n					});	\r\n					\r\n				};\r\n				\r\n				self.openManageQuickDataSourceDialog = function(item, event) {\r\n					\r\n					if(item.id) {\r\n						self.selectedQuickDataSource(item);\r\n					} else {\r\n						self.selectedQuickDataSource(new QuickDataSource());\r\n					}\r\n					\r\n					$(\'#quickDataSourceDialog\').dialog({\r\n						modal : true,\r\n						width : 1191,\r\n						height : 658,\r\n						open : function(e) {\r\n							changeButtonStyleForPopup(e);\r\n						},\r\n						\r\n						buttons : {\r\n							\'Save\' : function() {\r\n								self.saveOrUpdateQuickDataSource();\r\n							},\r\n							\'Close\' : function() {\r\n								closeDialog(\'quickDataSourceDialog\');\r\n							}\r\n						}\r\n					});\r\n				};\r\n				\r\n				self.deleteQuickDataSource = function(item, event) {\r\n					\r\n					if (window.confirm(\"Are your sure to DELETE it?\")) {\r\n						\r\n						$.ajax({\r\n							url : \'deleteQuickDataSource.action\',\r\n							method : \'POST\',\r\n							data : {\r\n								quickDataSourceId : item.id\r\n							},\r\n							success : function(data) {\r\n								handleStanderdResponse(data);\r\n								\r\n								if(isOK(data)) {\r\n									self.searchQuickDataSource();\r\n								}\r\n							}\r\n						});\r\n					}\r\n				};\r\n			};\r\n\r\n			var quickDataSourceDataModel = new QuickDataSourceDataModel();\r\n\r\n			var $quickDataSourceDataModelContainer = $(\'#QuickDataSourceDataModelContainer\')[0];\r\n			\r\n			ko.applyBindings(quickDataSourceDataModel, $quickDataSourceDataModelContainer);\r\n		});\r\n\r\n		function activeCurrentMenuItem() {\r\n			$(\'#QuickDataSourceLink\').addClass(\'active\');\r\n		}\r\n	</script>\r\n</body>\r\n</html>','<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<!DOCTYPE struts PUBLIC \"-//Apache Software Foundation//DTD Struts Configuration 2.0//EN\" \"http://struts.apache.org/dtds/struts-2.0.dtd\">\r\n<struts>\r\n	<package name=\"devQuickDataSource\" namespace=\"/dev\" extends=\"struts-default\">\r\n		\r\n		<result-types>\r\n			 <result-type name=\"json\" class=\"org.apache.struts2.json.JSONResult\" />\r\n		</result-types>\r\n		<action name=\"loadQuickDataSourceMgr\">\r\n			<result>dev-QuickDataSource-management.jsp</result>\r\n		</action>\r\n		<action name=\"saveOrUpdateQuickDataSource\" class=\"QuickDataSourceAction\" method=\"saveOrUpdateQuickDataSource\">\r\n			<result name=\"input\">\r\n				dev-QuickDataSource-management.jsp\r\n			</result>\r\n			<result name=\"success\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n			<result name=\"error\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n		</action>\r\n		<action name=\"deleteQuickDataSource\" class=\"QuickDataSourceAction\" method=\"deleteQuickDataSource\">\r\n			<result name=\"input\">\r\n				dev-QuickDataSource-management.jsp\r\n			</result>\r\n			<result name=\"success\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n			<result name=\"error\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n		</action>\r\n		<action name=\"loadQuickDataSources\" class=\"QuickDataSourceAction\" method=\"loadQuickDataSources\">\r\n			<result name=\"success\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n			<result name=\"error\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n		</action>\r\n	</package>\r\n	\r\n</struts>','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\controller\\QuickDataSourceAction.java','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\entity\\QuickDataSource.java','D:\\data\\Jerry\\crud\\src\\main\\webapp\\js\\vo\\QuickDataSource.js','D:\\data\\Jerry\\crud\\src\\main\\webapp\\dev\\dev-QuickDataSource-management.jsp','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\repository\\QuickDataSourceRepository.java','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\service\\impl\\QuickDataSourceServiceImpl.java','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\service\\QuickDataSourceService.java','D:\\data\\Jerry\\crud\\src\\main\\resources\\struts\\dev-QuickDataSource-struts.xml',15,'package com.tadpole.vo.search;\r\n\r\nimport java.io.Serializable;\r\nimport java.util.Date;\r\n\r\npublic class QuickDataSourceSearchVo implements Serializable {\r\n\r\n	private static final long serialVersionUID = 1L;\r\n\r\n	protected String name;\r\n	protected String type;\r\n	protected String keyValues;\r\n	protected String querySql;\r\n	protected String description;\r\n\r\n	public String getName() {\r\n\r\n		return name;\r\n	}\r\n	\r\n	public String getType() {\r\n\r\n		return type;\r\n	}\r\n	\r\n	public String getKeyValues() {\r\n\r\n		return keyValues;\r\n	}\r\n	\r\n	public String getQuerySql() {\r\n\r\n		return querySql;\r\n	}\r\n	\r\n	public String getDescription() {\r\n\r\n		return description;\r\n	}\r\n	\r\n	public void setName(String name) {\r\n\r\n		this.name = name;\r\n	}\r\n	\r\n	public void setType(String type) {\r\n\r\n		this.type = type;\r\n	}\r\n	\r\n	public void setKeyValues(String keyValues) {\r\n\r\n		this.keyValues = keyValues;\r\n	}\r\n	\r\n	public void setQuerySql(String querySql) {\r\n\r\n		this.querySql = querySql;\r\n	}\r\n	\r\n	public void setDescription(String description) {\r\n\r\n		this.description = description;\r\n	}\r\n	\r\n}\r\n','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\vo\\search\\QuickDataSourceSearchVo.java','function QuickDataSourceSearch()  {\r\n	var self = this;\r\n	\r\n	self.name = null;\r\n	self.type = null;\r\n	self.keyValues = null;\r\n	self.querySql = null;\r\n	self.description = null;\r\n}','D:\\data\\Jerry\\crud\\src\\main\\webapp\\js\\vo\\search\\QuickDataSourceSearch.js','package com.tadpole.rest;\r\n\r\nimport javax.annotation.Resource;\r\nimport javax.ws.rs.Consumes;\r\nimport javax.ws.rs.GET;\r\nimport javax.ws.rs.POST;\r\nimport javax.ws.rs.Path;\r\nimport javax.ws.rs.PathParam;\r\nimport javax.ws.rs.Produces;\r\nimport javax.ws.rs.core.MediaType;\r\nimport javax.ws.rs.core.Response;\r\nimport javax.ws.rs.core.Response.Status;\r\n\r\nimport org.springframework.beans.factory.annotation.Autowired;\r\nimport org.springframework.stereotype.Component;\r\n\r\nimport com.tadpole.entity.QuickDataSource;\r\nimport com.tadpole.repository.QuickDataSourceRepository;\r\nimport com.tadpole.service.QuickDataSourceService;\r\n\r\n@Component\r\n@Path(\"/quickDataSource\")\r\npublic class QuickDataSourceResource {\r\n\r\n	@Autowired\r\n	private QuickDataSourceRepository quickDataSourceRepository;\r\n	\r\n	@Resource(name = \"QuickDataSourceService\")\r\n	private QuickDataSourceService quickDataSourceService;\r\n\r\n	@GET\r\n	@Path(\"/{id}\")\r\n	@Produces(MediaType.APPLICATION_JSON)\r\n	public QuickDataSource getQuickDataSourceById(@PathParam(\"id\") Integer id) {\r\n\r\n		QuickDataSource quickDataSource = quickDataSourceRepository.findOne(id);\r\n\r\n		return quickDataSource;\r\n\r\n	}\r\n	\r\n	\r\n	@POST\r\n	@Path(\"/save\")\r\n	@Consumes(MediaType.APPLICATION_JSON)\r\n	@Produces(MediaType.APPLICATION_JSON)\r\n	public QuickDataSource saveOrUpdateQuickDataSource(QuickDataSource quickDataSource) {\r\n		\r\n		QuickDataSource saved = quickDataSourceService.saveOrUpdateQuickDataSource(quickDataSource);\r\n		\r\n		return saved;\r\n	}\r\n	\r\n	@POST\r\n	@Path(\"/delete/{id}\")\r\n	public Response deleteQuickDataSource(@PathParam(\"id\") String id) {\r\n		\r\n		try {\r\n			quickDataSourceService.deleteQuickDataSource(id);\r\n			\r\n		} catch (Exception e) {\r\n			\r\n			return Response.status(Status.INTERNAL_SERVER_ERROR).entity(e.getMessage()).build();\r\n		}\r\n		\r\n		return Response.ok().build();\r\n	}\r\n\r\n}\r\n','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\rest\\QuickDataSourceResource.java','QuickDataSource findByName(String dataSourceName);'),(15,'package com.tadpole.controller;\r\n\r\nimport javax.annotation.Resource;\r\n\r\nimport net.sf.json.JSONObject;\r\nimport net.sf.json.util.JSONUtils;\r\nimport net.sf.ezmorph.object.DateMorpher;\r\n\r\nimport org.apache.commons.lang.StringUtils;\r\n\r\nimport com.tadpole.vo.search.CustomerSearchVo;\r\n\r\nimport com.tadpole.entity.Customer;\r\nimport com.tadpole.service.CustomerService;\r\nimport com.tadpole.vo.ResponseVo;\r\nimport com.tadpole.vo.PagedElement;\r\nimport org.springframework.stereotype.Component;\r\nimport org.springframework.context.annotation.Scope;\r\nimport org.springframework.data.domain.Page;\r\n\r\n@Component(\"CustomerAction\")\r\n@Scope(\"prototype\")\r\npublic class CustomerAction extends AbstractAction {\r\n\r\n	private static final long serialVersionUID = 1L;\r\n\r\n	@Resource(name = \"CustomerService\")\r\n	private CustomerService customerService;\r\n\r\n	public String saveOrUpdateCustomer() {\r\n	\r\n		try {\r\n			String customerJson = getParameter(\"customerJson\");\r\n\r\n			if (StringUtils.isEmpty(customerJson)) {\r\n				setResponse(ResponseVo.newFailMessage(\"Bad request : no data found to save or update.\"));\r\n\r\n				return SUCCESS;\r\n			}\r\n			\r\n			JSONUtils.getMorpherRegistry().registerMorpher(new DateMorpher(new String[]{\"yyyy-MM-dd\"}));\r\n			\r\n			Customer customer = (Customer)JSONObject.toBean(JSONObject.fromObject(customerJson), Customer.class);\r\n\r\n			Customer saved = customerService.saveOrUpdateCustomer(customer);\r\n			\r\n			ResponseVo response = ResponseVo.newSuccessMessage(\"The customer is successfully saved.\");\r\n			response.setObject(saved);\r\n			\r\n			setResponse(response);\r\n			\r\n		} catch (Exception e) {\r\n			\r\n			setResponse(ResponseVo.newFailMessage(e.getMessage()));\r\n		}\r\n\r\n		return SUCCESS;\r\n	}\r\n\r\n	public String deleteCustomer() {\r\n	\r\n		try {\r\n			String customerId = getParameter(\"customerId\");\r\n\r\n			if (StringUtils.isEmpty(customerId)) {\r\n				setResponse(ResponseVo.newFailMessage(\"Bad request : no data is provided to delete.\"));\r\n\r\n				return SUCCESS;\r\n			}\r\n\r\n			customerService.deleteCustomer(customerId);\r\n			\r\n			ResponseVo response = ResponseVo.newSuccessMessage(\"The customer is successfully deleted.\");\r\n			\r\n			setResponse(response);\r\n			\r\n		} catch (Exception e) {\r\n			\r\n			setResponse(ResponseVo.newFailMessage(e.getMessage()));\r\n		}\r\n\r\n		return SUCCESS;\r\n	}\r\n	\r\n	public String loadCustomers() {\r\n\r\n		try {\r\n			String currentIndex = getParameter(\"currentIndex\");\r\n			if (StringUtils.isEmpty(currentIndex)) {\r\n        		currentIndex = \"1\";\r\n			}\r\n			\r\n			String customerSearchVoJson = getParameter(\"customerSearchVoJson\");\r\n			\r\n			JSONUtils.getMorpherRegistry().registerMorpher(new DateMorpher(new String[]{\"yyyy-MM-dd\"}));\r\n			\r\n			CustomerSearchVo customerSearchVo = (CustomerSearchVo)JSONObject.toBean(JSONObject.fromObject(customerSearchVoJson), CustomerSearchVo.class);\r\n			\r\n			Page<Customer> customers = customerService.loadCustomers(currentIndex, customerSearchVo);\r\n\r\n			PagedElement<Customer> pageElement = new PagedElement<Customer>(customers);\r\n\r\n			ResponseVo response = ResponseVo.newSuccessMessage(\"loaded successfully.\");\r\n			response.setObject(pageElement);\r\n\r\n			setResponse(response);\r\n\r\n		} catch (Exception e) {\r\n			setResponse(ResponseVo.newFailMessage(e.getMessage()));\r\n\r\n		}\r\n\r\n		return SUCCESS;\r\n	}\r\n}\r\n','','Customer','package com.tadpole.entity;\r\n\r\nimport java.io.Serializable;\r\nimport java.util.Date;\r\n\r\nimport javax.persistence.Entity;\r\nimport javax.persistence.GeneratedValue;\r\nimport javax.persistence.Id;\r\nimport javax.persistence.Table;\r\n\r\nimport javax.persistence.Column;\r\nimport org.apache.struts2.json.annotations.JSON;\r\n\r\n/**\r\n * @author Jerry Jiang\r\n */\r\n@Entity\r\n@Table(name = \"tad_customer\")\r\npublic class Customer implements Serializable {\r\n\r\n	private static final long serialVersionUID = 1L;\r\n\r\n	@Id\r\n	@GeneratedValue\r\n	protected Integer id;\r\n	\r\n	@Column(nullable = false)\r\n	protected String name;\r\n	\r\n	@Column(nullable = false)\r\n	protected String phone;\r\n	\r\n	protected String fixedPhone;\r\n	\r\n	protected String address;\r\n	\r\n	protected String sex;\r\n	\r\n	protected Date birthday;\r\n	\r\n	protected String avatar;\r\n	\r\n\r\n	public Integer getId() {\r\n\r\n		return id;\r\n	}\r\n\r\n	public void setId(Integer id) {\r\n\r\n		this.id = id;\r\n	}\r\n\r\n	public String getName() {\r\n\r\n		return name;\r\n	}\r\n	\r\n	public String getPhone() {\r\n\r\n		return phone;\r\n	}\r\n	\r\n	public String getFixedPhone() {\r\n\r\n		return fixedPhone;\r\n	}\r\n	\r\n	public String getAddress() {\r\n\r\n		return address;\r\n	}\r\n	\r\n	public String getSex() {\r\n\r\n		return sex;\r\n	}\r\n	\r\n	@JSON(format=\"yyyy-MM-dd\")\r\n	public Date getBirthday() {\r\n\r\n		return birthday;\r\n	}\r\n	\r\n	public String getAvatar() {\r\n\r\n		return avatar;\r\n	}\r\n	\r\n	public void setName(String name) {\r\n\r\n		this.name = name;\r\n	}\r\n	\r\n	public void setPhone(String phone) {\r\n\r\n		this.phone = phone;\r\n	}\r\n	\r\n	public void setFixedPhone(String fixedPhone) {\r\n\r\n		this.fixedPhone = fixedPhone;\r\n	}\r\n	\r\n	public void setAddress(String address) {\r\n\r\n		this.address = address;\r\n	}\r\n	\r\n	public void setSex(String sex) {\r\n\r\n		this.sex = sex;\r\n	}\r\n	\r\n	public void setBirthday(Date birthday) {\r\n\r\n		this.birthday = birthday;\r\n	}\r\n	\r\n	public void setAvatar(String avatar) {\r\n\r\n		this.avatar = avatar;\r\n	}\r\n	\r\n}\r\n','function Customer()  {\r\n	var self = this;\r\n	\r\n	self.id = \'\';\r\n	self.name = null;\r\n	self.phone = null;\r\n	self.fixedPhone = null;\r\n	self.address = null;\r\n	self.sex = null;\r\n	self.birthday = null;\r\n	self.avatar = null;\r\n}','Customers','package com.tadpole.repository;\r\n\r\nimport org.springframework.data.jpa.repository.JpaRepository;\r\nimport org.springframework.data.jpa.repository.JpaSpecificationExecutor;\r\n\r\nimport com.tadpole.entity.Customer;\r\n\r\npublic interface CustomerRepository extends JpaRepository<Customer, Integer>, JpaSpecificationExecutor<Customer> {\r\n\r\n}\r\n','package com.tadpole.service.impl;\r\n\r\nimport java.util.Date;\r\n\r\nimport javax.persistence.criteria.CriteriaBuilder;\r\nimport javax.persistence.criteria.CriteriaQuery;\r\nimport javax.persistence.criteria.Predicate;\r\nimport javax.persistence.criteria.Root;\r\n\r\nimport org.apache.commons.lang.StringUtils;\r\nimport org.springframework.beans.factory.annotation.Autowired;\r\nimport org.springframework.stereotype.Service;\r\nimport org.springframework.data.domain.Page;\r\nimport org.springframework.data.domain.PageRequest;\r\nimport org.springframework.data.jpa.domain.Specification;\r\nimport org.springframework.data.jpa.domain.Specifications;\r\n\r\nimport com.tadpole.entity.Customer;\r\nimport com.tadpole.repository.CustomerRepository;\r\nimport com.tadpole.service.CustomerService;\r\nimport com.tadpole.vo.search.CustomerSearchVo;\r\n\r\n@Service(\"CustomerService\")\r\npublic class CustomerServiceImpl implements CustomerService {\r\n\r\n	@Autowired\r\n	CustomerRepository customerRepository;\r\n\r\n	public Customer saveOrUpdateCustomer(Customer customer) {\r\n\r\n		return customerRepository.saveAndFlush(customer);\r\n	}\r\n	\r\n	public void deleteCustomer(String customerId) {\r\n\r\n		customerRepository.delete(Integer.valueOf(customerId));\r\n	}\r\n	\r\n	public Page<Customer> loadCustomers(String currentIndex, CustomerSearchVo customerSearchVo) {\r\n		Specifications<Customer> customerSpecification = null;\r\n		if (StringUtils.isNotBlank(customerSearchVo.getName())) {\r\n			\r\n       	 	customerSpecification = Specifications.where(customerNameSpecification(customerSearchVo.getName()));\r\n		}\r\n		if (StringUtils.isNotBlank(customerSearchVo.getPhone())) {\r\n\r\n         	if (customerSpecification == null) {\r\n                customerSpecification = Specifications.where(customerPhoneSpecification(customerSearchVo.getPhone()));\r\n         	} else {\r\n                customerSpecification.and(customerPhoneSpecification(customerSearchVo.getPhone()));\r\n        	}\r\n 		}\r\n		if (customerSearchVo.getBirthday() != null) {\r\n\r\n         	if (customerSpecification == null) {\r\n                customerSpecification = Specifications.where(customerBirthdaySpecification(customerSearchVo.getBirthday()));\r\n         	} else {\r\n                customerSpecification.and(customerBirthdaySpecification(customerSearchVo.getBirthday()));\r\n        	}\r\n 		}\r\n\r\n		if (customerSpecification == null) {\r\n       		return customerRepository.findAll(new PageRequest(Integer.valueOf(currentIndex) - 1, 10));\r\n		} else {\r\n        	return customerRepository.findAll(customerSpecification, new PageRequest(Integer.valueOf(currentIndex) - 1, 10));\r\n		}		\r\n		\r\n	}\r\n\r\n	private Specification<Customer> customerNameSpecification(final String name) {\r\n\r\n		return new Specification<Customer>(){\r\n\r\n			public Predicate toPredicate(Root<Customer> root, CriteriaQuery<?> query, CriteriaBuilder cb) {\r\n\r\n				return cb.equal(root.get(\"name\"), name);\r\n			}\r\n		};\r\n	}\r\n	private Specification<Customer> customerPhoneSpecification(final String phone) {\r\n\r\n		return new Specification<Customer>(){\r\n\r\n			public Predicate toPredicate(Root<Customer> root, CriteriaQuery<?> query, CriteriaBuilder cb) {\r\n\r\n				return cb.equal(root.get(\"phone\"), phone);\r\n			}\r\n		};\r\n	}\r\n	private Specification<Customer> customerBirthdaySpecification(final Date birthday) {\r\n\r\n		return new Specification<Customer>(){\r\n\r\n			public Predicate toPredicate(Root<Customer> root, CriteriaQuery<?> query, CriteriaBuilder cb) {\r\n\r\n				return cb.equal(root.get(\"birthday\"), birthday);\r\n			}\r\n		};\r\n	}\r\n}\r\n','package com.tadpole.service;\r\n\r\nimport org.springframework.data.domain.Page;\r\n\r\nimport com.tadpole.entity.Customer;\r\nimport com.tadpole.vo.search.CustomerSearchVo;\r\n\r\npublic interface CustomerService {\r\n\r\n	Customer saveOrUpdateCustomer(Customer customer);\r\n\r\n	void deleteCustomer(String customerId);\r\n	\r\n	Page<Customer> loadCustomers(String currentIndex, CustomerSearchVo customerSearchVo);\r\n}\r\n','dev','tad_customer','customer','<%@ page contentType=\"text/html;charset=utf8\"%>\r\n<%@ taglib prefix=\"s\" uri=\"/struts-tags\"%>\r\n<!DOCTYPE html>\r\n<!--[if lt IE 7]> <html class=\"no-js lt-ie9 lt-ie8 lt-ie7\" lang=\"en\"> <![endif]-->\r\n<!--[if IE 7]>	<html class=\"no-js lt-ie9 lt-ie8\" lang=\"en\"> <![endif]-->\r\n<!--[if IE 8]>	<html class=\"no-js lt-ie9\" lang=\"en\"> <![endif]-->\r\n<!--[if gt IE 8]> <html class=\"no-js ie9\" lang=\"en\"> <!-->\r\n<html lang=\"en\">\r\n<!--<![endif]-->\r\n<head>\r\n<!-- Set the viewport width to device width for mobile -->\r\n<meta name=\"viewport\" content=\"width=device-width\" />\r\n<title>customer</title>\r\n<s:include value=\"/jsps/common/head.jsp\" />\r\n\r\n</head>\r\n<body>\r\n	<s:include value=\"/jsps/common/brand.jsp\" />\r\n	<s:include value=\"/jsps/common/menu.jsp\" />\r\n	<section class=\"mainbg\">\r\n		<div class=\"container\" id=\"CustomerDataModelContainer\">\r\n			<div class=\"row\">\r\n				<div style=\"color: red\">\r\n					<s:fielderror />\r\n				</div>\r\n				<div id=\"customerDialog\" title=\"Customer Management\" style=\"display: none\" data-bind=\"with : selectedCustomer\">\r\n					<div class=\"row\">\r\n						<div class=\"three columns\">\r\n							<label class=\'required\'>Name</label>\r\n							<input type=\"text\" data-bind=\"value : name\" />\r\n						</div>\r\n						<div class=\"three columns\">\r\n							<label class=\'required\'>phone</label>\r\n							<input type=\"text\" data-bind=\"value : phone\" />\r\n						</div>\r\n						<div class=\"three columns\">\r\n							<label>fixed phone</label>\r\n							<input type=\"text\" data-bind=\"value : fixedPhone\" />\r\n						</div>\r\n						<div class=\"three columns\">\r\n							<label>Address</label>\r\n							<input type=\"text\" data-bind=\"value : address\" />\r\n						</div>\r\n					</div>\r\n					<div class=\"row\">\r\n						<div class=\"three columns\">\r\n							<label>Sex</label>\r\n							<select data-bind=\"options: $root.sexDatasource,\r\n                      					       optionsText: \'optionText\',\r\n                       					       value: sex,\r\n                       					       optionsValue : \'optionValue\',\r\n                       						   selectedOption : sex,\r\n                       						   optionsCaption: \'Please select\'\">\r\n							</select>		\r\n						</div>\r\n						<div class=\"three columns\">\r\n							<label>Birthday</label>\r\n							<input type=\"text\" data-bind=\"datepicker : {dateFormat : \'yy-mm-dd\'}, value : birthday\" />\r\n						</div>\r\n						<div class=\"three columns\">\r\n							<label>Avatar URL</label>\r\n							<input type=\"text\" data-bind=\"value : avatar\" />\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"row\">\r\n					<div class=\"app-wrapper ui-corner-top\">\r\n						<div class=\"blue module ui-corner-top clearfix\">\r\n							<h2>Search Customer</h2>\r\n							<h2 class=\"right\"></h2>\r\n						</div>\r\n						<div class=\"content\" data-bind=\"with : customerSearch\">\r\n								<div class=\"row\">\r\n									<div class=\"three columns\">\r\n										<label>Name</label>\r\n											<input type=\"text\" data-bind=\"value : name\" />\r\n									</div>\r\n									<div class=\"three columns\">\r\n										<label>phone</label>\r\n											<input type=\"text\" data-bind=\"value : phone\" />\r\n									</div>\r\n									<div class=\"three columns\">\r\n										<label>Birthday</label>\r\n											<input type=\"text\" data-bind=\"datepicker : {dateFormat : \'yy-mm-dd\'}, value : birthday\" />\r\n									</div>\r\n							</div>\r\n							\r\n							<div class=\"row\">\r\n								<a title=\"Search Customer\" data-bind=\"click : $root.searchCustomerWithConditions\" href=\"#\" class=\"small blue button\">Seach Customer</a>\r\n								<a title=\"Search Customer\" data-bind=\"click : $root.resetSearchConditions\" href=\"#\" class=\"small blue button\">Reset</a>\r\n							</div>\r\n						</div>\r\n					</div>	\r\n				</div>\r\n				<div class=\"row\">\r\n					<div class=\"app-wrapper ui-corner-top\">\r\n						<div class=\"blue module ui-corner-top clearfix\">\r\n							<h2>Customer List</h2>\r\n							<h2 class=\"right\"></h2>\r\n						</div>\r\n						<div class=\"content\">\r\n						\r\n								<div class=\"row\" style=\"margin-bottom: 5px\">\r\n									<div class=\"nine columns\">\r\n										Find <span class=\"label\" data-bind=\"text : $root.totalCount\"></span> records, <span class=\"label\" data-bind=\"text : $root.totalPageCount\"></span> pages.\r\n									</div>\r\n									<div class=\"three columns\">\r\n										<a title=\"add attribute\" data-bind=\"click : $root.openManageCustomerDialog\" href=\"#\" class=\"right\" style=\"margin-right: 10px\"><i class=\"small icon-plus icon-green\"></i></a>\r\n									</div>\r\n								</div>\r\n								<div class=\"row\">\r\n									<table class=\"infoTable\">\r\n										<thead>\r\n											<tr>\r\n												<th style=\"text-align: center\">Name</th>\r\n												<th style=\"text-align: center\">phone</th>\r\n												<th style=\"text-align: center\">Sex</th>\r\n												<th style=\"text-align: center\">Birthday</th>\r\n												<th></th>\r\n											</tr>\r\n										</thead>\r\n										<tbody data-bind=\"foreach : customerList\">\r\n											<tr>\r\n												<td style=\"text-align: center\" data-bind=\"text : name\"></td>\r\n												<td style=\"text-align: center\" data-bind=\"text : phone\"></td>\r\n												<td style=\"text-align: center\" data-bind=\"text : sex\"></td>\r\n												<td style=\"text-align: center\" data-bind=\"text : birthday\"></td>\r\n												<td style=\"text-align: center\">\r\n													<a title=\"update customer\" data-bind=\"click : $root.openManageCustomerDialog\" style=\"margin-left: 10px;\" href=\"#\"><i class=\"icon-pencil small icon-blue\"></i></a>\r\n													<a title=\"delete customer\" data-bind=\"click : $root.deleteCustomer\" style=\"margin-left: 10px;\" href=\"#\"><i class=\"icon-trash small icon-red\"></i></a>\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n									<br>\r\n								</div>\r\n								<div class=\"row\" id=\"customerPageNavigation\"></div>\r\n						</div>\r\n					</div>\r\n\r\n				</div>\r\n\r\n			</div>\r\n		</div>\r\n	</section>\r\n	<s:include value=\"/jsps/common/footer.jsp\" />\r\n	<script src=\"/crud/js/vo/Customer.js\"></script>\r\n	<script src=\"/crud/js/vo/search/CustomerSearch.js\"></script>\r\n	<script>\r\n		$(document).ready(function() {\r\n\r\n			var CustomerDataModel = function() {\r\n\r\n				var self = this;\r\n				\r\n				self.selectedCustomer = ko.observable(new Customer());\r\n				self.customerList = ko.observableArray([]);\r\n				self.totalCount = ko.observable(0);\r\n				self.totalPageCount = ko.observable(0);\r\n				self.currentIndex = ko.observable(1);\r\n				self.customerSearch = ko.observable(new CustomerSearch());\r\n				self.sexDatasource = ko.observableArray([]);\r\n				$.ajax({ url : \'/crud/loadDatasource.action\',\r\n						 data : { dataSourceName : \'sexDatasource\' },\r\n						 success : function(data) {\r\n								self.sexDatasource(data);\r\n						}\r\n					});\r\n				\r\n				self.resetSearchConditions = function() {\r\n					self.customerSearch(new CustomerSearch());\r\n				};\r\n				\r\n				self.searchCustomer = function() {\r\n				\r\n					for(var key in self.customerSearch()) {\r\n						if (eval(\"self.customerSearch().\" + key) == \'\') {\r\n							eval(\"self.customerSearch().\" + key + \" = null\");\r\n						}\r\n					}\r\n					\r\n					$.ajax({\r\n						url : \'loadCustomers.action\',\r\n						data : {currentIndex : self.currentIndex(),\r\n								customerSearchVoJson : JSON.stringify(self.customerSearch())\r\n								},\r\n						success : function(data) {\r\n							\r\n							if (data && data.object && data.object.elements) {\r\n							\r\n								self.customerList(data.object.elements);\r\n								self.totalCount(data.object.total);\r\n								self.totalPageCount(data.object.totalPages);\r\n								\r\n								$(\'#customerPageNavigation\').pagination(\r\n                				self.totalCount(),\r\n        							{\r\n                					num_edge_entries: 1,\r\n                					num_display_entries: 15,\r\n                					callback: self.pageSelectCallback,\r\n                					items_per_page: 10,\r\n                					prev_text: \"Last Page\",\r\n                					next_text: \"Next Page\",\r\n                					current_page : self.currentIndex() - 1,\r\n                					load_first_page : false\r\n        							}\r\n								);\r\n							} else {\r\n								\r\n								if (!isOK(data)) {\r\n									\r\n									fail(\"Error: \" + data.message);\r\n									\r\n									self.customerList([]);\r\n									self.totalCount(0);\r\n									self.totalPageCount(0);\r\n								}\r\n							}\r\n						}\r\n					});\r\n				};\r\n				\r\n				self.searchCustomer();\r\n				\r\n				self.searchCustomerWithConditions = function() {\r\n					self.currentIndex(1);\r\n					self.searchCustomer();\r\n				};\r\n				\r\n				self.pageSelectCallback = function(page_index, jq){\r\n        				self.currentIndex(page_index + 1);\r\n        				self.searchCustomer();\r\n        				return false;\r\n				};\r\n				\r\n				self.saveOrUpdateCustomer = function() {\r\n					\r\n					$.ajax({\r\n						url : \'saveOrUpdateCustomer.action\',\r\n						method : \'POST\',\r\n						data : {\r\n							customerJson : JSON.stringify(self.selectedCustomer())\r\n						},\r\n						success : function(data) {\r\n							handleStanderdResponse(data);\r\n							\r\n							if(data.object && data.object.id) {\r\n								self.selectedCustomer(data.object);\r\n								closeDialog(\'customerDialog\');\r\n								\r\n								self.searchCustomer();\r\n							}\r\n						}\r\n					});	\r\n					\r\n				};\r\n				\r\n				self.openManageCustomerDialog = function(item, event) {\r\n					\r\n					if(item.id) {\r\n						self.selectedCustomer(item);\r\n					} else {\r\n						self.selectedCustomer(new Customer());\r\n					}\r\n					\r\n					$(\'#customerDialog\').dialog({\r\n						modal : true,\r\n						width : 1191,\r\n						height : 658,\r\n						open : function(e) {\r\n							changeButtonStyleForPopup(e);\r\n						},\r\n						\r\n						buttons : {\r\n							\'Save\' : function() {\r\n								self.saveOrUpdateCustomer();\r\n							},\r\n							\'Close\' : function() {\r\n								closeDialog(\'customerDialog\');\r\n							}\r\n						}\r\n					});\r\n				};\r\n				\r\n				self.deleteCustomer = function(item, event) {\r\n					\r\n					if (window.confirm(\"Are your sure to DELETE it?\")) {\r\n						\r\n						$.ajax({\r\n							url : \'deleteCustomer.action\',\r\n							method : \'POST\',\r\n							data : {\r\n								customerId : item.id\r\n							},\r\n							success : function(data) {\r\n								handleStanderdResponse(data);\r\n								\r\n								if(isOK(data)) {\r\n									self.searchCustomer();\r\n								}\r\n							}\r\n						});\r\n					}\r\n				};\r\n			};\r\n\r\n			var customerDataModel = new CustomerDataModel();\r\n\r\n			var $customerDataModelContainer = $(\'#CustomerDataModelContainer\')[0];\r\n			\r\n			ko.applyBindings(customerDataModel, $customerDataModelContainer);\r\n		});\r\n\r\n		function activeCurrentMenuItem() {\r\n			$(\'#CustomerLink\').addClass(\'active\');\r\n		}\r\n	</script>\r\n</body>\r\n</html>','<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<!DOCTYPE struts PUBLIC \"-//Apache Software Foundation//DTD Struts Configuration 2.0//EN\" \"http://struts.apache.org/dtds/struts-2.0.dtd\">\r\n<struts>\r\n	<package name=\"devCustomer\" namespace=\"/dev\" extends=\"struts-default\">\r\n		\r\n		<result-types>\r\n			 <result-type name=\"json\" class=\"org.apache.struts2.json.JSONResult\" />\r\n		</result-types>\r\n		<action name=\"loadCustomerMgr\">\r\n			<result>dev-Customer-management.jsp</result>\r\n		</action>\r\n		<action name=\"saveOrUpdateCustomer\" class=\"CustomerAction\" method=\"saveOrUpdateCustomer\">\r\n			<result name=\"input\">\r\n				dev-Customer-management.jsp\r\n			</result>\r\n			<result name=\"success\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n			<result name=\"error\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n		</action>\r\n		<action name=\"deleteCustomer\" class=\"CustomerAction\" method=\"deleteCustomer\">\r\n			<result name=\"input\">\r\n				dev-Customer-management.jsp\r\n			</result>\r\n			<result name=\"success\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n			<result name=\"error\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n		</action>\r\n		<action name=\"loadCustomers\" class=\"CustomerAction\" method=\"loadCustomers\">\r\n			<result name=\"success\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n			<result name=\"error\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n		</action>\r\n	</package>\r\n	\r\n</struts>','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\controller\\CustomerAction.java','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\entity\\Customer.java','D:\\data\\Jerry\\crud\\src\\main\\webapp\\js\\vo\\Customer.js','D:\\data\\Jerry\\crud\\src\\main\\webapp\\dev\\dev-Customer-management.jsp','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\repository\\CustomerRepository.java','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\service\\impl\\CustomerServiceImpl.java','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\service\\CustomerService.java','D:\\data\\Jerry\\crud\\src\\main\\resources\\struts\\dev-Customer-struts.xml',16,'package com.tadpole.vo.search;\r\n\r\nimport java.io.Serializable;\r\nimport java.util.Date;\r\n\r\npublic class CustomerSearchVo implements Serializable {\r\n\r\n	private static final long serialVersionUID = 1L;\r\n\r\n	protected String name;\r\n	protected String phone;\r\n	protected String fixedPhone;\r\n	protected String address;\r\n	protected String sex;\r\n	protected Date birthday;\r\n	protected String avatar;\r\n\r\n	public String getName() {\r\n\r\n		return name;\r\n	}\r\n	\r\n	public String getPhone() {\r\n\r\n		return phone;\r\n	}\r\n	\r\n	public String getFixedPhone() {\r\n\r\n		return fixedPhone;\r\n	}\r\n	\r\n	public String getAddress() {\r\n\r\n		return address;\r\n	}\r\n	\r\n	public String getSex() {\r\n\r\n		return sex;\r\n	}\r\n	\r\n	public Date getBirthday() {\r\n\r\n		return birthday;\r\n	}\r\n	\r\n	public String getAvatar() {\r\n\r\n		return avatar;\r\n	}\r\n	\r\n	public void setName(String name) {\r\n\r\n		this.name = name;\r\n	}\r\n	\r\n	public void setPhone(String phone) {\r\n\r\n		this.phone = phone;\r\n	}\r\n	\r\n	public void setFixedPhone(String fixedPhone) {\r\n\r\n		this.fixedPhone = fixedPhone;\r\n	}\r\n	\r\n	public void setAddress(String address) {\r\n\r\n		this.address = address;\r\n	}\r\n	\r\n	public void setSex(String sex) {\r\n\r\n		this.sex = sex;\r\n	}\r\n	\r\n	public void setBirthday(Date birthday) {\r\n\r\n		this.birthday = birthday;\r\n	}\r\n	\r\n	public void setAvatar(String avatar) {\r\n\r\n		this.avatar = avatar;\r\n	}\r\n	\r\n}\r\n','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\vo\\search\\CustomerSearchVo.java','function CustomerSearch()  {\r\n	var self = this;\r\n	\r\n	self.name = null;\r\n	self.phone = null;\r\n	self.fixedPhone = null;\r\n	self.address = null;\r\n	self.sex = null;\r\n	self.birthday = null;\r\n	self.avatar = null;\r\n}','D:\\data\\Jerry\\crud\\src\\main\\webapp\\js\\vo\\search\\CustomerSearch.js','package com.tadpole.rest;\r\n\r\nimport java.util.List;\r\n\r\nimport javax.annotation.Resource;\r\nimport javax.ws.rs.Consumes;\r\nimport javax.ws.rs.GET;\r\nimport javax.ws.rs.POST;\r\nimport javax.ws.rs.Path;\r\nimport javax.ws.rs.PathParam;\r\nimport javax.ws.rs.Produces;\r\nimport javax.ws.rs.core.MediaType;\r\nimport javax.ws.rs.core.Response;\r\nimport javax.ws.rs.core.Response.Status;\r\n\r\nimport org.springframework.beans.factory.annotation.Autowired;\r\nimport org.springframework.stereotype.Component;\r\n\r\nimport com.tadpole.entity.Customer;\r\nimport com.tadpole.repository.CustomerRepository;\r\nimport com.tadpole.service.CustomerService;\r\n\r\n@Component\r\n@Path(\"/customer\")\r\npublic class CustomerResource {\r\n\r\n	@Autowired\r\n	private CustomerRepository customerRepository;\r\n	\r\n	@Resource(name = \"CustomerService\")\r\n	private CustomerService customerService;\r\n\r\n	@GET\r\n	@Path(\"/{id}\")\r\n	@Produces(MediaType.APPLICATION_JSON)\r\n	public Customer getCustomerById(@PathParam(\"id\") Integer id) {\r\n\r\n		Customer customer = customerRepository.findOne(id);\r\n\r\n		return customer;\r\n\r\n	}\r\n	\r\n	@GET\r\n	@Path(\"/all\")\r\n	@Produces(MediaType.APPLICATION_JSON)\r\n	public List<Customer> getCustomers() {\r\n\r\n		List<Customer> customers = customerRepository.findAll();\r\n\r\n		return customers;\r\n\r\n	}\r\n	\r\n	@POST\r\n	@Path(\"/save\")\r\n	@Consumes(MediaType.APPLICATION_JSON)\r\n	@Produces(MediaType.APPLICATION_JSON)\r\n	public Customer saveOrUpdateCustomer(Customer customer) {\r\n		\r\n		Customer saved = customerService.saveOrUpdateCustomer(customer);\r\n		\r\n		return saved;\r\n	}\r\n	\r\n	@POST\r\n	@Path(\"/delete/{id}\")\r\n	public Response deleteCustomer(@PathParam(\"id\") String id) {\r\n		\r\n		try {\r\n			customerService.deleteCustomer(id);\r\n			\r\n		} catch (Exception e) {\r\n			\r\n			return Response.status(Status.INTERNAL_SERVER_ERROR).entity(e.getMessage()).build();\r\n		}\r\n		\r\n		return Response.ok().build();\r\n	}\r\n\r\n}\r\n','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\rest\\CustomerResource.java','List<Customer> findByNameLikeOrPhoneLike(String queryParam, String queryParam2);'),(16,'package com.tadpole.controller;\r\n\r\nimport javax.annotation.Resource;\r\n\r\nimport net.sf.json.JSONObject;\r\nimport net.sf.json.util.JSONUtils;\r\nimport net.sf.ezmorph.object.DateMorpher;\r\n\r\nimport org.apache.commons.lang.StringUtils;\r\n\r\nimport com.tadpole.vo.search.SmsTemplateSearchVo;\r\n\r\nimport com.tadpole.entity.SmsTemplate;\r\nimport com.tadpole.service.SmsTemplateService;\r\nimport com.tadpole.vo.ResponseVo;\r\nimport com.tadpole.vo.PagedElement;\r\nimport org.springframework.stereotype.Component;\r\nimport org.springframework.context.annotation.Scope;\r\nimport org.springframework.data.domain.Page;\r\n\r\n@Component(\"SmsTemplateAction\")\r\n@Scope(\"prototype\")\r\npublic class SmsTemplateAction extends AbstractAction {\r\n\r\n	private static final long serialVersionUID = 1L;\r\n\r\n	@Resource(name = \"SmsTemplateService\")\r\n	private SmsTemplateService smsTemplateService;\r\n\r\n	public String saveOrUpdateSmsTemplate() {\r\n	\r\n		try {\r\n			String smsTemplateJson = getParameter(\"smsTemplateJson\");\r\n\r\n			if (StringUtils.isEmpty(smsTemplateJson)) {\r\n				setResponse(ResponseVo.newFailMessage(\"Bad request : no data found to save or update.\"));\r\n\r\n				return SUCCESS;\r\n			}\r\n			\r\n			JSONUtils.getMorpherRegistry().registerMorpher(new DateMorpher(new String[]{\"yyyy-MM-dd\"}));\r\n			\r\n			SmsTemplate smsTemplate = (SmsTemplate)JSONObject.toBean(JSONObject.fromObject(smsTemplateJson), SmsTemplate.class);\r\n\r\n			SmsTemplate saved = smsTemplateService.saveOrUpdateSmsTemplate(smsTemplate);\r\n			\r\n			ResponseVo response = ResponseVo.newSuccessMessage(\"The smsTemplate is successfully saved.\");\r\n			response.setObject(saved);\r\n			\r\n			setResponse(response);\r\n			\r\n		} catch (Exception e) {\r\n			\r\n			setResponse(ResponseVo.newFailMessage(e.getMessage()));\r\n		}\r\n\r\n		return SUCCESS;\r\n	}\r\n\r\n	public String deleteSmsTemplate() {\r\n	\r\n		try {\r\n			String smsTemplateId = getParameter(\"smsTemplateId\");\r\n\r\n			if (StringUtils.isEmpty(smsTemplateId)) {\r\n				setResponse(ResponseVo.newFailMessage(\"Bad request : no data is provided to delete.\"));\r\n\r\n				return SUCCESS;\r\n			}\r\n\r\n			smsTemplateService.deleteSmsTemplate(smsTemplateId);\r\n			\r\n			ResponseVo response = ResponseVo.newSuccessMessage(\"The smsTemplate is successfully deleted.\");\r\n			\r\n			setResponse(response);\r\n			\r\n		} catch (Exception e) {\r\n			\r\n			setResponse(ResponseVo.newFailMessage(e.getMessage()));\r\n		}\r\n\r\n		return SUCCESS;\r\n	}\r\n	\r\n	public String loadSmsTemplates() {\r\n\r\n		try {\r\n			String currentIndex = getParameter(\"currentIndex\");\r\n			if (StringUtils.isEmpty(currentIndex)) {\r\n        		currentIndex = \"1\";\r\n			}\r\n			\r\n			String smsTemplateSearchVoJson = getParameter(\"smsTemplateSearchVoJson\");\r\n			\r\n			JSONUtils.getMorpherRegistry().registerMorpher(new DateMorpher(new String[]{\"yyyy-MM-dd\"}));\r\n			\r\n			SmsTemplateSearchVo smsTemplateSearchVo = (SmsTemplateSearchVo)JSONObject.toBean(JSONObject.fromObject(smsTemplateSearchVoJson), SmsTemplateSearchVo.class);\r\n			\r\n			Page<SmsTemplate> smsTemplates = smsTemplateService.loadSmsTemplates(currentIndex, smsTemplateSearchVo);\r\n\r\n			PagedElement<SmsTemplate> pageElement = new PagedElement<SmsTemplate>(smsTemplates);\r\n\r\n			ResponseVo response = ResponseVo.newSuccessMessage(\"loaded successfully.\");\r\n			response.setObject(pageElement);\r\n\r\n			setResponse(response);\r\n\r\n		} catch (Exception e) {\r\n			setResponse(ResponseVo.newFailMessage(e.getMessage()));\r\n\r\n		}\r\n\r\n		return SUCCESS;\r\n	}\r\n}\r\n','','SmsTemplate','package com.tadpole.entity;\r\n\r\nimport java.io.Serializable;\r\nimport java.util.Date;\r\n\r\nimport javax.persistence.Entity;\r\nimport javax.persistence.GeneratedValue;\r\nimport javax.persistence.Id;\r\nimport javax.persistence.Table;\r\n\r\nimport javax.persistence.Column;\r\nimport org.apache.struts2.json.annotations.JSON;\r\n\r\n/**\r\n * @author Jerry Jiang\r\n */\r\n@Entity\r\n@Table(name = \"tad_sms_template\")\r\npublic class SmsTemplate implements Serializable {\r\n\r\n	private static final long serialVersionUID = 1L;\r\n\r\n	@Id\r\n	@GeneratedValue\r\n	protected Integer id;\r\n	\r\n	@Column(unique = true,nullable = false)\r\n	protected String name;\r\n	\r\n	@javax.persistence.Lob\r\n	@Column(nullable = false)\r\n	protected String content;\r\n	\r\n\r\n	public Integer getId() {\r\n\r\n		return id;\r\n	}\r\n\r\n	public void setId(Integer id) {\r\n\r\n		this.id = id;\r\n	}\r\n\r\n	public String getName() {\r\n\r\n		return name;\r\n	}\r\n	\r\n	public String getContent() {\r\n\r\n		return content;\r\n	}\r\n	\r\n	public void setName(String name) {\r\n\r\n		this.name = name;\r\n	}\r\n	\r\n	public void setContent(String content) {\r\n\r\n		this.content = content;\r\n	}\r\n	\r\n}\r\n','function SmsTemplate()  {\r\n	var self = this;\r\n	\r\n	self.id = \'\';\r\n	self.name = null;\r\n	self.content = null;\r\n}','SMS Templates','package com.tadpole.repository;\r\n\r\nimport org.springframework.data.jpa.repository.JpaRepository;\r\nimport org.springframework.data.jpa.repository.JpaSpecificationExecutor;\r\n\r\nimport com.tadpole.entity.SmsTemplate;\r\n\r\npublic interface SmsTemplateRepository extends JpaRepository<SmsTemplate, Integer>, JpaSpecificationExecutor<SmsTemplate> {\r\n\r\n}\r\n','package com.tadpole.service.impl;\r\n\r\nimport java.util.Date;\r\n\r\nimport javax.persistence.criteria.CriteriaBuilder;\r\nimport javax.persistence.criteria.CriteriaQuery;\r\nimport javax.persistence.criteria.Predicate;\r\nimport javax.persistence.criteria.Root;\r\n\r\nimport org.apache.commons.lang.StringUtils;\r\nimport org.springframework.beans.factory.annotation.Autowired;\r\nimport org.springframework.stereotype.Service;\r\nimport org.springframework.data.domain.Page;\r\nimport org.springframework.data.domain.PageRequest;\r\nimport org.springframework.data.jpa.domain.Specification;\r\nimport org.springframework.data.jpa.domain.Specifications;\r\n\r\nimport com.tadpole.entity.SmsTemplate;\r\nimport com.tadpole.repository.SmsTemplateRepository;\r\nimport com.tadpole.service.SmsTemplateService;\r\nimport com.tadpole.vo.search.SmsTemplateSearchVo;\r\n\r\n@Service(\"SmsTemplateService\")\r\npublic class SmsTemplateServiceImpl implements SmsTemplateService {\r\n\r\n	@Autowired\r\n	SmsTemplateRepository smsTemplateRepository;\r\n\r\n	public SmsTemplate saveOrUpdateSmsTemplate(SmsTemplate smsTemplate) {\r\n\r\n		return smsTemplateRepository.saveAndFlush(smsTemplate);\r\n	}\r\n	\r\n	public void deleteSmsTemplate(String smsTemplateId) {\r\n\r\n		smsTemplateRepository.delete(Integer.valueOf(smsTemplateId));\r\n	}\r\n	\r\n	public Page<SmsTemplate> loadSmsTemplates(String currentIndex, SmsTemplateSearchVo smsTemplateSearchVo) {\r\n		Specifications<SmsTemplate> smsTemplateSpecification = null;\r\n		if (StringUtils.isNotBlank(smsTemplateSearchVo.getName())) {\r\n			\r\n       	 	smsTemplateSpecification = Specifications.where(smsTemplateNameSpecification(smsTemplateSearchVo.getName()));\r\n		}\r\n\r\n		if (smsTemplateSpecification == null) {\r\n       		return smsTemplateRepository.findAll(new PageRequest(Integer.valueOf(currentIndex) - 1, 10));\r\n		} else {\r\n        	return smsTemplateRepository.findAll(smsTemplateSpecification, new PageRequest(Integer.valueOf(currentIndex) - 1, 10));\r\n		}		\r\n		\r\n	}\r\n\r\n	private Specification<SmsTemplate> smsTemplateNameSpecification(final String name) {\r\n\r\n		return new Specification<SmsTemplate>(){\r\n\r\n			public Predicate toPredicate(Root<SmsTemplate> root, CriteriaQuery<?> query, CriteriaBuilder cb) {\r\n\r\n				return cb.equal(root.get(\"name\"), name);\r\n			}\r\n		};\r\n	}\r\n}\r\n','package com.tadpole.service;\r\n\r\nimport org.springframework.data.domain.Page;\r\n\r\nimport com.tadpole.entity.SmsTemplate;\r\nimport com.tadpole.vo.search.SmsTemplateSearchVo;\r\n\r\npublic interface SmsTemplateService {\r\n\r\n	SmsTemplate saveOrUpdateSmsTemplate(SmsTemplate smsTemplate);\r\n\r\n	void deleteSmsTemplate(String smsTemplateId);\r\n	\r\n	Page<SmsTemplate> loadSmsTemplates(String currentIndex, SmsTemplateSearchVo smsTemplateSearchVo);\r\n}\r\n','dev','tad_sms_template','SMS','<%@ page contentType=\"text/html;charset=utf8\"%>\r\n<%@ taglib prefix=\"s\" uri=\"/struts-tags\"%>\r\n<!DOCTYPE html>\r\n<!--[if lt IE 7]> <html class=\"no-js lt-ie9 lt-ie8 lt-ie7\" lang=\"en\"> <![endif]-->\r\n<!--[if IE 7]>	<html class=\"no-js lt-ie9 lt-ie8\" lang=\"en\"> <![endif]-->\r\n<!--[if IE 8]>	<html class=\"no-js lt-ie9\" lang=\"en\"> <![endif]-->\r\n<!--[if gt IE 8]> <html class=\"no-js ie9\" lang=\"en\"> <!-->\r\n<html lang=\"en\">\r\n<!--<![endif]-->\r\n<head>\r\n<!-- Set the viewport width to device width for mobile -->\r\n<meta name=\"viewport\" content=\"width=device-width\" />\r\n<title>SMS</title>\r\n<s:include value=\"/jsps/common/head.jsp\" />\r\n\r\n</head>\r\n<body>\r\n	<s:include value=\"/jsps/common/brand.jsp\" />\r\n	<s:include value=\"/jsps/common/menu.jsp\" />\r\n	<section class=\"mainbg\">\r\n		<div class=\"container\" id=\"SmsTemplateDataModelContainer\">\r\n			<div class=\"row\">\r\n				<div style=\"color: red\">\r\n					<s:fielderror />\r\n				</div>\r\n				<div id=\"smsTemplateDialog\" title=\"SmsTemplate Management\" style=\"display: none\" data-bind=\"with : selectedSmsTemplate\">\r\n					<div class=\"row\">\r\n						<div class=\"three columns\">\r\n							<label class=\'required\'>Tag Name</label>\r\n							<input type=\"text\" data-bind=\"value : name\" />\r\n						</div>\r\n						<div class=\"three columns\">\r\n							<label class=\'required\'>Content</label>\r\n							<input type=\"text\" data-bind=\"value : content\" />\r\n						</div>\r\n					</div>\r\n				</div>\r\n				<div class=\"row\">\r\n					<div class=\"app-wrapper ui-corner-top\">\r\n						<div class=\"blue module ui-corner-top clearfix\">\r\n							<h2>Search SmsTemplate</h2>\r\n							<h2 class=\"right\"></h2>\r\n						</div>\r\n						<div class=\"content\" data-bind=\"with : smsTemplateSearch\">\r\n								<div class=\"row\">\r\n									<div class=\"three columns\">\r\n										<label>Tag Name</label>\r\n											<input type=\"text\" data-bind=\"value : name\" />\r\n									</div>\r\n							</div>\r\n							\r\n							<div class=\"row\">\r\n								<a title=\"Search SmsTemplate\" data-bind=\"click : $root.searchSmsTemplateWithConditions\" href=\"#\" class=\"small blue button\">Seach SmsTemplate</a>\r\n								<a title=\"Search SmsTemplate\" data-bind=\"click : $root.resetSearchConditions\" href=\"#\" class=\"small blue button\">Reset</a>\r\n							</div>\r\n						</div>\r\n					</div>	\r\n				</div>\r\n				<div class=\"row\">\r\n					<div class=\"app-wrapper ui-corner-top\">\r\n						<div class=\"blue module ui-corner-top clearfix\">\r\n							<h2>SmsTemplate List</h2>\r\n							<h2 class=\"right\"></h2>\r\n						</div>\r\n						<div class=\"content\">\r\n						\r\n								<div class=\"row\" style=\"margin-bottom: 5px\">\r\n									<div class=\"nine columns\">\r\n										Find <span class=\"label\" data-bind=\"text : $root.totalCount\"></span> records, <span class=\"label\" data-bind=\"text : $root.totalPageCount\"></span> pages.\r\n									</div>\r\n									<div class=\"three columns\">\r\n										<a title=\"add attribute\" data-bind=\"click : $root.openManageSmsTemplateDialog\" href=\"#\" class=\"right\" style=\"margin-right: 10px\"><i class=\"small icon-plus icon-green\"></i></a>\r\n									</div>\r\n								</div>\r\n								<div class=\"row\">\r\n									<table class=\"infoTable\">\r\n										<thead>\r\n											<tr>\r\n												<th style=\"text-align: center\">Tag Name</th>\r\n												<th></th>\r\n											</tr>\r\n										</thead>\r\n										<tbody data-bind=\"foreach : smsTemplateList\">\r\n											<tr>\r\n												<td style=\"text-align: center\" data-bind=\"text : name\"></td>\r\n												<td style=\"text-align: center\">\r\n													<a title=\"update smsTemplate\" data-bind=\"click : $root.openManageSmsTemplateDialog\" style=\"margin-left: 10px;\" href=\"#\"><i class=\"icon-pencil small icon-blue\"></i></a>\r\n													<a title=\"delete smsTemplate\" data-bind=\"click : $root.deleteSmsTemplate\" style=\"margin-left: 10px;\" href=\"#\"><i class=\"icon-trash small icon-red\"></i></a>\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n									<br>\r\n								</div>\r\n								<div class=\"row\" id=\"smsTemplatePageNavigation\"></div>\r\n						</div>\r\n					</div>\r\n\r\n				</div>\r\n\r\n			</div>\r\n		</div>\r\n	</section>\r\n	<s:include value=\"/jsps/common/footer.jsp\" />\r\n	<script src=\"/crud/js/vo/SmsTemplate.js\"></script>\r\n	<script src=\"/crud/js/vo/search/SmsTemplateSearch.js\"></script>\r\n	<script>\r\n		$(document).ready(function() {\r\n\r\n			var SmsTemplateDataModel = function() {\r\n\r\n				var self = this;\r\n				\r\n				self.selectedSmsTemplate = ko.observable(new SmsTemplate());\r\n				self.smsTemplateList = ko.observableArray([]);\r\n				self.totalCount = ko.observable(0);\r\n				self.totalPageCount = ko.observable(0);\r\n				self.currentIndex = ko.observable(1);\r\n				self.smsTemplateSearch = ko.observable(new SmsTemplateSearch());\r\n				\r\n				self.resetSearchConditions = function() {\r\n					self.smsTemplateSearch(new SmsTemplateSearch());\r\n				};\r\n				\r\n				self.searchSmsTemplate = function() {\r\n				\r\n					for(var key in self.smsTemplateSearch()) {\r\n						if (eval(\"self.smsTemplateSearch().\" + key) == \'\') {\r\n							eval(\"self.smsTemplateSearch().\" + key + \" = null\");\r\n						}\r\n					}\r\n					\r\n					$.ajax({\r\n						url : \'loadSmsTemplates.action\',\r\n						data : {currentIndex : self.currentIndex(),\r\n								smsTemplateSearchVoJson : JSON.stringify(self.smsTemplateSearch())\r\n								},\r\n						success : function(data) {\r\n							\r\n							if (data && data.object && data.object.elements) {\r\n							\r\n								self.smsTemplateList(data.object.elements);\r\n								self.totalCount(data.object.total);\r\n								self.totalPageCount(data.object.totalPages);\r\n								\r\n								$(\'#smsTemplatePageNavigation\').pagination(\r\n                				self.totalCount(),\r\n        							{\r\n                					num_edge_entries: 1,\r\n                					num_display_entries: 15,\r\n                					callback: self.pageSelectCallback,\r\n                					items_per_page: 10,\r\n                					prev_text: \"Last Page\",\r\n                					next_text: \"Next Page\",\r\n                					current_page : self.currentIndex() - 1,\r\n                					load_first_page : false\r\n        							}\r\n								);\r\n							} else {\r\n								\r\n								if (!isOK(data)) {\r\n									\r\n									fail(\"Error: \" + data.message);\r\n									\r\n									self.smsTemplateList([]);\r\n									self.totalCount(0);\r\n									self.totalPageCount(0);\r\n								}\r\n							}\r\n						}\r\n					});\r\n				};\r\n				\r\n				self.searchSmsTemplate();\r\n				\r\n				self.searchSmsTemplateWithConditions = function() {\r\n					self.currentIndex(1);\r\n					self.searchSmsTemplate();\r\n				};\r\n				\r\n				self.pageSelectCallback = function(page_index, jq){\r\n        				self.currentIndex(page_index + 1);\r\n        				self.searchSmsTemplate();\r\n        				return false;\r\n				};\r\n				\r\n				self.saveOrUpdateSmsTemplate = function() {\r\n					\r\n					$.ajax({\r\n						url : \'saveOrUpdateSmsTemplate.action\',\r\n						method : \'POST\',\r\n						data : {\r\n							smsTemplateJson : JSON.stringify(self.selectedSmsTemplate())\r\n						},\r\n						success : function(data) {\r\n							handleStanderdResponse(data);\r\n							\r\n							if(data.object && data.object.id) {\r\n								self.selectedSmsTemplate(data.object);\r\n								closeDialog(\'smsTemplateDialog\');\r\n								\r\n								self.searchSmsTemplate();\r\n							}\r\n						}\r\n					});	\r\n					\r\n				};\r\n				\r\n				self.openManageSmsTemplateDialog = function(item, event) {\r\n					\r\n					if(item.id) {\r\n						self.selectedSmsTemplate(item);\r\n					} else {\r\n						self.selectedSmsTemplate(new SmsTemplate());\r\n					}\r\n					\r\n					$(\'#smsTemplateDialog\').dialog({\r\n						modal : true,\r\n						width : 1191,\r\n						height : 658,\r\n						open : function(e) {\r\n							changeButtonStyleForPopup(e);\r\n						},\r\n						\r\n						buttons : {\r\n							\'Save\' : function() {\r\n								self.saveOrUpdateSmsTemplate();\r\n							},\r\n							\'Close\' : function() {\r\n								closeDialog(\'smsTemplateDialog\');\r\n							}\r\n						}\r\n					});\r\n				};\r\n				\r\n				self.deleteSmsTemplate = function(item, event) {\r\n					\r\n					if (window.confirm(\"Are your sure to DELETE it?\")) {\r\n						\r\n						$.ajax({\r\n							url : \'deleteSmsTemplate.action\',\r\n							method : \'POST\',\r\n							data : {\r\n								smsTemplateId : item.id\r\n							},\r\n							success : function(data) {\r\n								handleStanderdResponse(data);\r\n								\r\n								if(isOK(data)) {\r\n									self.searchSmsTemplate();\r\n								}\r\n							}\r\n						});\r\n					}\r\n				};\r\n			};\r\n\r\n			var smsTemplateDataModel = new SmsTemplateDataModel();\r\n\r\n			var $smsTemplateDataModelContainer = $(\'#SmsTemplateDataModelContainer\')[0];\r\n			\r\n			ko.applyBindings(smsTemplateDataModel, $smsTemplateDataModelContainer);\r\n		});\r\n\r\n		function activeCurrentMenuItem() {\r\n			$(\'#SmsTemplateLink\').addClass(\'active\');\r\n		}\r\n	</script>\r\n</body>\r\n</html>','<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<!DOCTYPE struts PUBLIC \"-//Apache Software Foundation//DTD Struts Configuration 2.0//EN\" \"http://struts.apache.org/dtds/struts-2.0.dtd\">\r\n<struts>\r\n	<package name=\"devSmsTemplate\" namespace=\"/dev\" extends=\"struts-default\">\r\n		\r\n		<result-types>\r\n			 <result-type name=\"json\" class=\"org.apache.struts2.json.JSONResult\" />\r\n		</result-types>\r\n		<action name=\"loadSmsTemplateMgr\">\r\n			<result>dev-SmsTemplate-management.jsp</result>\r\n		</action>\r\n		<action name=\"saveOrUpdateSmsTemplate\" class=\"SmsTemplateAction\" method=\"saveOrUpdateSmsTemplate\">\r\n			<result name=\"input\">\r\n				dev-SmsTemplate-management.jsp\r\n			</result>\r\n			<result name=\"success\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n			<result name=\"error\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n		</action>\r\n		<action name=\"deleteSmsTemplate\" class=\"SmsTemplateAction\" method=\"deleteSmsTemplate\">\r\n			<result name=\"input\">\r\n				dev-SmsTemplate-management.jsp\r\n			</result>\r\n			<result name=\"success\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n			<result name=\"error\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n		</action>\r\n		<action name=\"loadSmsTemplates\" class=\"SmsTemplateAction\" method=\"loadSmsTemplates\">\r\n			<result name=\"success\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n			<result name=\"error\" type=\"json\">\r\n				<param name=\"root\">response</param>\r\n			</result>\r\n		</action>\r\n	</package>\r\n	\r\n</struts>','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\controller\\SmsTemplateAction.java','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\entity\\SmsTemplate.java','D:\\data\\Jerry\\crud\\src\\main\\webapp\\js\\vo\\SmsTemplate.js','D:\\data\\Jerry\\crud\\src\\main\\webapp\\dev\\dev-SmsTemplate-management.jsp','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\repository\\SmsTemplateRepository.java','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\service\\impl\\SmsTemplateServiceImpl.java','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\service\\SmsTemplateService.java','D:\\data\\Jerry\\crud\\src\\main\\resources\\struts\\dev-SmsTemplate-struts.xml',17,'package com.tadpole.vo.search;\r\n\r\nimport java.io.Serializable;\r\nimport java.util.Date;\r\n\r\npublic class SmsTemplateSearchVo implements Serializable {\r\n\r\n	private static final long serialVersionUID = 1L;\r\n\r\n	protected String name;\r\n	protected String content;\r\n\r\n	public String getName() {\r\n\r\n		return name;\r\n	}\r\n	\r\n	public String getContent() {\r\n\r\n		return content;\r\n	}\r\n	\r\n	public void setName(String name) {\r\n\r\n		this.name = name;\r\n	}\r\n	\r\n	public void setContent(String content) {\r\n\r\n		this.content = content;\r\n	}\r\n	\r\n}\r\n','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\vo\\search\\SmsTemplateSearchVo.java','function SmsTemplateSearch()  {\r\n	var self = this;\r\n	\r\n	self.name = null;\r\n	self.content = null;\r\n}','D:\\data\\Jerry\\crud\\src\\main\\webapp\\js\\vo\\search\\SmsTemplateSearch.js','package com.tadpole.rest;\r\n\r\nimport java.util.List;\r\n\r\nimport javax.annotation.Resource;\r\nimport javax.ws.rs.Consumes;\r\nimport javax.ws.rs.GET;\r\nimport javax.ws.rs.POST;\r\nimport javax.ws.rs.Path;\r\nimport javax.ws.rs.PathParam;\r\nimport javax.ws.rs.Produces;\r\nimport javax.ws.rs.core.MediaType;\r\nimport javax.ws.rs.core.Response;\r\nimport javax.ws.rs.core.Response.Status;\r\n\r\nimport org.springframework.beans.factory.annotation.Autowired;\r\nimport org.springframework.stereotype.Component;\r\n\r\nimport com.tadpole.entity.SmsTemplate;\r\nimport com.tadpole.repository.SmsTemplateRepository;\r\nimport com.tadpole.service.SmsTemplateService;\r\n\r\n@Component\r\n@Path(\"/smsTemplate\")\r\npublic class SmsTemplateResource {\r\n\r\n	@Autowired\r\n	private SmsTemplateRepository smsTemplateRepository;\r\n	\r\n	@Resource(name = \"SmsTemplateService\")\r\n	private SmsTemplateService smsTemplateService;\r\n\r\n	@GET\r\n	@Path(\"/{id}\")\r\n	@Produces(MediaType.APPLICATION_JSON)\r\n	public SmsTemplate getSmsTemplateById(@PathParam(\"id\") Integer id) {\r\n\r\n		SmsTemplate smsTemplate = smsTemplateRepository.findOne(id);\r\n\r\n		return smsTemplate;\r\n\r\n	}\r\n	\r\n	@GET\r\n	@Path(\"/all\")\r\n	@Produces(MediaType.APPLICATION_JSON)\r\n	public List<SmsTemplate> getSmsTemplates() {\r\n\r\n		List<SmsTemplate> smsTemplates = smsTemplateRepository.findAll();\r\n\r\n		return smsTemplates;\r\n\r\n	}\r\n	\r\n	@POST\r\n	@Path(\"/save\")\r\n	@Consumes(MediaType.APPLICATION_JSON)\r\n	@Produces(MediaType.APPLICATION_JSON)\r\n	public SmsTemplate saveOrUpdateSmsTemplate(SmsTemplate smsTemplate) {\r\n		\r\n		SmsTemplate saved = smsTemplateService.saveOrUpdateSmsTemplate(smsTemplate);\r\n		\r\n		return saved;\r\n	}\r\n	\r\n	@POST\r\n	@Path(\"/delete/{id}\")\r\n	public Response deleteSmsTemplate(@PathParam(\"id\") String id) {\r\n		\r\n		try {\r\n			smsTemplateService.deleteSmsTemplate(id);\r\n			\r\n		} catch (Exception e) {\r\n			\r\n			return Response.status(Status.INTERNAL_SERVER_ERROR).entity(e.getMessage()).build();\r\n		}\r\n		\r\n		return Response.ok().build();\r\n	}\r\n\r\n}\r\n','D:\\data\\Jerry\\crud\\src\\main\\java\\com\\tadpole\\rest\\SmsTemplateResource.java','');
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
-- Table structure for table `tad_function_menu`
--

DROP TABLE IF EXISTS `tad_function_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_function_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aa` varchar(255) DEFAULT NULL,
  `functionId` int(11) DEFAULT NULL,
  `menuId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_function_menu`
--

LOCK TABLES `tad_function_menu` WRITE;
/*!40000 ALTER TABLE `tad_function_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tad_function_menu` ENABLE KEYS */;
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
-- Table structure for table `tad_leave_application`
--

DROP TABLE IF EXISTS `tad_leave_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_leave_application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `applier` varchar(255) NOT NULL,
  `endDate` datetime NOT NULL,
  `hours` int(11) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `startDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_leave_application`
--

LOCK TABLES `tad_leave_application` WRITE;
/*!40000 ALTER TABLE `tad_leave_application` DISABLE KEYS */;
/*!40000 ALTER TABLE `tad_leave_application` ENABLE KEYS */;
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
  `visible` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_menu`
--

LOCK TABLES `tad_menu` WRITE;
/*!40000 ALTER TABLE `tad_menu` DISABLE KEYS */;
INSERT INTO `tad_menu` VALUES (1,'userManager','Users','/crud/admin/loadUser.action',1),(2,'develop','Develop','/crud/dev/develop.action',1),(3,'MenuLink','Menu Management','/crud/dev/loadMenuMgr.action',1),(4,'TadStrutsNamespaceLink','Struts namespace','/crud/dev/loadTadStrutsNamespaceMgr.action',0),(15,'QuickDataSourceLink','Data Sources','/crud/dev/loadQuickDataSourceMgr.action',1),(16,'CustomerLink','Customers','/crud/dev/loadCustomerMgr.action',1),(17,'SmsTemplateLink','SMS Templates','/crud/dev/loadSmsTemplateMgr.action',1);
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
-- Table structure for table `tad_quick_datasource`
--

DROP TABLE IF EXISTS `tad_quick_datasource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_quick_datasource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `keyValues` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `querySql` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_quick_datasource`
--

LOCK TABLES `tad_quick_datasource` WRITE;
/*!40000 ALTER TABLE `tad_quick_datasource` DISABLE KEYS */;
INSERT INTO `tad_quick_datasource` VALUES (1,'','Fixed Values,SQL','QuickDataType','','Fixed Values'),(2,'','','DataSources','select name as optionText, name as optionValue from tad_quick_datasource','SQL'),(3,'QuickDataType','Yes,No','TeacherRetiredYesNo','','Fixed Values'),(4,NULL,'','TeacherNames','SELECT distinct name as optionText, name as optionValue FROM tadpole.tad_teacher;','SQL'),(5,NULL,'Male,Female','sexDatasource',NULL,'Fixed Values');
/*!40000 ALTER TABLE `tad_quick_datasource` ENABLE KEYS */;
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
-- Table structure for table `tad_sms_template`
--

DROP TABLE IF EXISTS `tad_sms_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_sms_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_sms_template`
--

LOCK TABLES `tad_sms_template` WRITE;
/*!40000 ALTER TABLE `tad_sms_template` DISABLE KEYS */;
INSERT INTO `tad_sms_template` VALUES (1,'package com.tadpole.entity;\n\nimport java.io.Serializable;\nimport java.util.Date;\n\nimport javax.persistence.Entity;\nimport javax.persistence.GeneratedValue;\nimport javax.persistence.Id;\nimport javax.persistence.Table;\n\nimport javax.persistence.Column;\nimport org.apache.struts2.json.annotations.JSON;\n\n/**\n * @author Jerry Jiang\n */\n@Entity\n@Table(name = \"${tableName}\")\npublic class ${javaClassName} implements Serializable {\n\n	private static final long serialVersionUID = 1L;\n\n	@Id\n	@GeneratedValue\n	protected Integer id;\n	\n<#list attributeDefinitions as attr>\n	<#if attr.textLong?? && attr.textLong>\n	@javax.persistence.Lob\n	</#if>\n	<#if attr.columnAttributes??>\n	@Column(${attr.columnAttributes})\n	</#if>\n	protected ${attr.type} ${attr.name};\n	\n</#list>\n\n	public Integer getId() {\n\n		return id;\n	}\n\n	public void setId(Integer id) {\n\n		this.id = id;\n	}\n\n<#list attributeDefinitions as attr>\n	<#if attr.type == \'Date\'>\n	@JSON(format=\"yyyy-MM-dd\")\n	</#if>\n	public ${attr.type} get${attr.firstLetterUpperName}() {\n\n		return ${attr.name};\n	}\n	\n</#list>\n<#list attributeDefinitions as attr>\n	public void set${attr.firstLetterUpperName}(${attr.type} ${attr.name}) {\n\n		this.${attr.name} = ${attr.name};\n	}\n	\n</#list>\n}','Hello World-Jiang-1'),(2,'ggggpackage com.tadpole.entity;\n\nimport java.io.Serializable;\n\nimport javax.persistence.Entity;\nimport javax.persistence.GeneratedValue;\nimport javax.persistence.Id;\nimport javax.persistence.Table;\n\nimport javax.persistence.Column;\n\n/**\n * @author Jerry Jiang\n */\n@Entity\n@Table(name = \"tad_dev_attribute\")\npublic class TadAttribute implements Serializable {\n\n	private static final long serialVersionUID = 1L;\n\n	@Id\n	@GeneratedValue\n	protected Integer id;\n	\n	protected String functionId;\n	\n	protected String name;\n	\n	protected String type;\n	\n	protected String label;\n	\n	protected Boolean required;\n	\n	protected Boolean isUnique;\n	\n	protected Boolean searchable;\n	\n	protected String optionText;\n	\n	protected String dataSourceName;\n	\n	protected String searchTextDataSourceName;\n	\n	protected Boolean shownInTable;\n	\n	protected Boolean textLong;\n	\n\n	public Integer getId() {\n\n		return id;\n	}\n\n	public void setId(Integer id) {\n\n		this.id = id;\n	}\n	\n	\n	public Boolean getIsUnique() {\n	\n		return isUnique;\n	}\n\n	\n	public void setIsUnique(Boolean isUnique) {\n	\n		this.isUnique = isUnique;\n	}\n\n	public String getSearchTextDataSourceName() {\n	\n		return searchTextDataSourceName;\n	}\n\n	\n	public void setSearchTextDataSourceName(String searchTextDataSourceName) {\n	\n		this.searchTextDataSourceName = searchTextDataSourceName;\n	}\n\n	public String getFunctionId() {\n\n		return functionId;\n	}\n	\n	public String getName() {\n\n		return name;\n	}\n	\n	public String getType() {\n\n		return type;\n	}\n	\n	public String getLabel() {\n\n		return label;\n	}\n	\n	public Boolean getRequired() {\n\n		return required;\n	}\n	\n	public void setFunctionId(String functionId) {\n\n		this.functionId = functionId;\n	}\n	\n	public void setName(String name) {\n\n		this.name = name;\n	}\n	\n	public void setType(String type) {\n\n		this.type = type;\n	}\n	\n	public void setLabel(String label) {\n\n		this.label = label;\n	}\n	\n	public void setRequired(Boolean required) {\n\n		this.required = required;\n	}\n	\n	public Boolean getSearchable() {\n	\n		return searchable;\n	}\n	\n	public void setSearchable(Boolean searchable) {\n	\n		this.searchable = searchable;\n	}\n\n	\n	public String getOptionText() {\n	\n		return optionText;\n	}\n	\n	public void setOptionText(String optionText) {\n	\n		this.optionText = optionText;\n	}\n\n	\n	public String getDataSourceName() {\n	\n		return dataSourceName;\n	}\n\n	\n	public void setDataSourceName(String dataSourceName) {\n	\n		this.dataSourceName = dataSourceName;\n	}\n\n	\n	public Boolean getShownInTable() {\n	\n		return shownInTable;\n	}\n\n	\n	public void setShownInTable(Boolean shownInTable) {\n	\n		this.shownInTable = shownInTable;\n	}\n\n	\n	public Boolean getTextLong() {\n	\n		return textLong;\n	}\n\n	\n	public void setTextLong(Boolean textLong) {\n	\n		this.textLong = textLong;\n	}\n\n	\n	\n	\n}','JPA ENTITY'),(3,'package com.tadpole.controller;\n\nimport javax.annotation.Resource;\n\nimport net.sf.json.JSONObject;\nimport net.sf.json.util.JSONUtils;\nimport net.sf.ezmorph.object.DateMorpher;\n\nimport org.apache.commons.lang.StringUtils;\n\nimport com.tadpole.vo.search.SmsTemplateSearchVo;\n\nimport com.tadpole.entity.SmsTemplate;\nimport com.tadpole.service.SmsTemplateService;\nimport com.tadpole.vo.ResponseVo;\nimport com.tadpole.vo.PagedElement;\nimport org.springframework.stereotype.Component;\nimport org.springframework.context.annotation.Scope;\nimport org.springframework.data.domain.Page;\n\n@Component(\"SmsTemplateAction\")\n@Scope(\"prototype\")\npublic class SmsTemplateAction extends AbstractAction {\n\n	private static final long serialVersionUID = 1L;\n\n	@Resource(name = \"SmsTemplateService\")\n	private SmsTemplateService smsTemplateService;\n\n	public String saveOrUpdateSmsTemplate() {\n	\n		try {\n			String smsTemplateJson = getParameter(\"smsTemplateJson\");\n\n			if (StringUtils.isEmpty(smsTemplateJson)) {\n				setResponse(ResponseVo.newFailMessage(\"Bad request : no data found to save or update.\"));\n\n				return SUCCESS;\n			}\n			\n			JSONUtils.getMorpherRegistry().registerMorpher(new DateMorpher(new String[]{\"yyyy-MM-dd\"}));\n			\n			SmsTemplate smsTemplate = (SmsTemplate)JSONObject.toBean(JSONObject.fromObject(smsTemplateJson), SmsTemplate.class);\n\n			SmsTemplate saved = smsTemplateService.saveOrUpdateSmsTemplate(smsTemplate);\n			\n			ResponseVo response = ResponseVo.newSuccessMessage(\"The smsTemplate is successfully saved.\");\n			response.setObject(saved);\n			\n			setResponse(response);\n			\n		} catch (Exception e) {\n			\n			setResponse(ResponseVo.newFailMessage(e.getMessage()));\n		}\n\n		return SUCCESS;\n	}\n\n	public String deleteSmsTemplate() {\n	\n		try {\n			String smsTemplateId = getParameter(\"smsTemplateId\");\n\n			if (StringUtils.isEmpty(smsTemplateId)) {\n				setResponse(ResponseVo.newFailMessage(\"Bad request : no data is provided to delete.\"));\n\n				return SUCCESS;\n			}\n\n			smsTemplateService.deleteSmsTemplate(smsTemplateId);\n			\n			ResponseVo response = ResponseVo.newSuccessMessage(\"The smsTemplate is successfully deleted.\");\n			\n			setResponse(response);\n			\n		} catch (Exception e) {\n			\n			setResponse(ResponseVo.newFailMessage(e.getMessage()));\n		}\n\n		return SUCCESS;\n	}\n	\n	public String loadSmsTemplates() {\n\n		try {\n			String currentIndex = getParameter(\"currentIndex\");\n			if (StringUtils.isEmpty(currentIndex)) {\n        		currentIndex = \"1\";\n			}\n			\n			String smsTemplateSearchVoJson = getParameter(\"smsTemplateSearchVoJson\");\n			\n			JSONUtils.getMorpherRegistry().registerMorpher(new DateMorpher(new String[]{\"yyyy-MM-dd\"}));\n			\n			SmsTemplateSearchVo smsTemplateSearchVo = (SmsTemplateSearchVo)JSONObject.toBean(JSONObject.fromObject(smsTemplateSearchVoJson), SmsTemplateSearchVo.class);\n			\n			Page<SmsTemplate> smsTemplates = smsTemplateService.loadSmsTemplates(currentIndex, smsTemplateSearchVo);\n\n			PagedElement<SmsTemplate> pageElement = new PagedElement<SmsTemplate>(smsTemplates);\n\n			ResponseVo response = ResponseVo.newSuccessMessage(\"loaded successfully.\");\n			response.setObject(pageElement);\n\n			setResponse(response);\n\n		} catch (Exception e) {\n			setResponse(ResponseVo.newFailMessage(e.getMessage()));\n\n		}\n\n		return SUCCESS;\n	}\n}','ACTION-JAVA-JIANG'),(4,'package com.tadpole.service.impl;\n\nimport java.util.Date;\n\nimport javax.persistence.criteria.CriteriaBuilder;\nimport javax.persistence.criteria.CriteriaQuery;\nimport javax.persistence.criteria.Predicate;\nimport javax.persistence.criteria.Root;\n\nimport org.apache.commons.lang.StringUtils;\nimport org.springframework.beans.factory.annotation.Autowired;\nimport org.springframework.stereotype.Service;\nimport org.springframework.data.domain.Page;\nimport org.springframework.data.domain.PageRequest;\nimport org.springframework.data.jpa.domain.Specification;\nimport org.springframework.data.jpa.domain.Specifications;\n\nimport com.tadpole.entity.SmsTemplate;\nimport com.tadpole.repository.SmsTemplateRepository;\nimport com.tadpole.service.SmsTemplateService;\nimport com.tadpole.vo.search.SmsTemplateSearchVo;\n\n@Service(\"SmsTemplateService\")\npublic class SmsTemplateServiceImpl implements SmsTemplateService {\n\n	@Autowired\n	SmsTemplateRepository smsTemplateRepository;\n\n	public SmsTemplate saveOrUpdateSmsTemplate(SmsTemplate smsTemplate) {\n\n		return smsTemplateRepository.saveAndFlush(smsTemplate);\n	}\n	\n	public void deleteSmsTemplate(String smsTemplateId) {\n\n		smsTemplateRepository.delete(Integer.valueOf(smsTemplateId));\n	}\n	\n	public Page<SmsTemplate> loadSmsTemplates(String currentIndex, SmsTemplateSearchVo smsTemplateSearchVo) {\n		Specifications<SmsTemplate> smsTemplateSpecification = null;\n		if (StringUtils.isNotBlank(smsTemplateSearchVo.getName())) {\n			\n       	 	smsTemplateSpecification = Specifications.where(smsTemplateNameSpecification(smsTemplateSearchVo.getName()));\n		}\n\n		if (smsTemplateSpecification == null) {\n       		return smsTemplateRepository.findAll(new PageRequest(Integer.valueOf(currentIndex) - 1, 10));\n		} else {\n        	return smsTemplateRepository.findAll(smsTemplateSpecification, new PageRequest(Integer.valueOf(currentIndex) - 1, 10));\n		}		\n		\n	}\n\n	private Specification<SmsTemplate> smsTemplateNameSpecification(final String name) {\n\n		return new Specification<SmsTemplate>(){\n\n			public Predicate toPredicate(Root<SmsTemplate> root, CriteriaQuery<?> query, CriteriaBuilder cb) {\n\n				return cb.equal(root.get(\"name\"), name);\n			}\n		};\n	}\n}','SERVICE-Jiang'),(9,'I am Jerry I am Cool ~aaghshdhdhdhdhdhdbdbdbdbdbdbdbdbdbdbddbbdbsbdbsbbbbbdnddnnsbdfgggshshshshshshshshsvsgshsgsgsgs fdvehshshdvvvdbdbdbdbdbd\n\n\n\ngghggh\nh\n\n\n\n\nhigh','TEST MOBILE');
/*!40000 ALTER TABLE `tad_sms_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tad_statudent`
--

DROP TABLE IF EXISTS `tad_statudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_statudent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `classNumber` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `teacherName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_statudent`
--

LOCK TABLES `tad_statudent` WRITE;
/*!40000 ALTER TABLE `tad_statudent` DISABLE KEYS */;
/*!40000 ALTER TABLE `tad_statudent` ENABLE KEYS */;
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
  `createBy` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_struts_namespace`
--

LOCK TABLES `tad_struts_namespace` WRITE;
/*!40000 ALTER TABLE `tad_struts_namespace` DISABLE KEYS */;
INSERT INTO `tad_struts_namespace` VALUES (1,'dev','Jerry','Jerry Jiang');
/*!40000 ALTER TABLE `tad_struts_namespace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tad_teacher`
--

DROP TABLE IF EXISTS `tad_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a1` datetime DEFAULT NULL,
  `a2` varchar(255) DEFAULT NULL,
  `a3` varchar(255) DEFAULT NULL,
  `a4` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `retired` tinyint(1) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_teacher`
--

LOCK TABLES `tad_teacher` WRITE;
/*!40000 ALTER TABLE `tad_teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `tad_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tad_test1`
--

DROP TABLE IF EXISTS `tad_test1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tad_test1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a1` varchar(255) DEFAULT NULL,
  `a2` varchar(255) DEFAULT NULL,
  `a3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tad_test1`
--

LOCK TABLES `tad_test1` WRITE;
/*!40000 ALTER TABLE `tad_test1` DISABLE KEYS */;
/*!40000 ALTER TABLE `tad_test1` ENABLE KEYS */;
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
  CONSTRAINT `FKE2815DC2370C3DB9` FOREIGN KEY (`role_id`) REFERENCES `tad_role` (`id`),
  CONSTRAINT `FKE2815DC2DC370199` FOREIGN KEY (`user_id`) REFERENCES `tad_user` (`id`)
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

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a1` int(11) DEFAULT NULL,
  `a2` int(11) DEFAULT NULL,
  `a3` int(11) DEFAULT NULL,
  `a4` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-30 16:44:53
