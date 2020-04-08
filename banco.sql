/*
MySQL Backup
Source Server Version: 5.5.5
Source Database: tips_datalayer
Date: 08/04/2020 16:14:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `user_id` int(11) unsigned DEFAULT NULL,
  `addr_id` int(11) NOT NULL AUTO_INCREMENT,
  `addr_key` int(11) DEFAULT NULL,
  `addr_name` varchar(255) DEFAULT NULL,
  `addr_zipcode` varchar(255) DEFAULT NULL,
  `addr_street` varchar(255) DEFAULT NULL,
  `addr_number` varchar(255) DEFAULT NULL,
  `addr_complement` varchar(255) DEFAULT NULL,
  `addr_district` varchar(255) DEFAULT NULL,
  `addr_city` varchar(255) DEFAULT NULL,
  `addr_state` varchar(2) DEFAULT NULL,
  `addr_country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`addr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_thumb` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_lastname` varchar(255) DEFAULT NULL,
  `user_document` varchar(255) DEFAULT NULL,
  `user_genre` int(11) DEFAULT NULL,
  `user_telephone` varchar(255) DEFAULT NULL,
  `user_cell` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_channel` varchar(255) DEFAULT NULL,
  `user_registration` timestamp NULL DEFAULT NULL,
  `user_lastupdate` timestamp NULL DEFAULT NULL,
  `user_lastaccess` timestamp NULL DEFAULT NULL,
  `user_level` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `address` VALUES ('1','1','1','Minha casa','17512-744','Rua Sebastião Pereira','399','casa','Jardim Altos do Palmital','Marília','SP','Brasil'), ('3','3','1','casa','17512-744','Rua Sebastião Pereira','399','casa','Jardim Altos do Palmital','Marília','SP','Brasil');
INSERT INTO `users` VALUES ('1','images/2018/06/1-zecavrizi-1529091728.jpg','Zeca','Vrizi','338.098.428-00','1','(14) 3221-4461','(14) 99836-3841','zepaulo45@hotmail.com','5be5586abd9acca4efe9b9a72f702468c0f15333fe969690e109d219377b267badd4d0efe73e7d367d2ad941361b6dfe5e4cf5fd553ca7cf7dc3689772357cc0',NULL,'2018-06-15 21:41:32',NULL,NULL,'10'), ('3',NULL,'Jose','Souza','358.323.768-46',NULL,NULL,'(14) 99836-3841','jose@maritucs.com.br','5be5586abd9acca4efe9b9a72f702468c0f15333fe969690e109d219377b267badd4d0efe73e7d367d2ad941361b6dfe5e4cf5fd553ca7cf7dc3689772357cc0','Novo pedido','2020-04-01 11:26:06',NULL,NULL,'1');
