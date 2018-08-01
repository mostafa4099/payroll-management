-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema pay_roll
--

CREATE DATABASE IF NOT EXISTS pay_roll;
USE pay_roll;

--
-- Definition of table `emp_info`
--

DROP TABLE IF EXISTS `emp_info`;
CREATE TABLE `emp_info` (
  `emp_id` int(10) unsigned NOT NULL auto_increment,
  `emp_name` varchar(45) NOT NULL,
  `emp_department` varchar(45) NOT NULL,
  `emp_post` varchar(45) NOT NULL,
  `emp_address` varchar(45) NOT NULL,
  `emp_dob` date NOT NULL,
  `emp_mobile` varchar(45) NOT NULL,
  `emp_email` varchar(45) NOT NULL,
  `emp_uname` varchar(45) NOT NULL,
  `emp_pass` varchar(45) NOT NULL,
  PRIMARY KEY  (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_info`
--

/*!40000 ALTER TABLE `emp_info` DISABLE KEYS */;
INSERT INTO `emp_info` (`emp_id`,`emp_name`,`emp_department`,`emp_post`,`emp_address`,`emp_dob`,`emp_mobile`,`emp_email`,`emp_uname`,`emp_pass`) VALUES 
 (1,'Golam Mostafa','Administrator','Admin','Lakshmipur','1992-05-13','01737174099','mostafa.sna@gmail.com','admin','admin'),
 (6,'dfhdf','Administrator','fsdkdajs','dfashdasjk','2011-12-04','6677','fdsfds@fdg.dfg','gfdsgfsd','gfdsgfd'),
 (7,'gfdslkgjfsd','Administrator','gfsdjgsdfg','sdgsdjgs','2018-05-10','432141','fdsfds@fdg.dfg','sdggsd','sdgfsgsdf'),
 (8,'ghdf','hfdgh','dfhdf','hgdfhgfd','2018-05-26','54634','null','3444','4444'),
 (9,'Kabir','hfdgh','dfhdf','hgdfhgfd','2018-05-26','54634','ghdfhdf@gdf.gh','gjfdjksg','546546'),
 (11,'hgfhdf','dfghfdh','hgdd','hgddgf','2018-05-17','564','6ghd@vbcb.jhghjf','fjgjfg','fgjfjfgj'),
 (13,'jdi','dfalkds','ghdfsgssdf','gsdsdfg','2014-05-01','dsfg','jdkf@ggg.ff','dfasfjklads','fsdaf'),
 (15,'sfjdksa','gsdafasdfasd','dfsadsa','fsdadsa','2018-05-25','dfasfdsaf','fdas@gf.ghd','gsdgs','sgfgfsdgsdf'),
 (16,'jfgasdj','dafkasdf','fdskdsa','dfjhads','2018-05-26','dfjhafd','fasdfkja@FF.vv','fdasfda','dfsaasd'),
 (18,'dfjasfa','fasdhafj','fdafhas','fdasfhdas','2018-05-26','5754756','gfdsg@gfd.hjg','kdldafd','tyyteyet'),
 (19,'gfgsdf','sdfgsdf','dfgsg','gfsdgfsd','2018-05-19','fg545','jdkf@ggg.ff','gfsdg','gsdgf'),
 (20,'gf','gdssd','gfsdg','gfsdgsf','2018-05-23','tretrwe','fgsdgfs@gdf.hj','ghdfdf','dhdgfhgdf'),
 (21,'Golam Mostafa','Administrator','Admin','Laxmipur','1992-05-13','01737174099','null','admin','admin'),
 (22,'Md. Golam Mostafa','Administrator','Admin','Laxmipur','1992-05-13','01737174099','null','admin','admin'),
 (23,'Rahim','Administrator','HR','Dhaka','2018-05-15','099887786746','mos@gfdgh.fjd','jdsakaa','dasfjkdas');
/*!40000 ALTER TABLE `emp_info` ENABLE KEYS */;


--
-- Definition of trigger `insert_login`
--

DROP TRIGGER /*!50030 IF EXISTS */ `insert_login`;

DELIMITER $$

CREATE DEFINER = `root`@`localhost` TRIGGER `insert_login` AFTER INSERT ON `emp_info` FOR EACH ROW BEGIN
insert into login
set uname=NEW.emp_uname, pass=NEW.emp_pass, roll='emp', emp_id=NEW.emp_id;
END $$

DELIMITER ;

--
-- Definition of trigger `update_login`
--

DROP TRIGGER /*!50030 IF EXISTS */ `update_login`;

DELIMITER $$

CREATE DEFINER = `root`@`localhost` TRIGGER `update_login` AFTER UPDATE ON `emp_info` FOR EACH ROW BEGIN
update login
set uname=NEW.emp_uname, pass=NEW.emp_pass
where emp_id=NEW.emp_id;
END $$

DELIMITER ;

--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `login_id` int(10) unsigned NOT NULL auto_increment,
  `emp_id` int(10) unsigned NOT NULL,
  `uname` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `roll` varchar(45) default NULL,
  PRIMARY KEY  (`login_id`),
  KEY `FK_login_emp` (`emp_id`),
  CONSTRAINT `FK_login_emp` FOREIGN KEY (`emp_id`) REFERENCES `emp_info` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`login_id`,`emp_id`,`uname`,`pass`,`roll`) VALUES 
 (1,1,'admin','admin','emp'),
 (6,6,'gfdsgfsd','gfdsgfd','emp'),
 (7,7,'sdggsd','sdgfsgsdf','emp'),
 (8,8,'mostafa','123456','emp'),
 (9,9,'gjfdjksg','546546','emp'),
 (11,11,'mostafa','123456','emp'),
 (13,13,'dfasfjklads','fsdaf','emp'),
 (15,15,'gsdgs','sgfgfsdgsdf','emp'),
 (16,16,'fdasfda','dfsaasd','emp'),
 (18,18,'kdldafd','tyyteyet','emp'),
 (19,19,'gfsdg','gsdgf','emp'),
 (20,20,'ghdfdf','dhdgfhgdf','emp'),
 (21,21,'admin','admin','emp'),
 (22,22,'admin','admin','emp'),
 (23,23,'jdsakaa','dasfjkdas','emp');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `salary`
--

DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary` (
  `salary_id` int(10) unsigned NOT NULL auto_increment,
  `emp_id` int(10) unsigned NOT NULL,
  `pay_month` date NOT NULL,
  `working_day` int(11) NOT NULL,
  `overtime_hours` int(11) NOT NULL,
  `basic_salary` double NOT NULL,
  `overtime_salary` double NOT NULL,
  `house_rent` double NOT NULL,
  `medical` double NOT NULL,
  `transfort` double NOT NULL,
  `fastival` double NOT NULL,
  `total` double NOT NULL,
  `pay_date` date NOT NULL,
  PRIMARY KEY  (`salary_id`),
  KEY `FK_salary_emp` (`emp_id`),
  CONSTRAINT `FK_salary_emp` FOREIGN KEY (`emp_id`) REFERENCES `emp_info` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` (`salary_id`,`emp_id`,`pay_month`,`working_day`,`overtime_hours`,`basic_salary`,`overtime_salary`,`house_rent`,`medical`,`transfort`,`fastival`,`total`,`pay_date`) VALUES 
 (1,1,'2018-01-01',22,60,50000,21306.8181818182,10000,7500,2500,50000,141306.818181818,'2018-05-05'),
 (4,9,'2018-02-01',24,60,30000,11718.75,6000,4500,1500,25000,78718.75,'2018-05-07');
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
