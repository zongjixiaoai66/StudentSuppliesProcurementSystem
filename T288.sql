/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t288`;
CREATE DATABASE IF NOT EXISTS `t288` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t288`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, '收货人1', '17703786901', '地址1', 1, '2022-04-07 05:46:23', '2022-04-07 05:46:23', '2022-04-07 05:46:23'),
	(2, 2, '收货人2', '17703786902', '地址2', 1, '2022-04-07 05:46:23', '2022-04-07 05:46:23', '2022-04-07 05:46:23'),
	(3, 1, '收货人3', '17703786903', '地址3', 1, '2022-04-07 05:46:23', '2022-04-07 05:46:23', '2022-04-07 05:46:23'),
	(4, 1, '收货人4', '17703786904', '地址4', 1, '2022-04-07 05:46:23', '2022-04-07 05:46:23', '2022-04-07 05:46:23'),
	(5, 2, '收货人5', '17703786905', '地址5', 1, '2022-04-07 05:46:23', '2022-04-07 05:46:23', '2022-04-07 05:46:23');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `goods_id` int DEFAULT NULL COMMENT '商品',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/xueshengyongpincaigou/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/xueshengyongpincaigou/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/xueshengyongpincaigou/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2022-04-07 05:46:02'),
	(2, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2022-04-07 05:46:02'),
	(3, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-04-07 05:46:02'),
	(4, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-04-07 05:46:02'),
	(5, 'goods_types', '商品类型', 1, '商品类型1', NULL, NULL, '2022-04-07 05:46:02'),
	(6, 'goods_types', '商品类型', 2, '商品类型2', NULL, NULL, '2022-04-07 05:46:02'),
	(7, 'goods_types', '商品类型', 3, '商品类型3', NULL, NULL, '2022-04-07 05:46:02'),
	(8, 'goods_order_types', '订单类型', 1, '已支付', NULL, NULL, '2022-04-07 05:46:02'),
	(9, 'goods_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-04-07 05:46:02'),
	(10, 'goods_order_types', '订单类型', 3, '已发货', NULL, NULL, '2022-04-07 05:46:02'),
	(11, 'goods_order_types', '订单类型', 4, '已收货', NULL, NULL, '2022-04-07 05:46:02'),
	(12, 'goods_order_types', '订单类型', 5, '已评价', NULL, NULL, '2022-04-07 05:46:02'),
	(13, 'goods_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-04-07 05:46:02'),
	(14, 'goods_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-04-07 05:46:02'),
	(15, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-04-07 05:46:02'),
	(16, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-04-07 05:46:02'),
	(17, 'news_types', '资讯类型', 1, '资讯类型1', NULL, NULL, '2022-04-07 05:46:03'),
	(18, 'news_types', '资讯类型', 2, '资讯类型2', NULL, NULL, '2022-04-07 05:46:03'),
	(19, 'news_types', '资讯类型', 3, '资讯类型3', NULL, NULL, '2022-04-07 05:46:03');

DROP TABLE IF EXISTS `goods`;
CREATE TABLE IF NOT EXISTS `goods` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '商品名称 Search111',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `goods_types` int DEFAULT NULL COMMENT '商品类型 Search111',
  `goods_kucun_number` int DEFAULT NULL COMMENT '商品库存',
  `goods_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `goods_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `goods_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `goods_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `goods_content` text COMMENT '商品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='商品';

DELETE FROM `goods`;
INSERT INTO `goods` (`id`, `goods_name`, `goods_photo`, `goods_types`, `goods_kucun_number`, `goods_old_money`, `goods_new_money`, `goods_clicknum`, `shangxia_types`, `goods_delete`, `goods_content`, `create_time`) VALUES
	(1, '商品名称1', 'http://localhost:8080/xueshengyongpincaigou/upload/goods1.jpg', 2, 100, 673.17, 250.70, 60, 1, 1, '商品简介1', '2022-04-07 05:46:23'),
	(2, '商品名称2', 'http://localhost:8080/xueshengyongpincaigou/upload/goods2.jpg', 2, 101, 842.71, 260.49, 70, 1, 1, '商品简介2', '2022-04-07 05:46:23'),
	(3, '商品名称3', 'http://localhost:8080/xueshengyongpincaigou/upload/goods3.jpg', 1, 101, 860.92, 252.17, 473, 1, 1, '商品简介3', '2022-04-07 05:46:23'),
	(4, '商品名称4', 'http://localhost:8080/xueshengyongpincaigou/upload/goods4.jpg', 1, 104, 693.16, 19.50, 192, 1, 1, '商品简介4', '2022-04-07 05:46:23'),
	(5, '商品名称5', 'http://localhost:8080/xueshengyongpincaigou/upload/goods5.jpg', 2, 100, 907.83, 422.59, 448, 2, 1, '商品简介5', '2022-04-07 05:46:23');

DROP TABLE IF EXISTS `goods_collection`;
CREATE TABLE IF NOT EXISTS `goods_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `goods_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='商品收藏';

DELETE FROM `goods_collection`;
INSERT INTO `goods_collection` (`id`, `goods_id`, `yonghu_id`, `goods_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2022-04-07 05:46:23', '2022-04-07 05:46:23'),
	(2, 2, 3, 1, '2022-04-07 05:46:23', '2022-04-07 05:46:23'),
	(3, 3, 3, 1, '2022-04-07 05:46:23', '2022-04-07 05:46:23'),
	(4, 4, 2, 1, '2022-04-07 05:46:23', '2022-04-07 05:46:23'),
	(6, 5, 1, 1, '2022-04-07 06:19:13', '2022-04-07 06:19:13'),
	(7, 3, 1, 1, '2024-07-24 03:07:15', '2024-07-24 03:07:15');

DROP TABLE IF EXISTS `goods_commentback`;
CREATE TABLE IF NOT EXISTS `goods_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `goods_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='商品评价';

DELETE FROM `goods_commentback`;
INSERT INTO `goods_commentback` (`id`, `goods_id`, `yonghu_id`, `goods_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 1, '评价内容1', '2022-04-07 05:46:23', '回复信息1', '2022-04-07 05:46:23', '2022-04-07 05:46:23'),
	(2, 2, 2, '评价内容2', '2022-04-07 05:46:23', '回复信息2', '2022-04-07 05:46:23', '2022-04-07 05:46:23'),
	(3, 3, 2, '评价内容3', '2022-04-07 05:46:23', '回复信息3', '2022-04-07 05:46:23', '2022-04-07 05:46:23'),
	(4, 4, 3, '评价内容4', '2022-04-07 05:46:23', '回复信息4', '2022-04-07 05:46:23', '2022-04-07 05:46:23'),
	(5, 5, 3, '评价内容5', '2022-04-07 05:46:23', '回复信息5', '2022-04-07 05:46:23', '2022-04-07 05:46:23'),
	(6, 1, 1, '购买完成可以评论23', '2022-04-07 06:29:22', '管理回复123', '2022-04-07 06:29:48', '2022-04-07 06:29:22'),
	(7, 3, 1, '123', '2022-04-07 06:30:16', NULL, NULL, '2022-04-07 06:30:16');

DROP TABLE IF EXISTS `goods_order`;
CREATE TABLE IF NOT EXISTS `goods_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int DEFAULT NULL COMMENT '收货地址 ',
  `goods_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `goods_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `goods_order_types` int DEFAULT NULL COMMENT '订单类型',
  `goods_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `goods_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `goods_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='商品订单';

DELETE FROM `goods_order`;
INSERT INTO `goods_order` (`id`, `goods_order_uuid_number`, `address_id`, `goods_id`, `yonghu_id`, `buy_number`, `goods_order_true_price`, `goods_order_types`, `goods_order_courier_name`, `goods_order_courier_number`, `goods_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1649312855848', 3, 2, 1, 1, 260.49, 1, NULL, NULL, 1, '2022-04-07 06:27:36', '2022-04-07 06:27:36'),
	(2, '1649312855848', 3, 3, 1, 1, 252.17, 5, '顺丰', 'SF 15648973216579876514', 1, '2022-04-07 06:27:36', '2022-04-07 06:27:36'),
	(3, '1649312855848', 3, 1, 1, 1, 250.70, 5, '京东', 'JD 123145648797123', 1, '2022-04-07 06:27:36', '2022-04-07 06:27:36'),
	(4, '1649312855848', 3, 5, 1, 3, 1267.77, 2, NULL, NULL, 1, '2022-04-07 06:27:36', '2022-04-07 06:27:36'),
	(5, '1721790456389', 3, 3, 1, 1, 252.17, 1, NULL, NULL, 1, '2024-07-24 03:07:36', '2024-07-24 03:07:36');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '资讯标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '资讯类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '资讯图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '资讯详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='商品资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '资讯标题1', 1, 'http://localhost:8080/xueshengyongpincaigou/upload/news1.jpg', '2022-04-07 05:46:23', '资讯详情1', '2022-04-07 05:46:23'),
	(2, '资讯标题2', 2, 'http://localhost:8080/xueshengyongpincaigou/upload/news2.jpg', '2022-04-07 05:46:23', '资讯详情2', '2022-04-07 05:46:23'),
	(3, '资讯标题3', 2, 'http://localhost:8080/xueshengyongpincaigou/upload/news3.jpg', '2022-04-07 05:46:23', '资讯详情3', '2022-04-07 05:46:23'),
	(4, '资讯标题4', 3, 'http://localhost:8080/xueshengyongpincaigou/upload/news4.jpg', '2022-04-07 05:46:23', '资讯详情4', '2022-04-07 05:46:23'),
	(5, '资讯标题5', 3, 'http://localhost:8080/xueshengyongpincaigou/upload/news5.jpg', '2022-04-07 05:46:23', '资讯详情5', '2022-04-07 05:46:23');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(3, 1, 'admin', 'users', '管理员', '1vbamvj83s04hxq3li7psfe30qi4nwyc', '2022-04-07 06:16:49', '2024-07-24 04:05:43'),
	(4, 1, 'a1', 'yonghu', '用户', 'llxj62s73lt4zzf1laql9zzdx6fb0fxw', '2022-04-07 06:18:26', '2024-07-24 04:07:03');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/xueshengyongpincaigou/upload/yonghu1.jpg', 1, '1@qq.com', 99787.28, '2022-04-07 05:46:23'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/xueshengyongpincaigou/upload/yonghu2.jpg', 2, '2@qq.com', 303.16, '2022-04-07 05:46:23'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/xueshengyongpincaigou/upload/yonghu3.jpg', 2, '3@qq.com', 109.21, '2022-04-07 05:46:23');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
