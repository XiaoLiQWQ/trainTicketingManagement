/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80028 (8.0.28)
 Source Host           : localhost:3306
 Source Schema         : ticketing_system

 Target Server Type    : MySQL
 Target Server Version : 80028 (8.0.28)
 File Encoding         : 65001

 Date: 16/04/2023 11:53:14
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_buy
-- ----------------------------
DROP TABLE IF EXISTS `sys_buy`;
CREATE TABLE `sys_buy`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `train_id` bigint NULL DEFAULT NULL COMMENT '列车id',
  `train_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列车号',
  `starting_station` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '始发站',
  `arrival_station` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '到达站',
  `starting_time` datetime NULL DEFAULT NULL COMMENT '始发时间',
  `arrival_time` datetime NULL DEFAULT NULL COMMENT '到达时间',
  `platform_number` int NULL DEFAULT NULL COMMENT '站台号',
  `seat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '座位',
  `ticket_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '票价',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_buy
-- ----------------------------
INSERT INTO `sys_buy` VALUES (1, 1, 'D9566', '北京', '南京', '2023-04-18 00:00:00', '2023-04-18 00:00:00', 2, '0', 999.00, '1', '2023-04-16 10:32:39', '', NULL, NULL);
INSERT INTO `sys_buy` VALUES (2, 1, 'D9566', '北京', '南京', '2023-04-18 00:00:00', '2023-04-18 00:00:00', 2, '0', 999.00, '1', '2023-04-16 10:36:54', '', '2023-04-16 10:36:23', NULL);
INSERT INTO `sys_buy` VALUES (3, 1, 'D9566', '北京', '南京', '2023-04-18 00:00:00', '2023-04-18 00:00:00', 2, '0', 999.00, '1', '2023-04-16 10:36:55', '', '2023-04-16 10:36:54', NULL);
INSERT INTO `sys_buy` VALUES (4, 1, 'D9566', '北京', '南京', '2023-04-18 00:00:00', '2023-04-18 00:00:00', 2, '0', 999.00, '614726564', '2023-04-16 10:43:29', '', '2023-04-16 10:36:55', NULL);
INSERT INTO `sys_buy` VALUES (5, 1, 'D9566', '北京', '南京', '2023-04-18 00:00:00', '2023-04-18 00:00:00', 2, '0', 999.00, '29689942', '2023-04-16 10:54:56', '', '2023-04-16 10:43:29', NULL);
INSERT INTO `sys_buy` VALUES (6, 2, 'D6521', '南京', '上海', '2023-04-18 00:00:00', '2023-04-18 00:00:00', 6, '1', 365.00, '614726564', '2023-04-16 10:55:22', '', NULL, NULL);
INSERT INTO `sys_buy` VALUES (7, 1, 'D9566', '北京', '南京', '2023-04-18 00:00:00', '2023-04-18 00:00:00', 2, '0', 999.00, '29689942', '2023-04-16 10:59:24', '', '2023-04-16 10:54:56', NULL);
INSERT INTO `sys_buy` VALUES (8, 1, 'D9566', '北京', '南京', '2023-04-18 00:00:00', '2023-04-18 00:00:00', 2, '0', 999.00, '29689942', '2023-04-16 10:59:27', '', '2023-04-16 10:59:24', NULL);
INSERT INTO `sys_buy` VALUES (9, 1, 'D9566', '北京', '南京', '2023-04-18 00:00:00', '2023-04-18 00:00:00', 2, '0', 999.00, '29689942', '2023-04-16 10:59:28', '', '2023-04-16 10:59:27', NULL);
INSERT INTO `sys_buy` VALUES (10, 2, 'D6521', '南京', '上海', '2023-04-18 00:00:00', '2023-04-18 00:00:00', 6, '1', 365.00, '29689942', '2023-04-16 10:59:53', '', '2023-04-16 10:55:22', NULL);
INSERT INTO `sys_buy` VALUES (11, 2, 'D6521', '南京', '上海', '2023-04-18 00:00:00', '2023-04-18 00:00:00', 6, '1', 365.00, '29689942', '2023-04-16 10:59:53', '', '2023-04-16 10:59:53', NULL);
INSERT INTO `sys_buy` VALUES (12, 1, 'D9566', '北京', '南京', '2023-04-18 00:00:00', '2023-04-18 00:00:00', 2, '0', 999.00, '29689942', '2023-04-16 11:03:49', '', '2023-04-16 10:59:28', NULL);
INSERT INTO `sys_buy` VALUES (13, 1, 'D9566', '北京', '南京', '2023-04-18 00:00:00', '2023-04-18 00:00:00', 2, '0', 999.00, '29689942', '2023-04-16 11:03:52', '', '2023-04-16 11:03:49', NULL);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-green', 'Y', 'admin', '2022-03-26 21:54:58', 'testAdmin', '2023-03-09 13:59:40', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-03-26 21:54:58', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-light', 'Y', 'admin', '2022-03-26 21:54:58', 'testAdmin', '2023-03-09 14:00:58', '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'true', 'Y', 'admin', '2022-03-26 21:54:58', 'testAdmin', '2023-03-09 20:39:39', '是否开启验证码功能（true开启，关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'true', 'Y', 'admin', '2022-03-26 21:54:58', 'admin', '2022-03-26 22:24:35', '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 208 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', 'XX社区', 0, 'WZJ', '', '', '0', '0', 'admin', '2022-03-26 21:54:57', 'testAdmin', '2023-03-09 15:09:51');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '一号楼', 1, 'WZJ', '', '', '0', '0', 'admin', '2022-03-26 21:54:57', 'testAdmin', '2023-03-09 15:11:29');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-03-26 21:54:57', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '1#101', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-03-26 21:54:57', 'admin', '2023-03-10 09:29:04');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '1#102', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-03-26 21:54:57', 'admin', '2023-03-10 09:29:08');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '1#201', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-03-26 21:54:57', 'admin', '2023-03-10 09:29:12');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '1#202', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-03-26 21:54:57', 'admin', '2023-03-10 09:29:19');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-03-26 21:54:57', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-03-26 21:54:57', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2022-03-26 21:54:57', '', NULL);
INSERT INTO `sys_dept` VALUES (200, 101, '0,100,101', '人事部门', 6, NULL, NULL, NULL, '0', '2', 'admin', '2022-08-09 20:26:11', 'admin', '2022-08-09 20:26:22');
INSERT INTO `sys_dept` VALUES (201, 100, '0,100', '二号楼', 2, NULL, NULL, NULL, '0', '0', 'testAdmin', '2023-03-09 10:16:44', 'testAdmin', '2023-03-09 15:12:47');
INSERT INTO `sys_dept` VALUES (202, 201, '0,100,201', '2#101', 0, NULL, NULL, NULL, '0', '0', 'testAdmin', '2023-03-09 10:16:54', 'admin', '2023-03-10 09:29:28');
INSERT INTO `sys_dept` VALUES (203, 201, '0,100,201', '2#201', 1, NULL, NULL, NULL, '0', '0', 'testAdmin', '2023-03-09 10:17:04', 'admin', '2023-03-10 09:29:31');
INSERT INTO `sys_dept` VALUES (204, 201, '0,100,201', '3#101', 2, NULL, NULL, NULL, '0', '0', 'admin', '2023-03-10 09:38:05', 'admin', '2023-03-10 09:39:45');
INSERT INTO `sys_dept` VALUES (205, 201, '0,100,201', '3#201', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-03-10 09:48:57', '', NULL);
INSERT INTO `sys_dept` VALUES (206, 201, '0,100,201', '4#101', 4, NULL, NULL, NULL, '0', '0', 'admin', '2023-03-10 09:51:33', '', NULL);
INSERT INTO `sys_dept` VALUES (207, 101, '0,100,101', '1#301', 5, NULL, NULL, NULL, '0', '0', 'admin', '2023-03-10 09:55:31', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 0, '农村户口', '0', 'sys_account_nature', NULL, 'default', 'N', '0', 'testAdmin', '2023-03-09 16:38:17', 'testAdmin', '2023-03-09 16:42:29', NULL);
INSERT INTO `sys_dict_data` VALUES (101, 0, '城市户口', '1', 'sys_account_nature', NULL, 'default', 'N', '0', 'testAdmin', '2023-03-09 16:38:29', 'testAdmin', '2023-03-09 16:42:43', NULL);
INSERT INTO `sys_dict_data` VALUES (102, 0, '商务座', '0', 'sys_seat', NULL, 'default', 'N', '0', 'testAdmin', '2023-04-16 09:51:28', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 1, '一等座', '1', 'sys_seat', NULL, 'default', 'N', '0', 'testAdmin', '2023-04-16 09:51:33', 'testAdmin', '2023-04-16 10:03:35', NULL);
INSERT INTO `sys_dict_data` VALUES (104, 2, '二等座', '2', 'sys_seat', NULL, 'default', 'N', '0', 'testAdmin', '2023-04-16 09:51:39', 'testAdmin', '2023-04-16 10:03:45', NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-03-26 21:54:58', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '户口性质', 'sys_account_nature', '0', 'testAdmin', '2023-03-09 16:36:24', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (101, '座位', 'sys_seat', '0', 'testAdmin', '2023-04-16 09:50:58', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-03-26 21:54:58', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-16 10:42:31');
INSERT INTO `sys_logininfor` VALUES (2, 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-16 10:42:35');
INSERT INTO `sys_logininfor` VALUES (3, 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-16 10:43:46');
INSERT INTO `sys_logininfor` VALUES (4, 'user', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '注册成功', '2023-04-16 10:44:08');
INSERT INTO `sys_logininfor` VALUES (5, 'user', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-16 10:44:14');
INSERT INTO `sys_logininfor` VALUES (6, 'user', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-16 10:44:19');
INSERT INTO `sys_logininfor` VALUES (7, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-16 10:45:33');
INSERT INTO `sys_logininfor` VALUES (8, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-16 10:46:34');
INSERT INTO `sys_logininfor` VALUES (9, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-16 10:46:37');
INSERT INTO `sys_logininfor` VALUES (10, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-16 10:47:52');
INSERT INTO `sys_logininfor` VALUES (11, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-16 10:48:01');
INSERT INTO `sys_logininfor` VALUES (12, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-16 10:48:16');
INSERT INTO `sys_logininfor` VALUES (13, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-16 10:54:59');
INSERT INTO `sys_logininfor` VALUES (14, 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-16 10:55:07');
INSERT INTO `sys_logininfor` VALUES (15, 'zhangsan', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-16 10:58:16');
INSERT INTO `sys_logininfor` VALUES (16, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-16 10:58:29');
INSERT INTO `sys_logininfor` VALUES (17, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-16 11:02:05');
INSERT INTO `sys_logininfor` VALUES (18, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-16 11:02:23');
INSERT INTO `sys_logininfor` VALUES (19, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-16 11:02:37');
INSERT INTO `sys_logininfor` VALUES (20, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-16 11:04:12');
INSERT INTO `sys_logininfor` VALUES (21, 'user', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-16 11:36:13');
INSERT INTO `sys_logininfor` VALUES (22, 'user', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-16 11:39:02');
INSERT INTO `sys_logininfor` VALUES (23, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-04-16 11:39:07');
INSERT INTO `sys_logininfor` VALUES (24, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-04-16 11:39:10');
INSERT INTO `sys_logininfor` VALUES (25, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-04-16 11:39:14');
INSERT INTO `sys_logininfor` VALUES (26, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-04-16 11:41:35');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2019 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2022-03-26 21:54:58', 'testAdmin', '2023-03-09 14:47:41', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '1', '0', '', 'monitor', 'admin', '2022-03-26 21:54:58', 'testAdmin', '2023-03-09 19:13:25', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2022-03-26 21:54:58', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-03-26 21:54:58', 'testAdmin', '2023-04-16 09:35:57', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-03-26 21:54:58', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-03-26 21:54:58', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '1', '0', 'system:post:list', 'post', 'admin', '2022-03-26 21:54:58', 'admin', '2023-02-24 22:17:55', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-03-26 21:54:58', 'testAdmin', '2023-03-09 16:07:43', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2022-03-26 21:54:58', 'testAdmin', '2023-03-09 13:59:27', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '站台公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2022-03-26 21:54:58', 'testAdmin', '2023-04-16 09:36:11', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2022-03-26 21:54:58', 'testAdmin', '2023-02-26 15:24:53', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-03-26 21:54:58', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2022-03-26 21:54:58', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2022-03-26 21:54:58', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-03-26 21:54:58', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2022-03-26 21:54:58', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-03-26 21:54:58', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-03-26 21:54:58', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2022-03-26 21:54:58', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2022-03-26 21:54:58', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2022-03-26 21:54:58', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '列车管理', 0, 1, 'train', 'system/train/index', NULL, 1, 0, 'C', '0', '0', 'system:train:list', 'international', 'admin', '2023-04-16 09:56:01', 'testAdmin', '2023-04-16 10:00:13', '列车菜单');
INSERT INTO `sys_menu` VALUES (2007, '列车查询', 2006, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:train:query', '#', 'admin', '2023-04-16 09:56:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '列车新增', 2006, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:train:add', '#', 'admin', '2023-04-16 09:56:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '列车修改', 2006, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:train:edit', '#', 'admin', '2023-04-16 09:56:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '列车删除', 2006, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:train:remove', '#', 'admin', '2023-04-16 09:56:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '列车导出', 2006, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:train:export', '#', 'admin', '2023-04-16 09:56:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '我的订单', 0, 2, 'buy', 'system/buy/index', NULL, 1, 0, 'C', '0', '0', 'system:buy:list', 'money', 'admin', '2023-04-16 09:56:02', 'testAdmin', '2023-04-16 10:38:51', '购票菜单');
INSERT INTO `sys_menu` VALUES (2013, '购票查询', 2012, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:buy:query', '#', 'admin', '2023-04-16 09:56:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '购票新增', 2012, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:buy:add', '#', 'admin', '2023-04-16 09:56:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '购票修改', 2012, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:buy:edit', '#', 'admin', '2023-04-16 09:56:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '购票删除', 2012, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:buy:remove', '#', 'admin', '2023-04-16 09:56:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '购票导出', 2012, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:buy:export', '#', 'admin', '2023-04-16 09:56:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '购票大厅', 0, 1, 'buyTicket', 'system/train/buy', NULL, 1, 0, 'C', '0', '0', '', 'chart', 'testAdmin', '2023-04-16 10:02:55', 'testAdmin', '2023-04-16 10:03:01', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (11, '关于XX班次取消通知', '1', 0x3C703E585858583C2F703E, '0', 'testAdmin', '2023-03-09 15:15:50', 'testAdmin', '2023-04-16 09:35:26', NULL);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '操作日志', 9, 'com.ruoyi.web.controller.monitor.SysOperlogController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/operlog/clean', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-16 10:42:12');
INSERT INTO `sys_oper_log` VALUES (2, '登录日志', 9, 'com.ruoyi.web.controller.monitor.SysLogininforController.clean()', 'DELETE', 1, 'admin', NULL, '/monitor/logininfor/clean', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-16 10:42:15');
INSERT INTO `sys_oper_log` VALUES (3, '购票', 1, 'com.ruoyi.system.controller.SysBuyController.add()', 'POST', 1, 'zhangsan', NULL, '/system/buy', '127.0.0.1', '内网IP', '{\"trainId\":1,\"startingStation\":\"北京\",\"ticketPrice\":999,\"platformNumber\":2,\"updateTime\":1681612615000,\"params\":{},\"arrivalStation\":\"南京\",\"seat\":\"0\",\"createBy\":\"614726564\",\"createTime\":1681613008844,\"updateBy\":\"\",\"arrivalTime\":1681747200000,\"startingTime\":1681747200000,\"trainNumber\":\"D9566\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-16 10:43:28');
INSERT INTO `sys_oper_log` VALUES (4, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"root\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15612124455\",\"admin\":false,\"loginDate\":1681613296000,\"delFlag\":\"0\",\"idNumber\":\"123\",\"password\":\"\",\"balance\":6666,\"updateBy\":\"admin\",\"postIds\":[],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"admin\",\"sex\":\"0\",\"deptId\":104,\"avatar\":\"\",\"dept\":{\"deptName\":\"1#102\",\"leader\":\"若依\",\"deptId\":104,\"orderNum\":\"2\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":29689942,\"createBy\":\"\",\"roleIds\":[100],\"createTime\":1677380087000,\"position\":\"管理员\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-16 10:48:43');
INSERT INTO `sys_oper_log` VALUES (5, '购票', 1, 'com.ruoyi.system.controller.SysBuyController.add()', 'POST', 1, 'admin', NULL, '/system/buy', '127.0.0.1', '内网IP', '{\"startingStation\":\"北京\",\"ticketPrice\":999,\"platformNumber\":2,\"updateTime\":1681613009000,\"params\":{},\"arrivalStation\":\"南京\",\"seat\":\"0\",\"createBy\":\"\",\"createTime\":1681611063000,\"updateBy\":\"\",\"arrivalTime\":1681747200000,\"startingTime\":1681747200000,\"trainNumber\":\"D9566\"}', NULL, 1, 'Cannot invoke \"com.ruoyi.system.domain.SysTrain.getRemainingTickets()\" because \"sysTrain\" is null', '2023-04-16 10:54:35');
INSERT INTO `sys_oper_log` VALUES (6, '购票', 1, 'com.ruoyi.system.controller.SysBuyController.add()', 'POST', 1, 'admin', NULL, '/system/buy', '127.0.0.1', '内网IP', '{\"trainId\":1,\"startingStation\":\"北京\",\"ticketPrice\":999,\"platformNumber\":2,\"updateTime\":1681613009000,\"params\":{},\"arrivalStation\":\"南京\",\"seat\":\"0\",\"createBy\":\"29689942\",\"createTime\":1681613696464,\"updateBy\":\"\",\"arrivalTime\":1681747200000,\"startingTime\":1681747200000,\"trainNumber\":\"D9566\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-16 10:54:56');
INSERT INTO `sys_oper_log` VALUES (7, '购票', 1, 'com.ruoyi.system.controller.SysBuyController.add()', 'POST', 1, 'zhangsan', NULL, '/system/buy', '127.0.0.1', '内网IP', '{\"trainId\":2,\"startingStation\":\"南京\",\"ticketPrice\":365,\"platformNumber\":6,\"params\":{},\"arrivalStation\":\"上海\",\"seat\":\"1\",\"createBy\":\"614726564\",\"createTime\":1681613721888,\"updateBy\":\"\",\"arrivalTime\":1681747200000,\"startingTime\":1681747200000,\"trainNumber\":\"D6521\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-16 10:55:21');
INSERT INTO `sys_oper_log` VALUES (8, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"root\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15612124455\",\"admin\":false,\"loginDate\":1681613910000,\"delFlag\":\"0\",\"idNumber\":\"123\",\"password\":\"\",\"balance\":999996,\"updateBy\":\"admin\",\"postIds\":[],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"admin\",\"sex\":\"0\",\"deptId\":104,\"avatar\":\"\",\"dept\":{\"deptName\":\"1#102\",\"leader\":\"若依\",\"deptId\":104,\"orderNum\":\"2\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":29689942,\"createBy\":\"\",\"roleIds\":[100],\"createTime\":1677380087000,\"position\":\"管理员\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-16 10:58:51');
INSERT INTO `sys_oper_log` VALUES (9, '购票', 1, 'com.ruoyi.system.controller.SysBuyController.add()', 'POST', 1, 'admin', NULL, '/system/buy', '127.0.0.1', '内网IP', '{\"trainId\":1,\"startingStation\":\"北京\",\"ticketPrice\":999,\"platformNumber\":2,\"updateTime\":1681613696000,\"params\":{},\"arrivalStation\":\"南京\",\"seat\":\"0\",\"createBy\":\"29689942\",\"createTime\":1681613964397,\"updateBy\":\"\",\"arrivalTime\":1681747200000,\"startingTime\":1681747200000,\"trainNumber\":\"D9566\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-16 10:59:24');
INSERT INTO `sys_oper_log` VALUES (10, '购票', 1, 'com.ruoyi.system.controller.SysBuyController.add()', 'POST', 1, 'admin', NULL, '/system/buy', '127.0.0.1', '内网IP', '{\"trainId\":1,\"startingStation\":\"北京\",\"ticketPrice\":999,\"platformNumber\":2,\"updateTime\":1681613964000,\"params\":{},\"arrivalStation\":\"南京\",\"seat\":\"0\",\"createBy\":\"29689942\",\"createTime\":1681613966820,\"updateBy\":\"\",\"arrivalTime\":1681747200000,\"startingTime\":1681747200000,\"trainNumber\":\"D9566\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-16 10:59:26');
INSERT INTO `sys_oper_log` VALUES (11, '购票', 1, 'com.ruoyi.system.controller.SysBuyController.add()', 'POST', 1, 'admin', NULL, '/system/buy', '127.0.0.1', '内网IP', '{\"trainId\":1,\"startingStation\":\"北京\",\"ticketPrice\":999,\"platformNumber\":2,\"updateTime\":1681613967000,\"params\":{},\"arrivalStation\":\"南京\",\"seat\":\"0\",\"createBy\":\"29689942\",\"createTime\":1681613967971,\"updateBy\":\"\",\"arrivalTime\":1681747200000,\"startingTime\":1681747200000,\"trainNumber\":\"D9566\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-16 10:59:28');
INSERT INTO `sys_oper_log` VALUES (12, '购票', 1, 'com.ruoyi.system.controller.SysBuyController.add()', 'POST', 1, 'admin', NULL, '/system/buy', '127.0.0.1', '内网IP', '{\"trainId\":2,\"startingStation\":\"南京\",\"ticketPrice\":365,\"platformNumber\":6,\"updateTime\":1681613722000,\"params\":{},\"arrivalStation\":\"上海\",\"seat\":\"1\",\"createBy\":\"29689942\",\"createTime\":1681613992741,\"updateBy\":\"\",\"arrivalTime\":1681747200000,\"startingTime\":1681747200000,\"trainNumber\":\"D6521\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-16 10:59:52');
INSERT INTO `sys_oper_log` VALUES (13, '购票', 1, 'com.ruoyi.system.controller.SysBuyController.add()', 'POST', 1, 'admin', NULL, '/system/buy', '127.0.0.1', '内网IP', '{\"trainId\":2,\"startingStation\":\"南京\",\"ticketPrice\":365,\"platformNumber\":6,\"updateTime\":1681613993000,\"params\":{},\"arrivalStation\":\"上海\",\"seat\":\"1\",\"createBy\":\"29689942\",\"createTime\":1681613993273,\"updateBy\":\"\",\"arrivalTime\":1681747200000,\"startingTime\":1681747200000,\"trainNumber\":\"D6521\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-16 10:59:53');
INSERT INTO `sys_oper_log` VALUES (14, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"root\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15612124455\",\"admin\":false,\"loginDate\":1681614125000,\"delFlag\":\"0\",\"idNumber\":\"123\",\"password\":\"\",\"balance\":666269,\"updateBy\":\"admin\",\"postIds\":[],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"admin\",\"sex\":\"0\",\"deptId\":104,\"avatar\":\"\",\"dept\":{\"deptName\":\"1#102\",\"leader\":\"若依\",\"deptId\":104,\"orderNum\":\"2\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":29689942,\"createBy\":\"\",\"roleIds\":[100],\"createTime\":1677380087000,\"position\":\"管理员\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-16 11:02:18');
INSERT INTO `sys_oper_log` VALUES (15, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"0\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"root\",\"roleName\":\"管理员\",\"status\":\"0\"}],\"phonenumber\":\"15612124455\",\"admin\":false,\"loginDate\":1681614157000,\"delFlag\":\"0\",\"idNumber\":\"123\",\"password\":\"\",\"balance\":9999966,\"updateBy\":\"admin\",\"postIds\":[],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"admin\",\"sex\":\"0\",\"deptId\":104,\"avatar\":\"\",\"dept\":{\"deptName\":\"1#102\",\"leader\":\"若依\",\"deptId\":104,\"orderNum\":\"2\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":29689942,\"createBy\":\"\",\"roleIds\":[100],\"createTime\":1677380087000,\"position\":\"管理员\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-16 11:03:00');
INSERT INTO `sys_oper_log` VALUES (16, '购票', 1, 'com.ruoyi.system.controller.SysBuyController.add()', 'POST', 1, 'admin', NULL, '/system/buy', '127.0.0.1', '内网IP', '{\"trainId\":1,\"startingStation\":\"北京\",\"ticketPrice\":999,\"platformNumber\":2,\"updateTime\":1681613968000,\"params\":{},\"arrivalStation\":\"南京\",\"seat\":\"0\",\"createBy\":\"29689942\",\"createTime\":1681614229486,\"updateBy\":\"\",\"arrivalTime\":1681747200000,\"startingTime\":1681747200000,\"trainNumber\":\"D9566\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-16 11:03:49');
INSERT INTO `sys_oper_log` VALUES (17, '购票', 1, 'com.ruoyi.system.controller.SysBuyController.add()', 'POST', 1, 'admin', NULL, '/system/buy', '127.0.0.1', '内网IP', '{\"trainId\":1,\"startingStation\":\"北京\",\"ticketPrice\":999,\"platformNumber\":2,\"updateTime\":1681614229000,\"params\":{},\"arrivalStation\":\"南京\",\"seat\":\"0\",\"createBy\":\"29689942\",\"createTime\":1681614231710,\"updateBy\":\"\",\"arrivalTime\":1681747200000,\"startingTime\":1681747200000,\"trainNumber\":\"D9566\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-04-16 11:03:51');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2022-03-26 21:54:58', 'ry', '2022-03-27 12:59:52', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2022-03-26 21:54:58', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2022-03-26 21:54:58', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '1', '1', 'admin', '2022-03-26 21:54:58', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '用户', 'common', 2, '2', 0, 0, '0', '0', 'admin', '2022-03-26 21:54:58', 'testAdmin', '2023-04-16 10:39:22', '普通角色');
INSERT INTO `sys_role` VALUES (100, '管理员', 'root', 0, '1', 1, 1, '0', '0', 'admin', '2023-02-24 20:11:28', 'testAdmin', '2023-04-16 10:39:14', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 2012);
INSERT INTO `sys_role_menu` VALUES (2, 2018);
INSERT INTO `sys_role_menu` VALUES (100, 1);
INSERT INTO `sys_role_menu` VALUES (100, 100);
INSERT INTO `sys_role_menu` VALUES (100, 101);
INSERT INTO `sys_role_menu` VALUES (100, 107);
INSERT INTO `sys_role_menu` VALUES (100, 108);
INSERT INTO `sys_role_menu` VALUES (100, 500);
INSERT INTO `sys_role_menu` VALUES (100, 501);
INSERT INTO `sys_role_menu` VALUES (100, 1001);
INSERT INTO `sys_role_menu` VALUES (100, 1002);
INSERT INTO `sys_role_menu` VALUES (100, 1003);
INSERT INTO `sys_role_menu` VALUES (100, 1004);
INSERT INTO `sys_role_menu` VALUES (100, 1005);
INSERT INTO `sys_role_menu` VALUES (100, 1006);
INSERT INTO `sys_role_menu` VALUES (100, 1007);
INSERT INTO `sys_role_menu` VALUES (100, 1008);
INSERT INTO `sys_role_menu` VALUES (100, 1009);
INSERT INTO `sys_role_menu` VALUES (100, 1010);
INSERT INTO `sys_role_menu` VALUES (100, 1011);
INSERT INTO `sys_role_menu` VALUES (100, 1012);
INSERT INTO `sys_role_menu` VALUES (100, 1036);
INSERT INTO `sys_role_menu` VALUES (100, 1037);
INSERT INTO `sys_role_menu` VALUES (100, 1038);
INSERT INTO `sys_role_menu` VALUES (100, 1039);
INSERT INTO `sys_role_menu` VALUES (100, 1040);
INSERT INTO `sys_role_menu` VALUES (100, 1041);
INSERT INTO `sys_role_menu` VALUES (100, 1042);
INSERT INTO `sys_role_menu` VALUES (100, 1043);
INSERT INTO `sys_role_menu` VALUES (100, 1044);
INSERT INTO `sys_role_menu` VALUES (100, 1045);
INSERT INTO `sys_role_menu` VALUES (100, 2006);
INSERT INTO `sys_role_menu` VALUES (100, 2007);
INSERT INTO `sys_role_menu` VALUES (100, 2008);
INSERT INTO `sys_role_menu` VALUES (100, 2009);
INSERT INTO `sys_role_menu` VALUES (100, 2010);
INSERT INTO `sys_role_menu` VALUES (100, 2011);
INSERT INTO `sys_role_menu` VALUES (100, 2012);
INSERT INTO `sys_role_menu` VALUES (100, 2013);
INSERT INTO `sys_role_menu` VALUES (100, 2014);
INSERT INTO `sys_role_menu` VALUES (100, 2015);
INSERT INTO `sys_role_menu` VALUES (100, 2016);
INSERT INTO `sys_role_menu` VALUES (100, 2017);
INSERT INTO `sys_role_menu` VALUES (100, 2018);

-- ----------------------------
-- Table structure for sys_train
-- ----------------------------
DROP TABLE IF EXISTS `sys_train`;
CREATE TABLE `sys_train`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `train_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '列车号',
  `starting_station` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '始发站',
  `arrival_station` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '到达站',
  `starting_time` datetime NOT NULL COMMENT '始发时间',
  `arrival_time` datetime NOT NULL COMMENT '到达时间',
  `platform_number` int NOT NULL COMMENT '站台号',
  `seat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '座位',
  `ticket_price` decimal(10, 2) NOT NULL COMMENT '票价',
  `remaining_tickets` int NOT NULL COMMENT '余票数',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_train
-- ----------------------------
INSERT INTO `sys_train` VALUES (1, 'D9566', '北京', '南京', '2023-04-18 00:00:00', '2023-04-18 00:00:00', 2, '0', 999.00, 6, '', '2023-04-16 10:11:03', '', '2023-04-16 11:03:52', NULL);
INSERT INTO `sys_train` VALUES (2, 'D6521', '南京', '上海', '2023-04-18 00:00:00', '2023-04-18 00:00:00', 6, '1', 365.00, 47, '', '2023-04-16 10:11:44', '', '2023-04-16 10:59:53', NULL);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_number` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `school_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `balance` decimal(10, 2) NULL DEFAULT 999999.00 COMMENT '余额',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7771360712412716906 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, '张三', NULL, NULL, NULL, 'testAdmin', 'test', '00', 'ry@163.com', '15888888888', '0', '/profile/avatar/2022/03/27/blob_20220327111104A001.jpeg', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '2', '127.0.0.1', '2023-04-16 10:34:56', 'admin', '2022-03-26 21:54:58', '', '2023-04-16 10:34:56', '管理员', 9992007.00);
INSERT INTO `sys_user` VALUES (2, 105, NULL, NULL, NULL, NULL, 'ry', '测试', '00', 'ry@qq.com', '15666666666', '0', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '2', '127.0.0.1', '2022-03-27 12:59:10', 'admin', '2022-03-26 21:54:58', 'admin', '2022-03-27 12:59:09', '测试员', 9999999.00);
INSERT INTO `sys_user` VALUES (45345, 103, NULL, NULL, NULL, NULL, 'sss', '姓名', '00', '', '', '0', '', '$2a$10$CVZXejlfWsWndf9Ovx6jwOZAeI8AbItSQqZgUEb6T7SBKM.TsWf3G', '0', '2', '', NULL, 'testAdmin', '2023-03-09 17:42:30', '', NULL, NULL, 9999999.00);
INSERT INTO `sys_user` VALUES (29689942, 104, '管理员', '123', '北京大学', '管理员', 'admin', 'admin', '00', '', '15612124455', '0', '', '$2a$10$DmZ41hMu6v08kmvu9PXwIe.3tLfBrWHlFYvDC9anMOphJOHSqudeC', '0', '0', '127.0.0.1', '2023-04-16 11:39:15', '', '2023-02-26 10:54:47', 'admin', '2023-04-16 11:39:14', NULL, 9997968.00);
INSERT INTO `sys_user` VALUES (475219502, NULL, 'user', '11', NULL, NULL, 'user', 'user', '00', '', '11', '0', '', '$2a$10$GDmgeeBWPxCiSUvVPGGmEeNvIEzr47GiTqMmblgk5OzrlQG0ALRpK', '0', '0', '127.0.0.1', '2023-04-16 11:36:13', '', '2023-04-16 10:44:08', '', '2023-04-16 11:36:13', NULL, 999999.00);
INSERT INTO `sys_user` VALUES (614726564, 103, NULL, '5465464645645', NULL, '1', 'zhangsan', '张三', '00', '1@qq.com', '13666666666', '0', '', '$2a$10$GCxRsfIyD9WUQvz8tGc64uaU0sUNF76DAil5TRyqHjQOC2etRNQAq', '0', '0', '127.0.0.1', '2023-04-16 10:55:08', 'admin', '2023-03-10 09:55:05', '', '2023-04-16 10:55:07', NULL, 9998635.00);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (103, 100);
INSERT INTO `sys_user_role` VALUES (20334999, 100);
INSERT INTO `sys_user_role` VALUES (29689942, 100);
INSERT INTO `sys_user_role` VALUES (64688458, 2);
INSERT INTO `sys_user_role` VALUES (130364777, 100);
INSERT INTO `sys_user_role` VALUES (156759057, 100);
INSERT INTO `sys_user_role` VALUES (253852885, 100);
INSERT INTO `sys_user_role` VALUES (269259970, 2);
INSERT INTO `sys_user_role` VALUES (336045720, 2);
INSERT INTO `sys_user_role` VALUES (371776747, 2);
INSERT INTO `sys_user_role` VALUES (404525397, 100);
INSERT INTO `sys_user_role` VALUES (469983125, 2);
INSERT INTO `sys_user_role` VALUES (475219502, 2);
INSERT INTO `sys_user_role` VALUES (568217520, 2);
INSERT INTO `sys_user_role` VALUES (568791764, 100);
INSERT INTO `sys_user_role` VALUES (575706621, 2);
INSERT INTO `sys_user_role` VALUES (614726564, 2);
INSERT INTO `sys_user_role` VALUES (652979409, 2);
INSERT INTO `sys_user_role` VALUES (742472124, 100);
INSERT INTO `sys_user_role` VALUES (759354783, 100);
INSERT INTO `sys_user_role` VALUES (813293830, 100);
INSERT INTO `sys_user_role` VALUES (815298739, 100);
INSERT INTO `sys_user_role` VALUES (921987403, 100);
INSERT INTO `sys_user_role` VALUES (950370677, 2);

SET FOREIGN_KEY_CHECKS = 1;
