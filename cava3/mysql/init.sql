CREATE DATABASE If Not Exists db_house_sys CHARACTER SET gb2312 COLLATE gb2312_chinese_ci;

USE db_house_sys;


CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(32) DEFAULT NULL,
  `status` varchar(16) NOT NULL DEFAULT 'testing',
  `metadata` json DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uid` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=gb2312;


CREATE TABLE `t_log_info` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `v_session_id` varchar(100) NOT NULL COMMENT '会话ID',
  `v_major_type` varchar(30) NOT NULL COMMENT '主类型',
  `v_minor_type` varchar(30) NOT NULL COMMENT '次类型',
  `v_opt_user` varchar(30) NOT NULL COMMENT '操作用户',
  `v_client_ip` varchar(64) NOT NULL COMMENT '远程ip',
  `v_opt_time` varchar(30) NOT NULL COMMENT '操作时间',
  `v_opt_info` varchar(250) NOT NULL COMMENT '信息',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=gb2312;

CREATE TABLE `t_user` (
  `u_name` varchar(20) NOT NULL COMMENT '用户名',
  `u_pwd` varchar(20) NOT NULL COMMENT '密码',
  `u_level` varchar(10) NOT NULL COMMENT '用户类型',
  `u_error_cnt` int(4) NOT NULL COMMENT '登录错误计数',
  `u_locked_time` varchar(20) NOT NULL COMMENT '被锁定时间点',
  PRIMARY KEY (`u_name`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

CREATE TABLE `m_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) DEFAULT NULL,
  `app_id` varchar(255) DEFAULT NULL,
  `app_secret` varchar(255) DEFAULT NULL,
  `is_flag` int(4) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `user_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_name` (`user_name`),
  CONSTRAINT `m_app_user_name_fkey` FOREIGN KEY (`user_name`) REFERENCES `t_user` (`u_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=gb2312;


CREATE INDEX `idx_user_name` ON m_app (`user_name`) USING BTREE;

INSERT INTO `t_user` (`u_name`, `u_pwd`, `u_level`, `u_error_cnt`, `u_locked_time`) VALUES ('cava', '12345678', 'vistor', '0', '2023-02-21 07:40:06');

INSERT INTO `m_app` (`app_name`, `app_id`, `app_secret`, `is_flag`, `access_token`, `user_name`) VALUES ('test', '7ff5d57acfbb', '4cb6653fd5f62bc7b223c613fee0464a', 0, '662998f0e22a717471a7188bd58a9582', 'cava');
