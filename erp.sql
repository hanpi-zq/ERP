CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_erp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `erp1`;

/*Table structure for table `bus_customer` */

DROP TABLE IF EXISTS `bus_customer`;

CREATE TABLE `bus_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户编号',
  `customername` varchar(255) DEFAULT NULL COMMENT '客户姓名',
  `address` varchar(255) DEFAULT NULL COMMENT '客户地址',
  `telephone` varchar(255) DEFAULT NULL COMMENT '客户公司电话',
  `linkman` varchar(255) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系人手机',
  `bank` varchar(255) DEFAULT NULL COMMENT '开户银行',
  `account` varchar(255) DEFAULT NULL COMMENT '客户银行账号',
  `email` varchar(255) DEFAULT NULL COMMENT '联系人邮箱',
  `fax` varchar(255) DEFAULT NULL COMMENT '联系人传真',
  `zipcode` varchar(255) DEFAULT NULL COMMENT '客户邮编',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `bus_customer` */

insert  into `bus_customer`(`id`,`customername`,`address`,`telephone`,`linkman`,`phone`,`bank`,`account`,`email`,`fax`,`zipcode`) values (1,'小张超市','武汉','027-9123131','张大明','13812312312321312','中国银行','654431331343413','213123@sina.com','430000','111'),(2,'小明超市','深圳','0755-9123131','张小明','13812312312321312','中国银行','654431331343413','213123@sina.com','430000','222'),(3,'快七超市','武汉','027-11011011','雷生','13434134131','招商银行','6543123341334133','6666@66.com','545341','430000');

/*Table structure for table `bus_goods` */

DROP TABLE IF EXISTS `bus_goods`;

CREATE TABLE `bus_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `goodsname` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `produceplace` varchar(255) DEFAULT NULL COMMENT '商品产地',
  `size` varchar(255) DEFAULT NULL COMMENT '商品规格',
  `goodspackage` varchar(255) DEFAULT NULL COMMENT '包装',
  `productcode` varchar(255) DEFAULT NULL COMMENT '生产批号',
  `promitcode` varchar(255) DEFAULT NULL COMMENT '批准文号',
  `description` varchar(255) DEFAULT NULL COMMENT '商品描述',
  `price` double DEFAULT NULL COMMENT '商品售价',
  `number` int(11) DEFAULT NULL COMMENT '商品数量',
  `dangernum` int(11) DEFAULT NULL COMMENT '预警数量',
  `goodsimg` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `typeid` int(11) DEFAULT NULL COMMENT '商品分类编号',
  `providerid` int(11) DEFAULT NULL COMMENT '供应商编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `bus_goods` */

insert  into `bus_goods`(`id`,`goodsname`,`produceplace`,`size`,`goodspackage`,`productcode`,`promitcode`,`description`,`price`,`number`,`dangernum`,`goodsimg`,`typeid`,`providerid`) values (1,'娃哈哈','武汉','120ML','瓶','PH12345','PZ1234','小孩子都爱的',2,488,10,'2019-11-28/1722929face44a4381b5c11f6f310c02.jpg',1,3),(2,'旺旺雪饼[小包]','仙桃','包','袋','PH12312312','PZ12312','好吃不上火',4,1100,10,'2019-12-01/4ff0da80920042129c59c21e9d551299.jpeg',1,1),(3,'旺旺大礼包','仙桃','盒','盒','11','11','111',28,1021,100,'2018-12-25/userface3.jpg',1,1),(4,'娃哈哈','武汉','200ML','瓶','11','111','12321',3,1100,10,'2018-12-25/userface4.jpg',1,3),(6,'旺旺超级大礼包','1111','111','111','1','111','旺旺超级大礼包',1,11,1,'images/defaultgoodsimg.jpg',1,1),(7,'旺旺超级大礼包','广州','1','1','1','1','旺旺超级大礼包',1,1,1,'2019-11-28/a958089b46d04857a96f7a7a9848c91a.jpg',1,1),(9,'达利园小面包','广州','200ML','瓶','11','111','达利园小面包',3,1100,10,'2019-11-28/ab96eb6b0db54f6780b047cc56106887.jpg_temp',1,2);


/*Table structure for table `bus_inport` */

/*进货表*/
DROP TABLE IF EXISTS `bus_inport`;

CREATE TABLE `bus_inport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paytype` varchar(255) DEFAULT NULL,
  `inporttime` datetime DEFAULT NULL,
  `operateperson` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `inportprice` double DEFAULT NULL,
  `providerid` int(11) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `bus_inport` */

insert  into `bus_inport`(`id`,`paytype`,`inporttime`,`operateperson`,`number`,`remark`,`inportprice`,`providerid`,`goodsid`) values (1,'微信','2018-05-07 00:00:00','张三',100,'备注',3.5,1,1),(2,'支付宝','2018-05-07 00:00:00','张三',1000,'无',2.5,3,3),(3,'银联','2018-05-07 00:00:00','张三',100,'1231',111,3,3),(4,'银联','2018-05-07 00:00:00','张三',1000,'无',2,3,1),(5,'银联','2018-05-07 00:00:00','张三',100,'无',1,3,1),(6,'银联','2018-05-07 00:00:00','张三',100,'1231',2.5,1,2),(8,'支付宝','2018-05-07 00:00:00','张三',100,'',1,3,1),(10,'支付宝','2018-08-07 17:17:57','超级管理员',100,'sadfasfdsa',1.5,3,1),(11,'支付宝','2018-09-17 16:12:25','超级管理员',21,'21',21,1,3),(12,'微信','2018-12-25 16:48:24','超级管理员',100,'123213213',12321321,3,1),(13,'微信',NULL,NULL,100,'',3.5,2,9);

/*Table structure for table `bus_outport` */

DROP TABLE IF EXISTS `bus_outport`;
/*出库表*/
CREATE TABLE `bus_outport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `providerid` int(11) DEFAULT NULL,
  `paytype` varchar(255) DEFAULT NULL,
  `outputtime` datetime DEFAULT NULL,
  `operateperson` varchar(255) DEFAULT NULL,
  `outportprice` double(10,2) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `bus_outport` */

insert  into `bus_outport`(`id`,`providerid`,`paytype`,`outputtime`,`operateperson`,`outportprice`,`number`,`remark`,`goodsid`) values (1,3,'微信','2019-08-16 08:19:50','超级管理员',12321321.00,1,'',1),(2,3,'微信','2019-08-16 08:26:54','超级管理员',12321321.00,11,'11',1);

/*Table structure for table `bus_provider` */

DROP TABLE IF EXISTS `bus_provider`;

CREATE TABLE `bus_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '供应商编号',
  `providername` varchar(255) DEFAULT NULL COMMENT '供应商名称',
  `zip` varchar(255) DEFAULT NULL COMMENT '供应商邮编',
  `address` varchar(255) DEFAULT NULL COMMENT '供应商地址',
  `telephone` varchar(255) DEFAULT NULL COMMENT '供应商公司联系电话',
  `linkman` varchar(255) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系人手机',
  `bank` varchar(255) DEFAULT NULL COMMENT '开户银行',
  `account` varchar(255) DEFAULT NULL COMMENT '银行账号',
  `email` varchar(255) DEFAULT NULL COMMENT '供应商邮箱',
  `fax` varchar(255) DEFAULT NULL COMMENT '供应商传真',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `bus_provider` */

insert  into `bus_provider`(`id`,`providername`,`zip`,`address`,`telephone`,`linkman`,`phone`,`bank`,`account`,`email`,`fax`) values (1,'旺旺食品','434000','仙桃','0728-4124312','小明','13413441141','中国农业银行','654124345131','12312321@sina.com','5123123'),(2,'达利园食品','430000','汉川','0728-4124312','大明','13413441141','中国农业银行','654124345131','12312321@sina.com','5123123'),(3,'娃哈哈集团','513131','杭州','21312','小晨','12312','建设银行','512314141541','123131','312312');

/*Table structure for table `bus_sales` */

DROP TABLE IF EXISTS `bus_sales`;
/*销售表*/
CREATE TABLE `bus_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) DEFAULT NULL,
  `paytype` varchar(255) DEFAULT NULL,
  `salestime` datetime DEFAULT NULL,
  `operateperson` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `saleprice` decimal(10,2) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bus_sales` */

/*Table structure for table `bus_salesback` */

DROP TABLE IF EXISTS `bus_salesback`;
/*销售退回表*/
CREATE TABLE `bus_salesback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) DEFAULT NULL,
  `paytype` varchar(255) DEFAULT NULL,
  `salesbacktime` datetime DEFAULT NULL,
  `salebackprice` double(10,2) DEFAULT NULL,
  `operateperson` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `bus_salesback` */


/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `loginname` varchar(255) DEFAULT NULL COMMENT '登录名称',
  `loginpwd` varchar(255) DEFAULT NULL COMMENT '登录密码',
  `name` varchar(255) DEFAULT NULL COMMENT '用户真实姓名',
  KEY `FK_3rrcpvho2w1mx1sfiuuyir1h` (`deptid`) USING BTREE,
  CONSTRAINT `sys_user_ibfk_1` FOREIGN KEY (`deptid`) REFERENCES `sys_dept` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

insert  into `sys_user`( `id` , `loginname`,`loginpwd` `name` )values(1,"system","123456","超级管理员")
