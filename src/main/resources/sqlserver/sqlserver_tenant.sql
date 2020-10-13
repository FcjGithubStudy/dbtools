-- ----------------------------
-- Table structure for AUTH_MENU
-- ----------------------------
CREATE TABLE "AUTH_MENU"
(
    "ID"           NVARCHAR(32) NOT NULL,
    "PARENT_ID"    NVARCHAR(32)   DEFAULT NULL,
    "MENU_NAME"    NVARCHAR(128)  DEFAULT NULL,
    "PATH"         NVARCHAR(128)  DEFAULT NULL,
    "TYPE"         INT            DEFAULT NULL,
    "ICON"         NVARCHAR(128)  DEFAULT NULL,
    "BH"           NVARCHAR(1024) DEFAULT NULL,
    "DETAIL"       NVARCHAR(1024) DEFAULT NULL,
    "DESCRIPTION"  NVARCHAR(1024) DEFAULT NULL,
    "APP"          NVARCHAR(32)   DEFAULT NULL,
    "PRIORITY"     INT            DEFAULT NULL,
    "DISPLAY_TYPE" INT            DEFAULT NULL,
    "IS_SHOW"      INT            DEFAULT NULL,
    "CREATOR"      NVARCHAR(32)   DEFAULT NULL,
    "CREATE_TIME"  DATE           DEFAULT NULL,
    "EDITOR"       NVARCHAR(32)   DEFAULT NULL,
    "EDIT_TIME"    DATE           DEFAULT NULL,
    PRIMARY KEY ("ID")
);


-- ----------------------------
-- Records of AUTH_MENU
-- ----------------------------
INSERT INTO "AUTH_MENU" VALUES ('10000', NULL, '系统', '/system', 0, NULL, '1000', NULL, '开启后角色可访问浏览系统模块', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('100000', NULL, '坐席工作台-登录访问', '/workbench', 0, NULL, '1001', NULL, '开启后角色可登录访问坐席工作台', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('101000', '100000', '我的工单', '/workorder', 0, NULL, '1001.1000', NULL, '开启后角色可访问浏览我的工单模块', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('101100', '101000', '已完成工单', 'finished', 0, NULL, '1001.1000.1000L', NULL, NULL, 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('101200', '101000', '受理中工单', 'processing', 0, NULL, '1001.1000.1001L', NULL, NULL, 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('101300', '101000', '已回复工单', 'replied', 0, NULL, '1001.1000.1002L', NULL, NULL, 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('101400', '101000', '未受理工单', 'processed', 0, NULL, '1001.1000.1003L', NULL, NULL, 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('101800', '101000', '工单模板列表', 'listTemplate', 0, NULL, '1001.1000.1007L', NULL, NULL, 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('11000', '10000', '操作记录', '/system/operation_log', 0, NULL, '1000.1000', NULL, '开启后角色可访问浏览操作记录页面', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('110000', '100000', '工作报表', '/workreport', 0, NULL, '1001.1001L', NULL, '开启后角色可访问浏览工作报表模块', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('11001', '11000', '查询操作记录', '/system/operation_log/getPaged_get', 1, NULL, '1000.1000.1000L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('111000', '110000', '自定义报表', '/workreport/autoreport', 0, NULL, '1001.1001.1000L', NULL, '开启后角色可访问浏览自定义报表页面', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('111100', '111000', '报表方案管理', NULL, 0, NULL, '1001.1001.1000.1000', NULL, '开启后角色可访问浏览报表方案管理页面', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('111110', '111100', '删除报表方案', NULL, 0, NULL, '1001.1001.1000.1000.1000L', NULL, '设定角色可删除已有报表方案', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('111120', '111100', '编辑报表方案', NULL, 0, NULL, '1001.1001.1000.1000.1001L', NULL, '设定角色可对已有报表方案进行编辑', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('111130', '111100', '新建报表方案', NULL, 0, NULL, '1001.1001.1000.1000.1002L', NULL, '设定角色可新建自定义报表方案', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('112000', '110000', '坐席报表', '/workreport/seatreport', 0, NULL, '1001.1001.1001L', NULL, '开启后角色可访问浏览坐席报表页面', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('112100', '112000', '坐席报表查询数据范围', NULL, 2, NULL, '1001.1001.1001.1000L', '[{\"name\":\"仅可查看自己\",\"value\":\"jkckzj\"},{\"name\":\"可查看所在坐席组\",\"value\":\"ckszzxz\"},{\"name\":\"可查看所属技能组\",\"value\":\"ckssjnz\"},{\"name\":\"可查看所有\",\"value\":\"ALL\"},{\"name\":\"自定义跨组查看\",\"value\":\"zdykz\"}]', '设定角色可查询坐席报表的数据范围', 'aicc_wb', NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('113000', '110000', '会话报表', '/workreport/chatreport', 0, NULL, '1001.1001.1002L', NULL, '开启后角色可访问浏览会话报表页面', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('113100', '113000', '技能组会话量', NULL, 0, NULL, '1001.1001.1002.1000', NULL, '开启后角色可访问浏览技能组会话量标签页', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('113110', '113100', '查询技能组数据范围', NULL, 2, NULL, '1001.1001.1002.1000.1000L', NULL, '设定角色可查询的技能组范围', 'aicc_wb', NULL, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('113200', '113000', '会话量趋势', NULL, 0, NULL, '1001.1001.1002.1001', NULL, '开启后角色可访问浏览会话量趋势标签页', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('113210', '113200', '会话量数据查询范围', NULL, 2, NULL, '1001.1001.1002.1001.1000L', '[{\"name\":\"仅可查看自己\",\"value\":\"jkckzj\"},{\"name\":\"可查看所在坐席组\",\"value\":\"ckszzxz\"},{\"name\":\"可查看所属技能组\",\"value\":\"ckssjnz\"},{\"name\":\"可查看所有\",\"value\":\"ALL\"},{\"name\":\"自定义跨组查看\",\"value\":\"zdykz\"}]', '设定角色可查询会话量趋势的数据范围\r\n\r\n', 'aicc_wb', NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('114000', '110000', '数据概况', '/workreport/datareport', 0, NULL, '1001.1001.1003L', NULL, '开启后角色可访问浏览数据概况页面', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('114100', '114000', '数据概况查询范围', NULL, 2, NULL, '1001.1001.1003.1000L', '[{\"name\":\"仅可查看自己\",\"value\":\"jkckzj\"},{\"name\":\"可查看所在坐席组\",\"value\":\"ckszzxz\"},{\"name\":\"可查看所属技能组\",\"value\":\"ckssjnz\"},{\"name\":\"可查看所有\",\"value\":\"ALL\"},{\"name\":\"自定义跨组查看\",\"value\":\"zdykz\"}]', '\r\n设定角色可查询的数据概况范围', 'aicc_wb', NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('12000', '10000', '自定义字段', '/system/custom_field', 0, NULL, '1000.1001', NULL, '开启后角色可访问浏览自定义字段页面\r\n\r\n', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('120000', '100000', '会话记录', '/chatlog', 0, NULL, '1001.1002', NULL, '开启后角色可访问浏览会话记录模块', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('12100', '12000', '新建/编辑字段', NULL, 2, NULL, '1000.1001.1000', NULL, '\r\n开启后角色可创建新的字段并对已有字段进行编辑、删除。', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('121000', '120000', '历史会话记录查询范围', '/chatlog/ChatHistory', 2, NULL, '1001.1002.1000', '[{\"name\":\"仅可查看自己\",\"value\":\"jkckzj\"},{\"name\":\"可查看所在坐席组\",\"value\":\"ckszzxz\"},{\"name\":\"可查看所属技能组\",\"value\":\"ckssjnz\"},{\"name\":\"可查看所有\",\"value\":\"ALL\"},{\"name\":\"自定义跨组查看\",\"value\":\"zdykz\"}]', '设定角色可查询的会话记录范围', 'aicc_wb', NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('12101', '12100', '新增字段', '/system/custom_field/insert_post', 1, NULL, '1000.1001.1000.1000L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('12102', '12100', '删除字段', '/system/custom_field/delete_delete', 1, NULL, '1000.1001.1000.1001L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('12103', '12100', '编辑字段', '/system/custom_field/update_put', 1, NULL, '1000.1001.1000.1002L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('12104', '12000', '查询字段', '/system/custom_field/getPaged_get', 1, NULL, '1000.1001.1000.1003L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('122000', '121000', '查看会话记录设置', '/slog/list_get', 1, NULL, '1001.1002.1000.1001L', NULL, NULL, 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('123000', '121000', '导出会话记录设置', '/slog/export_get', 1, NULL, '1001.1002.1000.1002L', NULL, '开启后角色可导出会话记录', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('124000', '121000', '查看会话详情设置', '/chathistory/list_get', 1, NULL, '1001.1002.1000.1003L', NULL, '', 'aicc_wb', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('125000', '121000', '导出会话详情设置', '/chathistory/export_get', 1, NULL, '1001.1002.1000.1004L', NULL, NULL, 'aicc_wb', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('13000', '10000', '公告管理', NULL, 0, NULL, '1000.1002', NULL, '开启后角色可访问浏览公告管理页面', 'aicc_bp', NULL, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('130000', '100000', '个人设置', '/setting', 0, NULL, '1001.1003L', NULL, '\r\n开启后角色可访问浏览个人设置模块', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('13100', '13000', '新建/编辑公告', NULL, 2, NULL, '1000.1002.1000L', NULL, '开启后角色可创建新的公告并对已有公告进行编辑、发布、删除', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('14000', '10000', '订单管理', NULL, 0, NULL, '1000.1003L', NULL, '开启后角色可访问浏览订单管理页面', 'aicc_bp', NULL, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('140000', '100000', '当前会话', '/chat', 0, NULL, '1001.1004', NULL, '\r\n开启后角色可访问浏览当前会话模块', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('141000', '140000', '会话转接范围', NULL, 2, NULL, '1001.1004.1000L', '[{\"name\":\"所有技能组\",\"value\":\"ALL\"},{\"name\":\"自定义技能组\",\"value\":\"zdykz\"}]', '设定角色可转接会话的技能组范围', 'aicc_wb', NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('15000', '10000', '企业账户信息', NULL, 0, NULL, '1000.1004', NULL, '\r\n开启后角色可访问浏览企业账户信息页面', 'aicc_bp', NULL, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('150000', '100000', '服务评价', '/evaluation', 0, NULL, '1001.1005L', NULL, '\r\n开启后角色可访问浏览服务评价模块', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('15100', '15000', '企业账户信息修改', NULL, 2, NULL, '1000.1004.1000L', NULL, '开启后角色可修改企业账户信息预留的联系人、联系电话、联系邮箱', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('16000', '10000', '路由策略管理', '/system/strategy', 0, NULL, '1000.1005', NULL, '开启后角色可访问路由策略管理页面', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('160000', '100000', '访客留言', '/leaveword', 0, NULL, '1001.1006L', NULL, '\r\n开启后角色可访问浏览访客留言模块', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('16100', '16000', '查看渠道信息', '/acd/getChannels_get', 1, NULL, '1000.1005.1000L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('16200', '16000', '查看技能组列表', '/skill/listSkillGroup_get', 1, NULL, '1000.1005.1001L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('16300', '16000', '编辑策略', '/acd/editAcd_post', 1, NULL, '1000.1005.1002L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('16400', '16000', '查看渠道列表', '/acd/listAcds_get', 1, NULL, '1000.1005.1003L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('16500', '16000', '删除策略', '/acd/deleteAcd_delete', 1, NULL, '1000.1005.1004L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('16600', '16000', '查看策略', '/acd/getAcdById_get', 1, NULL, '1000.1005.1005L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('16700', '16000', '校验策略名称', '/acd/getAcdByNameAndId_get', 1, NULL, '1000.1005.1006L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('170000', '100000', '任务概览', '/overview', 0, NULL, '1001.1007L', NULL, '\r\n开启后角色可访问浏览任务概览模块', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('17000', '10000', '路由策略应用', '/system/strategyApply', 0, NULL, '1000.1006', NULL, '开启后角色可访问路由策略应用页面', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('17100', '17000', '获取平台策略列表', '/acd/platform/listPlatformAcds_get', 1, NULL, '1000.1006.1000L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('17200', '17000', '根据id获取平台策略信息', '/acd/platform/getPlatformAcdById_get', 1, NULL, '1000.1006.1001L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('17300', '17000', '保存平台策略', '/acd/platform/savePlatformAcd_post', 1, NULL, '1000.1006.1002L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('17400', '17000', '根据id获取平台策略信息', '/acd/platform/deletePlatformAcdById_delete', 1, NULL, '1000.1006.1003L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('17500', '17000', '获取平台信息', '/acd/platform/getPlatforms_get', 1, NULL, '1000.1006.1004L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('17600', '17000', '根据channelids获取策略', '/acd/platform/getAcdByChannelIds_post', 1, NULL, '1000.1006.1005L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('20000', NULL, '用户', '/user', 0, NULL, '1002', NULL, '开启后角色可访问浏览用户模块', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('21000', '20000', '技能组管理', '/user/sgmgr', 0, NULL, '1002.1000', NULL, '开启后角色可访问浏览技能组管理页面', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('21100', '21000', '技能组管理操作', '/user/sgmgr/operate', 2, NULL, '1002.1000.1000', NULL, '开启后角色可创建技能组、删除已有技能组、编辑已有技能组（成员、业务）', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('21101', '21000', '查看技能组', '/skill/listSkillGroup_get', 1, NULL, '1002.1000.1004L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('21102', '21100', '新增技能组', '/skill/addSkillGroup_post', 1, NULL, '1002.1000.1000.1001L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('21103', '21100', '删除技能组', '/skill/deleteSkillGroup_delete', 1, NULL, '1002.1000.1000.1002L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('21104', '21000', '查看坐席组', '/ug/getUserGroupTree_get', 1, NULL, '1002.1000.1001L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('21105', '21000', '查看技能组成员', '/skill/listSkillGroupUser_get', 1, NULL, '1002.1000.1002L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('21106', '21100', '添加技能组成员', '/skill/addSkillGroupMem_post', 1, NULL, '1002.1000.1000.1003L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('21107', '21100', '删除技能组成员', '/skill/deleteSkillGroupMember_delete', 1, NULL, '1002.1000.1000.1004L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('21108', '21000', '查看技能组设置', '/skill/getSkillGroupSetting_get', 1, NULL, '1002.1000.1003L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('21109', '21100', '添加技能组设置', '/skill/addSkillGroupSetting_post', 1, NULL, '1002.1000.1000.1005L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('22000', '20000', '角色权限管理', '/user/rolemgr', 0, NULL, '1002.1001', NULL, '开启后角色可访问浏览角色权限管理页面', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('22100', '22000', '角色权限管理操作', '/user/rolemgr/operate', 2, NULL, '1002.1001.1000', NULL, '开启后角色可创建新角色、编辑已有角色权限、删除已有角色', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('22101', '22100', '新建角色', '/role/editRole_post', 1, NULL, '1002.1001.1000.1000L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('22102', '22100', '删除角色', '/role/deleteRole_delete', 1, NULL, '1002.1001.1000.1001L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('22103', '22100', '修改角色', '/role/editRole_post', 1, NULL, '1002.1001.1000.1002L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('22104', '22000', '查看角色', '/role/listRoles_get', 1, NULL, '1002.1001.1001L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('22105', '22100', '查看角色类型列表', '/role/listRoleType_get', 1, NULL, '1002.1001.1000.1003L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('22106', '22100', '查看坐席组', '/ug/getUserGroupTree_get', 1, NULL, '1002.1001.1000.1004L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('22107', '22100', '查看技能组', '/skill/listSkillGroup_get', 1, NULL, '1002.1001.1000.1005L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('22108', '22100', '查看具体角色', '/role/getRole_get', 1, NULL, '1002.1001.1000.1006L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('22109', '22100', '修改角色时踢出用户', '/role/kickUser_get', 1, NULL, '1002.1001.1000.1006L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23000', '20000', '坐席管理', '/user/wbmgr', 0, NULL, '1002.1002', NULL, '\r\n开启后角色可访问浏览坐席管理页面', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23100', '23000', '坐席账号管理范围', '/user/wbmgr/account_range', 2, NULL, '1002.1002.1000L', '[{\"name\":\"全部坐席\",\"value\":\"all\"},{\"name\":\"所负责组\",\"value\":\"fzz\"}]', '\r\n设定可进行管理操作的坐席账号范围', 'aicc_bp', NULL, 1, 0, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23200', '23000', '坐席账号管理', '/user/wbmgr/account', 2, NULL, '1002.1002.1001', NULL, '开启后角色可创建坐席账号、删除已有坐席账号并对已有坐席账号进行编辑调整。', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23201', '23200', '新建坐席账号', '/user/addUser_post', 1, NULL, '1002.1002.1001.1000L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23202', '23200', '删除坐席账号', '/user/deleteUser_delete', 1, NULL, '1002.1002.1001.1001L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23203', '23200', '批量删除坐席账号', '/user/batchDeleteUser_delete', 1, NULL, '1002.1002.1001.1002L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23204', '23200', '批量修改角色', '/user/batchUpdateUserRole_put', 1, NULL, '1002.1002.1001.1003L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23205', '23200', '批量修改分组', '/ug/batchUpdateUserGroup_put', 1, NULL, '1002.1002.1001.1004L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23206', '23200', '导入坐席账号', NULL, 1, NULL, '1002.1002.1001.1005L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23207', '23200', '导出坐席账号', NULL, 1, NULL, '1002.1002.1001.1006L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23208', '23200', '修改坐席账号', '/user/addUser_post', 1, NULL, '1002.1002.1001.1007L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23209', '23000', '查看坐席账号', '/user/listUser_get', 1, NULL, '1002.1002.1002L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23210', '23000', '查看角色', '/role/listRoles_get', 1, NULL, '1002.1002.1003L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23211', '23200', '查看坐席组', '/ug/getUserGroupTree_get', 1, NULL, '1002.1002.1001.1008L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23212', '23200', '冻结/解冻坐席账号', '/user/lockUser_put', 1, NULL, '1002.1002.1001.1009L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23213', '23200', '查看具体坐席账号', '/user/getUser_get', 1, NULL, '1002.1002.1001.1010L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23214', '23200', '根据属性查找用户', '/user/getUserByProp_post', 1, NULL, '1002.1002.1001.1011L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23300', '23000', '坐席组管理', '/user/wbmgr/group', 2, NULL, '1002.1002.1004', NULL, '开启后角色可创建坐席组、编辑已有坐席组、调整坐席组层级、删除坐席组、移动坐席组，并可批量导入坐席组架构信息。', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23301', '23300', '新建坐席组', '/ug/addUserGroup_post', 1, NULL, '1002.1002.1004.1000L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23302', '23300', '编辑坐席组', '/ug/editUserGroup_put', 1, NULL, '1002.1002.1004.1001L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23303', '23300', '删除坐席组', '/ug/deleteUserGroup_delete', 1, NULL, '1002.1002.1004.1002L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23304', '23300', '导入坐席组', NULL, 1, NULL, '1002.1002.1004.1003L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23305', '23300', '导出坐席组', NULL, 1, NULL, '1002.1002.1004.1004L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23306', '23300', '查看坐席组', '/ug/getUserGroupTree_get', 1, NULL, '1002.1002.1004.1005L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('23307', '23300', '移动坐席组', '/ug/getUserGroupChildLevel_get', 1, NULL, '1002.1002.1004.1006L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('30000', NULL, '首页', '/index', 0, NULL, '1003L', NULL, '首页', 'aicc_bp', NULL, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('40000', NULL, '全媒体', '/channel', 0, NULL, '1004', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('41000', '40000', 'web', '/channel/web', 0, NULL, '1004.1000L', '', NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('42000', '40000', '微信', '/channel/weixin', 0, NULL, '1004.1001L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('43000', '40000', '微信小程序', '/channel/weixinapp', 0, NULL, '1004.1002L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('44000', '40000', '微博', '/channel/weibo', 0, NULL, '1004.1003L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('45000', '40000', 'APP', '/channel/app', 0, NULL, '1004.1004L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for AUTH_ROLE
-- ----------------------------
CREATE TABLE "AUTH_ROLE"
(
    "ID"          NVARCHAR(32) NOT NULL,
    "ROLE_NAME"   NVARCHAR(128)  DEFAULT NULL,
    "ROLE_TYPE"   INT            DEFAULT NULL,
    "DESCRIPTION" NVARCHAR(1024) DEFAULT NULL,
    "CREATOR"     NVARCHAR(32)   DEFAULT NULL,
    "CREATE_TIME" DATE           DEFAULT NULL,
    "EDITOR"      NVARCHAR(32)   DEFAULT NULL,
    "EDIT_TIME"   DATE           DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Records of AUTH_ROLE
-- ----------------------------
INSERT INTO "AUTH_ROLE" VALUES ('27e55a01b74342189b00000adminrole', '管理员', 1, NULL, '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000', NULL, '2020-09-30 18:25:10.000');

-- ----------------------------
-- Table structure for AUTH_ROLE_TYPE_DICT
-- ----------------------------
CREATE TABLE "AUTH_ROLE_TYPE_DICT"
(
    "ID"             NVARCHAR(32) NOT NULL,
    "ROLE_TYPE_NAME" NVARCHAR(128) DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Records of AUTH_ROLE_TYPE_DICT
-- ----------------------------
INSERT INTO "AUTH_ROLE_TYPE_DICT" VALUES ('1', '系统管理者');
INSERT INTO "AUTH_ROLE_TYPE_DICT" VALUES ('2', '坐席员工');

-- ----------------------------
-- Table structure for AUTH_ROLE_X_MENU
-- ----------------------------
CREATE TABLE "AUTH_ROLE_X_MENU"
(
    "ID"      NVARCHAR(32) NOT NULL,
    "ROLE_ID" NVARCHAR(32)   DEFAULT NULL,
    "MENU_ID" NVARCHAR(32)   DEFAULT NULL,
    "DETAIL"  NVARCHAR(4000) DEFAULT NULL,
    PRIMARY KEY ("ID")
);


-- ----------------------------
-- Table structure for AUTH_SKILL_GROUP
-- ----------------------------
CREATE TABLE "AUTH_SKILL_GROUP"
(
    "ID"          NVARCHAR(32) NOT NULL,
    "NAME"        NVARCHAR(32) DEFAULT NULL,
    "CREATOR"     NVARCHAR(32) DEFAULT NULL,
    "CREATE_TIME" DATE         DEFAULT NULL,
    "EDITOR"      NVARCHAR(32) DEFAULT NULL,
    "EDIT_TIME"   DATE         DEFAULT NULL,
    PRIMARY KEY ("ID")
);


-- ----------------------------
-- Records of AUTH_SKILL_GROUP
-- ----------------------------
INSERT INTO "AUTH_SKILL_GROUP" VALUES ('0015870307129860015100155d4c6010', '默认技能组', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');

-- ----------------------------
-- Table structure for AUTH_SKILL_GROUP_BIZ_ITEM
-- ----------------------------
CREATE TABLE "AUTH_SKILL_GROUP_BIZ_ITEM"
(
    "ID"                 NVARCHAR(32) NOT NULL,
    "LABEL"              NVARCHAR(64)  DEFAULT NULL,
    "NAME"               NVARCHAR(64)  DEFAULT NULL,
    "SKILL_GROUP_BIZ_ID" NVARCHAR(32)  DEFAULT NULL,
    "TYPE"               NVARCHAR(32)  DEFAULT NULL,
    "PLACEHOLDER"        NVARCHAR(255) DEFAULT NULL,
    "TIP"                NVARCHAR(255) DEFAULT NULL,
    "CUST_FIELD_TAG"     NVARCHAR(32)  DEFAULT NULL,
    "PRIORITY"           INT           DEFAULT NULL,
    "DEFAULT_VALUE"      NVARCHAR(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of AUTH_SKILL_GROUP_BIZ_ITEM
-- ----------------------------
INSERT INTO "AUTH_SKILL_GROUP_BIZ_ITEM" VALUES ('1', '客户接入策略', 'custAccess', '1', 'select', NULL, NULL, 'cust_access_strategy', 1, 'random');
INSERT INTO "AUTH_SKILL_GROUP_BIZ_ITEM" VALUES ('2', '问候语设置', 'welcomeMsg', '1', 'textarea', '', NULL, NULL, 2, '您好，请问有什么可以帮助您？');
INSERT INTO "AUTH_SKILL_GROUP_BIZ_ITEM" VALUES ('3', '列队等待话术', 'waitMsg', '1', 'textarea', NULL, '&%为通配符，由系统自动计算显示当前列队的用户数', NULL, 3, '您好，目前由于业务繁忙，请您耐心等待。');
INSERT INTO "AUTH_SKILL_GROUP_BIZ_ITEM" VALUES ('4', '无坐席在线话术', 'onLineMsg', '1', 'textarea', NULL, NULL, NULL, 4, '您好，您所咨询的业务目前无坐席在线，请您在坐席工作时间内联系咨询，或通过其他方式进行联系。');
INSERT INTO "AUTH_SKILL_GROUP_BIZ_ITEM" VALUES ('5', '客户属性', 'custAttr', '2', 'checkbox', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for AUTH_SKILL_GROUP_BIZ_TYPE
-- ----------------------------
CREATE TABLE "AUTH_SKILL_GROUP_BIZ_TYPE"
(
    "ID"   NVARCHAR(32) NOT NULL,
    "NAME" NVARCHAR(64) DEFAULT NULL,
    "TAG"  NVARCHAR(32) DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Records of AUTH_SKILL_GROUP_BIZ_TYPE
-- ----------------------------
INSERT INTO "AUTH_SKILL_GROUP_BIZ_TYPE" VALUES ('1', '客户接待(文本)', 'cs_txt');
INSERT INTO "AUTH_SKILL_GROUP_BIZ_TYPE" VALUES ('2', '客户外联', 'cs_outer');
INSERT INTO "AUTH_SKILL_GROUP_BIZ_TYPE" VALUES ('3', '服务质检', 'server');

-- ----------------------------
-- Table structure for AUTH_SKILL_GROUP_SETTING
-- ----------------------------
CREATE TABLE "AUTH_SKILL_GROUP_SETTING"
(
    "ID"             NVARCHAR(32) NOT NULL,
    "SKILL_GROUP_ID" NVARCHAR(32)  DEFAULT NULL,
    "BIZ_TYPE"       NVARCHAR(32)  DEFAULT NULL,
    "BIZ_KEY"        NVARCHAR(255) DEFAULT NULL,
    "BIZ_VALUE"      NVARCHAR(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of AUTH_SKILL_GROUP_SETTING
-- ----------------------------
INSERT INTO "AUTH_SKILL_GROUP_SETTING" VALUES ('00160111569810200000061505e3d580', '0015870307129860015100155d4c6010', 'cs_txt', 'custAccess', 'random');
INSERT INTO "AUTH_SKILL_GROUP_SETTING" VALUES ('00160111569815100001061505e3d580', '0015870307129860015100155d4c6010', 'cs_txt', 'welcomeMsg', '您好，请问有什么可以帮助您？');
INSERT INTO "AUTH_SKILL_GROUP_SETTING" VALUES ('00160111569815600002061505e3d580', '0015870307129860015100155d4c6010', 'cs_txt', 'waitMsg', '您好，目前由于业务繁忙，请您耐心等待。');
INSERT INTO "AUTH_SKILL_GROUP_SETTING" VALUES ('00160111569815900003061505e3d580', '0015870307129860015100155d4c6010', 'cs_txt', 'onLineMsg', '您好，您所咨询的业务目前无坐席在线，请您在坐席工作时间内联系咨询，或通过其他方式进行联系。');

-- ----------------------------
-- Table structure for AUTH_USER
-- ----------------------------
CREATE TABLE "AUTH_USER"
(
    "ID"            NVARCHAR(32) NOT NULL,
    "USER_NAME"     NVARCHAR(32)   DEFAULT NULL,
    "PASSWORD"      NVARCHAR(1024) DEFAULT NULL,
    "NICKNAME"      NVARCHAR(128)  DEFAULT NULL,
    "REAL_NAME"     NVARCHAR(128)  DEFAULT NULL,
    "MAX_RECEPTION" INT            DEFAULT NULL,
    "ID_NUM"        NVARCHAR(32)   DEFAULT NULL,
    "MOBILE"        NVARCHAR(32)   DEFAULT NULL,
    "EMAIL"         NVARCHAR(128)  DEFAULT NULL,
    "STATUS"        INT            DEFAULT 0,
    "CREATOR"       NVARCHAR(32)   DEFAULT NULL,
    "CREATE_TIME"   DATE           DEFAULT NULL,
    "EDITOR"        NVARCHAR(32)   DEFAULT NULL,
    "EDIT_TIME"     DATE           DEFAULT NULL,
    "WELCOME"       NVARCHAR(255)  DEFAULT NULL,
    "AVATAR"        NVARCHAR(128)  DEFAULT NULL,
    PRIMARY KEY ("ID")
);


-- ----------------------------
-- Records of AUTH_USER
-- ----------------------------
INSERT INTO "AUTH_USER" VALUES ('0015849442017540000000155d4c6010', 'INCE.SUPERVISOR', '$2a$10$sm8UkRcGM1v.7E/MHpdRYOBkCvMpJ0k6OTpea0PQ7TMfcs6dWfNsW', 'INCE.SUPERVISOR', 'INCE.SUPERVISOR', 3, 'INCE.SUPERVISOR', '', '', 0, '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000', NULL, NULL);
INSERT INTO "AUTH_USER" VALUES ('27e55a01b74342189b000000000admin', 'admin', '$2a$10$JseURQgQcZnvczype/AAfe5QwIuU7HRqZ3yVrPfUVNvTH6JO2KWOS', 'admin', 'admin', 3, 'admin', '', '', 0, '27e55a01b74342189b000000000admin', '2020-09-30 18:25:10.000', '27e55a01b74342189b000000000admin', '2020-09-30 18:25:10.000', NULL, NULL);

-- ----------------------------
-- Table structure for AUTH_USER_GROUP
-- ----------------------------
CREATE TABLE "AUTH_USER_GROUP"
(
    "ID"          NVARCHAR(32) NOT NULL,
    "NAME"        NVARCHAR(32) DEFAULT NULL,
    "PARENT_ID"   NVARCHAR(32) DEFAULT NULL,
    "BH"          NVARCHAR(32) DEFAULT NULL,
    "CREATOR"     NVARCHAR(32) DEFAULT NULL,
    "CREATE_TIME" DATE         DEFAULT NULL,
    "EDITOR"      NVARCHAR(32) DEFAULT NULL,
    "EDIT_TIME"   DATE         DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Records of AUTH_USER_GROUP
-- ----------------------------
INSERT INTO "AUTH_USER_GROUP" VALUES ('0015868314746520008200155d4c6010', '默认分组', NULL, '1000L', NULL, NULL, '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');

-- ----------------------------
-- Table structure for AUTH_USER_X_GROUP
-- ----------------------------
CREATE TABLE "AUTH_USER_X_GROUP"
(
    "ID"            NVARCHAR(32) NOT NULL,
    "USER_ID"       NVARCHAR(32) DEFAULT NULL,
    "USER_GROUP_ID" NVARCHAR(32) DEFAULT NULL,
    "IS_CHARGE"     INT          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of AUTH_USER_X_GROUP
-- ----------------------------
INSERT INTO "AUTH_USER_X_GROUP" VALUES ('0', '27e55a01b74342189b000000000admin', '0015868314746520008200155d4c6010', 1);

-- ----------------------------
-- Table structure for AUTH_USER_X_ROLE
-- ----------------------------
CREATE TABLE "AUTH_USER_X_ROLE"
(
    "ID"      NVARCHAR(32) NOT NULL,
    "USER_ID" NVARCHAR(32) DEFAULT NULL,
    "ROLE_ID" NVARCHAR(32) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of AUTH_USER_X_ROLE
-- ----------------------------
INSERT INTO "AUTH_USER_X_ROLE" VALUES ('00159590479316500001061505e3d580', '27e55a01b74342189b000000000admin', '27e55a01b74342189b00000adminrole');

-- ----------------------------
-- Table structure for AUTH_USER_X_SKILL_GROUP
-- ----------------------------
CREATE TABLE "AUTH_USER_X_SKILL_GROUP"
(
    "ID"             NVARCHAR(32) NOT NULL,
    "USER_ID"        NVARCHAR(32) DEFAULT NULL,
    "SKILL_GROUP_ID" NVARCHAR(32) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of AUTH_USER_X_SKILL_GROUP
-- ----------------------------
INSERT INTO "AUTH_USER_X_SKILL_GROUP" VALUES ('00159590479316500003061505e3d580', '27e55a01b74342189b000000000admin', '0015870307129860015100155d4c6010');

-- ----------------------------
-- Table structure for CHANNEL_PLATFORM
-- ----------------------------
CREATE TABLE "CHANNEL_PLATFORM"
(
    "PLATFORM_ID"   NVARCHAR(255) NOT NULL,
    "PLATFORM_NAME" NVARCHAR(255) DEFAULT NULL,
    PRIMARY KEY ("PLATFORM_ID")
);
-- ----------------------------
-- Records of channel_platform
-- ----------------------------
INSERT INTO "CHANNEL_PLATFORM" VALUES ('miniprogram', '小程序');
INSERT INTO "CHANNEL_PLATFORM" VALUES ('web', '网页');
INSERT INTO "CHANNEL_PLATFORM" VALUES ('weixin', '微信公众号');

-- ----------------------------
-- Table structure for CHANNEL_INFO
-- ----------------------------
CREATE TABLE "CHANNEL_INFO"
(
    "ID"               NVARCHAR(255) NOT NULL,
    "PLATFORM_ID"      NVARCHAR(255) NOT NULL,
    "NAME"             NVARCHAR(255) NOT NULL,
    "WEB_DOMAIN_NAME"  NVARCHAR(255) DEFAULT NULL,
    "WEB_ACCESS_KEY"   NVARCHAR(255) DEFAULT NULL,
    "WEB_STYLE_ID"     NVARCHAR(32)  DEFAULT NULL,
    "APP_ID"           NVARCHAR(255) DEFAULT NULL,
    "APP_SECRET"       NVARCHAR(255) DEFAULT NULL,
    "BOT"              NVARCHAR(255) NOT NULL,
    "TRIGGER_ON"       INT           NOT NULL,
    "TRIGGER_WORD"     NVARCHAR(255) DEFAULT NULL,
    "GREETING"         NVARCHAR(255) NOT NULL,
    "ROUTE_STRATEGY"   NVARCHAR(255) NOT NULL,
    "TOKEN"            NVARCHAR(255) DEFAULT NULL,
    "ENCODING_AES_KEY" NVARCHAR(255) DEFAULT NULL,
    "CREATE_TIME"      DATE          NOT NULL,
    "UPDATE_TIME"      DATE          NOT NULL,
    "TYPE"             INT           DEFAULT NULL,
    "ORIGIN_ID"        NVARCHAR(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);


-- ----------------------------
-- Table structure for CHANNEL_WEB_STYLE
-- ----------------------------
CREATE TABLE "CHANNEL_WEB_STYLE"
(
    "ID"                         NVARCHAR(32) NOT NULL,
    "DIALOG_STYLE"               NVARCHAR(50)  DEFAULT NULL,
    "BILLBOARD_IMG_PATH"         NVARCHAR(255) DEFAULT NULL,
    "COMPANY_ABBR"               NVARCHAR(50)  DEFAULT NULL,
    "COMPANY_AVATAR_IMG_PATH"    NVARCHAR(255) DEFAULT NULL,
    "MESSAGE_AVATAR_IMG_PATH"    NVARCHAR(255) DEFAULT NULL,
    "SKIN_COLOR"                 NVARCHAR(255) DEFAULT NULL,
    "SHOW_CLOSE_BTN"             INT           DEFAULT NULL,
    "SHOW_TRANSFER_BTN"          INT           DEFAULT NULL,
    "HORIZONTAL_ALIGN"           NVARCHAR(20)  DEFAULT NULL,
    "HORIZONTAL_OFFSET"          INT           DEFAULT NULL,
    "VERTICAL_ALIGN"             NVARCHAR(20)  DEFAULT NULL,
    "VERTICAL_OFFSET"            INT           DEFAULT NULL,
    "WIDTH"                      INT           DEFAULT NULL,
    "HEIGHT"                     INT           DEFAULT NULL,
    "OPEN_BTN_TEXT"              NVARCHAR(50)  DEFAULT NULL,
    "OPEN_BTN_ICON"              NVARCHAR(50)  DEFAULT NULL,
    "OPEN_BTN_VERTICAL_ALIGN"    NVARCHAR(255) DEFAULT NULL,
    "OPEN_BTN_HORIZONTAL_OFFSET" INT           DEFAULT NULL,
    "OPEN_BTN_VERTICAL_OFFSET"   INT           DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Table structure for COMMON_DICT
-- ----------------------------
CREATE TABLE "COMMON_DICT"
(
    "ID"   NVARCHAR(32) NOT NULL,
    "NAME" NVARCHAR(64) DEFAULT NULL,
    "TAG"  NVARCHAR(32) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of COMMON_DICT
-- ----------------------------
INSERT INTO "COMMON_DICT" VALUES ('1', '客户接入策略', 'cust_access_strategy');
INSERT INTO "COMMON_DICT" VALUES ('2', '客户属性', 'customer_property');
INSERT INTO "COMMON_DICT" VALUES ('3', '业务对应多技能组分配策略', 'biz_skill_group_strategy');

-- ----------------------------
-- Table structure for COMMON_DICT_ITEM
-- ----------------------------
CREATE TABLE "COMMON_DICT_ITEM"
(
    "ID"      NVARCHAR(32) NOT NULL,
    "NAME"    NVARCHAR(64)  DEFAULT NULL,
    "DICT_ID" NVARCHAR(32)  DEFAULT NULL,
    "VALUE"   NVARCHAR(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of COMMON_DICT_ITEM
-- ----------------------------
INSERT INTO "COMMON_DICT_ITEM" VALUES ('1', '随机接入', '1', 'random');
INSERT INTO "COMMON_DICT_ITEM" VALUES ('10', '会话量少优先', '3', 'session_amount');
INSERT INTO "COMMON_DICT_ITEM" VALUES ('2', '总会话时长低优先', '1', 'session_time');
INSERT INTO "COMMON_DICT_ITEM" VALUES ('3', '会话量低优先', '1', 'session_amount');
INSERT INTO "COMMON_DICT_ITEM" VALUES ('5', '售前', '2', 'pre_sale');
INSERT INTO "COMMON_DICT_ITEM" VALUES ('6', '售中', '2', 'in_sale');
INSERT INTO "COMMON_DICT_ITEM" VALUES ('7', '售后', '2', 'post_sale');
INSERT INTO "COMMON_DICT_ITEM" VALUES ('8', '随机分配', '3', 'random');
INSERT INTO "COMMON_DICT_ITEM" VALUES ('9', '会话总时长低优先', '3', 'session_time');

-- ----------------------------
-- Table structure for CRM_BLOCKLIST_CUSTOMER
-- ----------------------------
CREATE TABLE "CRM_BLOCKLIST_CUSTOMER"
(
    "ID"                    NVARCHAR(32) NOT NULL,
    "CUSTOMER_ID"           NVARCHAR(32)   DEFAULT NULL,
    "CUSTOMER_CHINES_NAME"  NVARCHAR(50)   DEFAULT NULL,
    "REPORT_TIME"           DATE           DEFAULT NULL,
    "EXPIRY_TIME"           DATE           DEFAULT NULL,
    "REPORT_REASONS"        NVARCHAR(600)  DEFAULT NULL,
    "REPORT_CHANNEL"        INT            DEFAULT NULL,
    "REPORT_SERVICE_RECORD" NVARCHAR(1000) DEFAULT NULL,
    "STATUS"                INT            DEFAULT NULL,
    "CREATE_USER"           NVARCHAR(32)   DEFAULT NULL,
    "CREATE_USER_NAME"      NVARCHAR(50)   DEFAULT NULL,
    "CREATE_DATE"           DATE           DEFAULT NULL,
    "MODIFY_USER"           NVARCHAR(255)  DEFAULT NULL,
    "MODIFY_USER_NAME"      NVARCHAR(255)  DEFAULT NULL,
    "MODIFY_DATE"           DATE           DEFAULT NULL,
    "DEL_FLAG"              INT            DEFAULT 0,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Table structure for CRM_CONFIG
-- ----------------------------
CREATE TABLE "CRM_CONFIG"
(
    "ID"               NVARCHAR(32)             NOT NULL,
    "FIELD_NAME"       NVARCHAR(100)  DEFAULT NULL,
    "FIELD_VAL"        NVARCHAR(500)  DEFAULT NULL,
    "FIELD_DESC"       NVARCHAR(1000) DEFAULT NULL,
    "MODULE"           INT            DEFAULT 3 NOT NULL,
    "CREATE_USER"      NVARCHAR(32)   DEFAULT NULL,
    "CREATE_USER_NAME" NVARCHAR(50)   DEFAULT NULL,
    "CREATE_DATE"      DATE           DEFAULT NULL,
    "MODIFY_USER"      NVARCHAR(32)   DEFAULT NULL,
    "MODIFY_USER_NAME" NVARCHAR(50)   DEFAULT NULL,
    "MODIFY_DATE"      DATE           DEFAULT NULL,
    "DEL_FLAG"         INT            DEFAULT 0,
    PRIMARY KEY (ID)
);


-- ----------------------------
-- Table structure for CRM_CONN_PLAN
-- ----------------------------
CREATE TABLE "CRM_CONN_PLAN"
(
    "ID"                   NVARCHAR(32) NOT NULL,
    "PLAN_TITLE"           NVARCHAR(255)  DEFAULT NULL,
    "PLAN_CONTENT"         NVARCHAR(1000) DEFAULT NULL,
    "PLAN_START_TIME"      DATE           DEFAULT NULL,
    "PLAN_END_TIME"        DATE           DEFAULT NULL,
    "CUSTOMER_PROPERTY"    NVARCHAR(64)   DEFAULT NULL,
    "CUSTOMER_PROPERTY_ID" NVARCHAR(32)   DEFAULT NULL,
    "PLAN_LEVEL"           INT            DEFAULT NULL,
    "CUSTOMER_TOTAL"       INT            DEFAULT NULL,
    "PLAN_STATUS"          INT            DEFAULT NULL,
    "CREATE_USER"          NVARCHAR(32)   DEFAULT NULL,
    "CREATE_USER_NAME"     NVARCHAR(50)   DEFAULT NULL,
    "CREATE_DATE"          DATE           DEFAULT NULL,
    "MODIFY_USER"          NVARCHAR(32)   DEFAULT NULL,
    "MODIFY_USER_NAME"     NVARCHAR(50)   DEFAULT NULL,
    "MODIFY_DATE"          DATE           DEFAULT NULL,
    "DEL_FLAG"             INT            DEFAULT 0,
    "SKILL_PROPERTY"       NVARCHAR(255)  DEFAULT NULL,
    "SKILL_PROPERTY_ID"    NVARCHAR(255)  DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Table structure for CRM_CUSTOMER
-- ----------------------------
CREATE TABLE "CRM_CUSTOMER"
(
    "ID"                 NVARCHAR(32) NOT NULL,
    "NAME_CN"            NVARCHAR(50)   DEFAULT NULL,
    "PHONE"              NVARCHAR(16) NOT NULL,
    "VISIT_ID"           NVARCHAR(255)  DEFAULT NULL,
    "EMAIL"              NVARCHAR(40)   DEFAULT NULL,
    "ADDR"               NVARCHAR(255)  DEFAULT NULL,
    "PROPERTY"           NVARCHAR(50)   DEFAULT NULL,
    "PROPERTY_ID"        NVARCHAR(32)   DEFAULT NULL,
    "LEVEL"              INT            DEFAULT 0,
    "SOURCE"             NVARCHAR(20) NOT NULL,
    "REMARKS"            NVARCHAR(2000) DEFAULT NULL,
    "LOCATION"           NVARCHAR(200)  DEFAULT NULL,
    "CONVERSATION_FIRST" DATE           DEFAULT NULL,
    "CONVERSATION_LAST"  DATE           DEFAULT NULL,
    "TEL_CONN_FIRST"     DATE           DEFAULT NULL,
    "TEL_CONN_LAST"      DATE           DEFAULT NULL,
    "PRINCIPAL"          NVARCHAR(32)   DEFAULT NULL,
    "PRINCIPAL_NAME"     NVARCHAR(50)   DEFAULT NULL,
    "CREATE_USER"        NVARCHAR(32)   DEFAULT NULL,
    "CREATE_USER_NAME"   NVARCHAR(50)   DEFAULT NULL,
    "CREATE_DATE"        DATE           DEFAULT NULL,
    "MODIFY_USER"        NVARCHAR(32)   DEFAULT NULL,
    "MODIFY_USER_NAME"   NVARCHAR(50)   DEFAULT NULL,
    "MODIFY_DATE"        DATE           DEFAULT NULL,
    "DEL_FLAG"           INT            DEFAULT 0,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Table structure for CRM_CUSTOMER_COL
-- ----------------------------
CREATE TABLE "CRM_CUSTOMER_COL"
(
    "ID"               NVARCHAR(32) NOT NULL,
    "NAME"             NVARCHAR(200) DEFAULT NULL,
    "NAME_EN"          NVARCHAR(255) DEFAULT NULL,
    "TYPE"             NVARCHAR(20)  DEFAULT NULL,
    "COL_STATUS"       INT           DEFAULT NULL,
    "COL_INDEX"        INT           DEFAULT NULL,
    "COL_ORDER"        INT           DEFAULT NULL,
    "SHOW_SYS"         NVARCHAR(128) DEFAULT NULL,
    "CREATE_USER"      NVARCHAR(32)  DEFAULT NULL,
    "CREATE_USER_NAME" NVARCHAR(50)  DEFAULT NULL,
    "CREATE_DATE"      DATE          DEFAULT NULL,
    "MODIFY_USER"      NVARCHAR(255) DEFAULT NULL,
    "MODIFY_USER_NAME" NVARCHAR(255) DEFAULT NULL,
    "MODIFY_DATE"      DATE          DEFAULT NULL,
    "DEL_FLAG"         INT           DEFAULT 0,
    "TAG"              NVARCHAR(255) DEFAULT NULL,
    "FIELD_VALUES"     NVARCHAR(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);


-- ----------------------------
-- Records of CRM_CUSTOMER_COL
-- ----------------------------
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('55e8fc4b0583416587a2de54848f89ee', '姓名', 'NAME_CN', 'default_type', 1, 0, 1, 'AICC_CRM,AICC_WORKBENCH,AICC_ORDER', NULL, NULL, '2020-09-30 18:25:10.000', '001588928289396012177e1d5cb59a5d', 'shashaWei', '2020-09-30 18:25:10.000', 0, 'name', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('8fff2fc7933d4e68acff4d4d5bbf68cc', '手机', 'PHONE', 'default_type', 1, 0, 2, 'AICC_CRM,AICC_WORKBENCH,AICC_ORDER', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'mobile', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('bb602fa463ee4da5a26d1ad2793a6c75', '邮箱', 'EMAIL', 'default_type', 1, 0, 3, 'AICC_CRM,AICC_WORKBENCH', NULL, NULL, '2020-09-30 18:25:10.000', '001588822827321001697e1d5cb59a5d', 'shashaWei', '2020-09-30 18:25:10.000', 0, 'email', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('dc89e4a55caa40deb74ef6e650b96d7b', '地址', 'ADDR', 'default_type', 0, 0, 4, 'AICC_CRM,AICC_ORDER', NULL, NULL, '2020-09-30 18:25:10.000', '001588928289396012177e1d5cb59a5d', 'shashaWei', '2020-09-30 18:25:10.000', 0, 'address', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('636bd0aac50c428a8d95edd959d0400c', '属性', 'PROPERTY', 'default_type', 0, 0, 5, 'AICC_CRM,AICC_ORDER', NULL, NULL, NULL, '001588928289396012177e1d5cb59a5d', 'shashaWei', '2020-09-30 18:25:10.000', 0, 'customer_property', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('0236f8f67a1e41dc89d4c62499d7f47f', '标签', 'LABEL', 'default_type', 1, 0, 6, 'AICC_CRM,AICC_WORKBENCH', NULL, NULL, '2020-09-30 18:25:10.000', '001588928326414012237e1d5cb59a5d', 'xiaochuang', '2020-09-30 18:25:10.000', 0, 'default_label', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('d850911971514d4d85e55d646651d3df', '等级', 'LEVEL', 'default_type', 1, 0, 7, 'AICC_WORKBENCH,AICC_ORDER', NULL, NULL, NULL, '001588928289396012177e1d5cb59a5d', 'shashaWei', '2020-09-30 18:25:10.000', 0, 'level', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('20a4581af6d74d4ea0092149302e04d0', '负责人', 'PRINCIPAL_NAME', 'default_type', 1, 0, 8, NULL, NULL, NULL, '2020-09-30 18:25:10.000', '001588913785588011157e1d5cb59a5d', 'yangyang', '2020-09-30 18:25:10.000', 0, 'director', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('5acb6f1be351431ea01fcf52ff8f8237', '来源终端', 'SOURCE', 'default_type', 0, 0, 9, 'AICC_ORDER', NULL, NULL, NULL, '001588928289396012177e1d5cb59a5d', 'shashaWei', '2020-09-30 18:25:10.000', 0, 'terminal', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('a39623827e9e433e8a2c43cffa3b7b81', '创建时间', 'CREATE_DATE', 'default_type', 0, 0, 10, 'AICC_CRM,AICC_ORDER', NULL, NULL, '2020-09-30 18:25:10.000', '001588822827321001697e1d5cb59a5d', 'shashaWei', '2020-09-30 18:25:10.000', 0, 'create_time', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('c64c86c4a5e6416788a7c9452f6094f4', '更新时间', 'MODIFY_DATE', 'default_type', 1, 0, 11, 'AICC_CRM,AICC_ORDER', NULL, NULL, '2020-09-30 18:25:10.000', '001588822827321001697e1d5cb59a5d', 'shashaWei', '2020-09-30 18:25:10.000', 0, 'update_time', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('74d86785715947198a9d77b3539cff64', '首次会话时间', 'CONVERSATION_FIRST', 'default_type', 0, 0, 12, 'AICC_CRM', NULL, NULL, NULL, '001588928289396012177e1d5cb59a5d', 'shashaWei', '2020-09-30 18:25:10.000', 0, 'first_session_time', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('74da4e560f244d868ee0b60ed442ef75', '最后一次会话时间', 'CONVERSATION_LAST', 'default_type', 1, 0, 13, 'AICC_CRM', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'last_session_time', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('2574cc1a2c1c4a098746a2abd9c41acb', '首次电联时间', 'TEL_CONN_FIRST', 'default_type', 1, 0, 14, 'AICC_CRM', NULL, NULL, '2020-09-30 18:25:10.000', '001589263233452026317e1d5cb59a5d', 'admin', '2020-09-30 18:25:10.000', 0, 'first_call_time', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('f8c60f517cef4537b89b49c917f7178b', '最后一次电联时间', 'TEL_CONN_LAST', 'default_type', 0, 0, 15, 'AICC_CRM', NULL, NULL, '2020-09-30 18:25:10.000', '001588913785588011157e1d5cb59a5d', 'yangyang', '2020-09-30 18:25:10.000', 0, 'last_call_time', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('27e6b1d6a2934c5487b91284bfbb1252', '访客备注', 'REMARKS', 'default_type', 1, 0, 16, 'AICC_CRM,AICC_WORKBENCH', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'visitor_remark', 'blank');

-- ----------------------------
-- Table structure for CRM_CUSTOMER_DATA
-- ----------------------------
CREATE TABLE "CRM_CUSTOMER_DATA"
(
    "ID"                 NVARCHAR(32) NOT NULL,
    "NAME_CN"            NVARCHAR(50)   DEFAULT NULL,
    "PHONE"              NVARCHAR(64) NOT NULL,
    "VISIT_ID"           NVARCHAR(255)  DEFAULT NULL,
    "EMAIL"              NVARCHAR(40)   DEFAULT NULL,
    "ADDR"               NVARCHAR(255)  DEFAULT NULL,
    "PROPERTY"           NVARCHAR(50)   DEFAULT NULL,
    "PROPERTY_ID"        NVARCHAR(32)   DEFAULT NULL,
    "LEVEL"              INT            DEFAULT 0,
    "SOURCE"             NVARCHAR(20) NOT NULL,
    "REMARKS"            NVARCHAR(2000) DEFAULT NULL,
    "LOCATION"           NVARCHAR(200)  DEFAULT NULL,
    "CONVERSATION_FIRST" DATE           DEFAULT NULL,
    "CONVERSATION_LAST"  DATE           DEFAULT NULL,
    "TEL_CONN_FIRST"     DATE           DEFAULT NULL,
    "TEL_CONN_LAST"      DATE           DEFAULT NULL,
    "PRINCIPAL"          NVARCHAR(32)   DEFAULT NULL,
    "PRINCIPAL_NAME"     NVARCHAR(50)   DEFAULT NULL,
    "CREATE_USER"        NVARCHAR(32)   DEFAULT NULL,
    "CREATE_USER_NAME"   NVARCHAR(50)   DEFAULT NULL,
    "CREATE_DATE"        DATE           DEFAULT NULL,
    "MODIFY_USER"        NVARCHAR(32)   DEFAULT NULL,
    "MODIFY_USER_NAME"   NVARCHAR(50)   DEFAULT NULL,
    "MODIFY_DATE"        DATE           DEFAULT NULL,
    "DEL_FLAG"           INT            DEFAULT 0,
    "COL1"               NVARCHAR(3000) DEFAULT NULL,
    "COL2"               NVARCHAR(3000) DEFAULT NULL,
    "COL3"               NVARCHAR(3000) DEFAULT NULL,
    "COL4"               NVARCHAR(3000) DEFAULT NULL,
    "COL5"               NVARCHAR(3000) DEFAULT NULL,
    "COL6"               NVARCHAR(3000) DEFAULT NULL,
    "COL7"               NVARCHAR(3000) DEFAULT NULL,
    "COL8"               NVARCHAR(3000) DEFAULT NULL,
    "COL9"               NVARCHAR(3000) DEFAULT NULL,
    "COL10"              NVARCHAR(3000) DEFAULT NULL,
    "COL11"              NVARCHAR(3000) DEFAULT NULL,
    "COL12"              NVARCHAR(3000) DEFAULT NULL,
    "COL13"              NVARCHAR(3000) DEFAULT NULL,
    "COL14"              NVARCHAR(3000) DEFAULT NULL,
    "COL15"              NVARCHAR(3000) DEFAULT NULL,
    "COL16"              NVARCHAR(3000) DEFAULT NULL,
    "COL17"              NVARCHAR(3000) DEFAULT NULL,
    "COL18"              NVARCHAR(3000) DEFAULT NULL,
    "COL19"              NVARCHAR(3000) DEFAULT NULL,
    "COL20"              NVARCHAR(3000) DEFAULT NULL,
    "COL21"              NVARCHAR(3000) DEFAULT NULL,
    "COL22"              NVARCHAR(3000) DEFAULT NULL,
    "COL23"              NVARCHAR(3000) DEFAULT NULL,
    "COL24"              NVARCHAR(3000) DEFAULT NULL,
    "COL25"              NVARCHAR(3000) DEFAULT NULL,
    "COL26"              NVARCHAR(3000) DEFAULT NULL,
    "COL27"              NVARCHAR(3000) DEFAULT NULL,
    "COL28"              NVARCHAR(3000) DEFAULT NULL,
    "COL29"              NVARCHAR(3000) DEFAULT NULL,
    "COL30"              NVARCHAR(3000) DEFAULT NULL,
    "COL31"              NVARCHAR(3000) DEFAULT NULL,
    "COL32"              NVARCHAR(3000) DEFAULT NULL,
    "COL33"              NVARCHAR(3000) DEFAULT NULL,
    "COL34"              NVARCHAR(3000) DEFAULT NULL,
    "COL35"              NVARCHAR(3000) DEFAULT NULL,
    "COL36"              NVARCHAR(3000) DEFAULT NULL,
    "COL37"              NVARCHAR(3000) DEFAULT NULL,
    "COL38"              NVARCHAR(3000) DEFAULT NULL,
    "COL39"              NVARCHAR(3000) DEFAULT NULL,
    "COL40"              NVARCHAR(3000) DEFAULT NULL,
    "COL41"              NVARCHAR(3000) DEFAULT NULL,
    "COL42"              NVARCHAR(3000) DEFAULT NULL,
    "COL43"              NVARCHAR(3000) DEFAULT NULL,
    "COL44"              NVARCHAR(3000) DEFAULT NULL,
    "COL45"              NVARCHAR(3000) DEFAULT NULL,
    "COL46"              NVARCHAR(3000) DEFAULT NULL,
    "COL47"              NVARCHAR(3000) DEFAULT NULL,
    "COL48"              NVARCHAR(3000) DEFAULT NULL,
    "COL49"              NVARCHAR(3000) DEFAULT NULL,
    "COL50"              NVARCHAR(3000) DEFAULT NULL,
    PRIMARY KEY ("ID")
);


-- ----------------------------
-- Table structure for CRM_CUSTOMER_LABEL
-- ----------------------------
CREATE TABLE "CRM_CUSTOMER_LABEL"
(
    "ID"          NVARCHAR(32) NOT NULL,
    "CUSTOMER_ID" NVARCHAR(32) DEFAULT NULL,
    "LABEL_ID"    NVARCHAR(32) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Table structure for CRM_CUSTOMER_PLAN
-- ----------------------------
CREATE TABLE "CRM_CUSTOMER_PLAN"
(
    "ID"               NVARCHAR(32) NOT NULL,
    "PLAN_ID"          NVARCHAR(32)  DEFAULT NULL,
    "CUSTOMER_ID"      NVARCHAR(32)  DEFAULT NULL,
    "STATUS"           INT           DEFAULT NULL,
    "CREATE_USER"      NVARCHAR(32)  DEFAULT NULL,
    "CREATE_USER_NAME" NVARCHAR(50)  DEFAULT NULL,
    "CREATE_DATE"      DATE          DEFAULT NULL,
    "MODIFY_USER"      NVARCHAR(255) DEFAULT NULL,
    "MODIFY_USER_NAME" NVARCHAR(255) DEFAULT NULL,
    "MODIFY_DATE"      DATE          DEFAULT NULL,
    "DEL_FLAG"         INT           DEFAULT 0,
    PRIMARY KEY ("ID")
);


-- ----------------------------
-- Table structure for CRM_LABEL
-- ----------------------------
CREATE TABLE "CRM_LABEL"
(
    "ID"               NVARCHAR(32) NOT NULL,
    "NAME"             NVARCHAR(32)  DEFAULT NULL,
    "COLOR"            NVARCHAR(100) DEFAULT NULL,
    "USE_COUNT"        INT           DEFAULT 0,
    "CREATE_USER"      NVARCHAR(32)  DEFAULT NULL,
    "CREATE_USER_NAME" NVARCHAR(50)  DEFAULT NULL,
    "CREATE_DATE"      DATE          DEFAULT NULL,
    "MODIFY_USER"      NVARCHAR(32)  DEFAULT NULL,
    "MODIFY_USER_NAME" NVARCHAR(50)  DEFAULT NULL,
    "MODIFY_DATE"      DATE          DEFAULT NULL,
    "DEL_FLAG"         INT           DEFAULT 0,
    PRIMARY KEY ("ID")
);


-- ----------------------------
-- Table structure for CRM_MENU
-- ----------------------------
CREATE TABLE "CRM_MENU"
(
    "ID"               NVARCHAR(32) NOT NULL,
    "PARENT_ID"        NVARCHAR(32)  DEFAULT NULL,
    "TYPE"             INT           DEFAULT NULL,
    "NAME"             NVARCHAR(50)  DEFAULT NULL,
    "BH"               NVARCHAR(200) DEFAULT NULL,
    "PATH"             NVARCHAR(255) DEFAULT NULL,
    "DISPLAY_TYPE"     INT           DEFAULT NULL,
    "DATA"             NVARCHAR(255) DEFAULT NULL,
    "DESCRIPTION"      NVARCHAR(500) DEFAULT NULL,
    "CREATE_USER"      NVARCHAR(32)  DEFAULT NULL,
    "CREATE_USER_NAME" NVARCHAR(50)  DEFAULT NULL,
    "CREATE_DATE"      DATE          DEFAULT NULL,
    "MODIFY_USER"      NVARCHAR(32)  DEFAULT NULL,
    "MODIFY_USER_NAME" NVARCHAR(50)  DEFAULT NULL,
    "DEL_FLAG"         INT           DEFAULT 0,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Records of CRM_MENU
-- ----------------------------
INSERT INTO "CRM_MENU" VALUES ('020970e746124feb852b6b58fd0fbee6', 'a63069b31756419881b4adc1f9bf4a17', 0, '客户查询', '1000.1001.1001', '/crm/client_mgr#findByPage', 1, '[{\"name\":\"仅可查看自己\",\"value\":\"SELF\"},{\"name\":\"可查看所在坐席组\",\"value\":\"GROUP\"},{\"name\":\"可查看所有\",\"value\":\"ALL\"}]', NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "CRM_MENU" VALUES ('051306bd09ba4023abdbffa73e7d7e27', '3d68edf13fbd4df7a9662344f444f0ed', 0, '客户保存规则', '1000.1003.1004', '/crm/client_savingrules', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "CRM_MENU" VALUES ('0fc2fc79def44ce695c95280bc07b7a9', 'a63069b31756419881b4adc1f9bf4a17', 2, '导入客户', '1000.1001.1003', '/crm/client_mgr/importGroup', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "CRM_MENU" VALUES ('3d68edf13fbd4df7a9662344f444f0ed', '8ad30ad8050e441bbf53d05e5f10b613', 0, '设置管理', '1000.1003', '/crm/setting', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "CRM_MENU" VALUES ('3ebbe99cf2164e068e17d9873ca169e9', 'ef5058693ccf400f9f9cdc8f29ec620c', 1, '导出客户', '1000.1001.1004.1001', '/crm/client_mgr#export', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "CRM_MENU" VALUES ('576fe4b3cbc24989befca6042cbb7919', '3d68edf13fbd4df7a9662344f444f0ed', 0, '客户标签', '1000.1003.1002', '/crm/client_tag', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "CRM_MENU" VALUES ('5c0cfbf9a8314a66a4fa8b9ea7c05e0c', '9fab0b45fd21482b9cad6a16226f4956', 0, '计划查询', '1000.1002.1001', '/crm/client_mgr', 1, '[{\"name\":\"仅可查看自己\",\"value\":\"SELF\"},{\"name\":\"可查看所在坐席组\",\"value\":\"GROUP\"},{\"name\":\"可查看所有\",\"value\":\"ALL\"}]', NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "CRM_MENU" VALUES ('7473bdc852d24832b47d6907c95d6565', '3d68edf13fbd4df7a9662344f444f0ed', 0, '客户信息', '1000.1003.1001', '/crm/client_info', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "CRM_MENU" VALUES ('784a67de5cf84ae5971cb9829afbf771', '941a7b5324724c0487c902584c5e0875', 1, '删除客户', '1000.1001.1005.1001', '/crm/client_mgr#deleteBatch', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "CRM_MENU" VALUES ('7c75079cd1b04a29adba43969fe7934c', 'a63069b31756419881b4adc1f9bf4a17', 2, '创建联系计划', '1000.1001.1002', '/crm/client_mgr/planGroup', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "CRM_MENU" VALUES ('81629f692c57429d87339a90fe5d3414', '7c75079cd1b04a29adba43969fe7934c', 1, '创建联系计划', '1000.1001.1002.1001', '/crm/client_mgr#connPlan_save', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "CRM_MENU" VALUES ('8ad30ad8050e441bbf53d05e5f10b613', NULL, 0, '客户', '1000', '/crm', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "CRM_MENU" VALUES ('941a7b5324724c0487c902584c5e0875', 'a63069b31756419881b4adc1f9bf4a17', 2, '删除客户', '1000.1001.1005', '/crm/client_mgr/deleteGroup', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "CRM_MENU" VALUES ('9fab0b45fd21482b9cad6a16226f4956', '8ad30ad8050e441bbf53d05e5f10b613', 0, '计划管理', '1000.1002', '/crm/plan_mgr', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "CRM_MENU" VALUES ('a05540d1a24b474ea2a05059c99ac631', '0fc2fc79def44ce695c95280bc07b7a9', 1, '导入客户', '1000.1001.1003.1001', '/crm/client_mgr#import', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "CRM_MENU" VALUES ('a44225743d2a476b9692f313c6a40f37', 'a63069b31756419881b4adc1f9bf4a17', 2, '修改客户', '1000.1001.1006', '/crm/client_mgr/editGroup', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "CRM_MENU" VALUES ('a63069b31756419881b4adc1f9bf4a17', '8ad30ad8050e441bbf53d05e5f10b613', 0, '客户管理', '1000.1001', '/crm/client_mgr', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "CRM_MENU" VALUES ('a94a75f22e7f4ef79f32d3b4bc60db71', 'a44225743d2a476b9692f313c6a40f37', 1, '修改客户', '1000.1001.1006.1001', '/crm/client_mgr#edit', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "CRM_MENU" VALUES ('eedaf008f3d641bbac671e92124c0c4c', '3d68edf13fbd4df7a9662344f444f0ed', 0, '联系计划设置', '1000.1003.1005', '/crm/client_contactplan', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO "CRM_MENU" VALUES ('ef5058693ccf400f9f9cdc8f29ec620c', 'a63069b31756419881b4adc1f9bf4a17', 2, '导出客户', '1000.1001.1004', '/crm/client_mgr/exportGroup', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);
INSERT INTO "CRM_MENU" VALUES ('ff548d4ec71c45089567efa0e2a44470', '3d68edf13fbd4df7a9662344f444f0ed', 0, '黑名单客户', '1000.1003.1003', '/crm/client_blacklist', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for CRM_ROLE_MENU
-- ----------------------------
CREATE TABLE "CRM_ROLE_MENU"
(
    "ID"      NVARCHAR(32) NOT NULL,
    "MENU_ID" NVARCHAR(32) NOT NULL,
    "ROLE_ID" NVARCHAR(32) NOT NULL,
    "DETAIL"  NVARCHAR(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Table structure for ORDER_CUSTOMER
-- ----------------------------
CREATE TABLE "ORDER_CUSTOMER"
(
    "ID"          NVARCHAR(32)  NOT NULL,
    "ORDER_ID"    NVARCHAR(255) NOT NULL,
    "CUSTOMER_ID" NVARCHAR(32)  NOT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Table structure for ORDER_LIST
-- ----------------------------
CREATE TABLE "ORDER_LIST"
(
    "ID"            NVARCHAR(32)  NOT NULL,
    "NAME"          NVARCHAR(255) NOT NULL,
    "CREATOR"       NVARCHAR(255) NOT NULL,
    "STATUS"        INT           NOT NULL,
    "ASSIGNEE"      NVARCHAR(255) NOT NULL,
    "CUSTOMER_ID"   NVARCHAR(255) NOT NULL,
    "TEMPLATE_ID"   NVARCHAR(32)  NOT NULL,
    "TEMPLATE_NAME" NVARCHAR(255) NOT NULL,
    "CREATE_TIME"   DATE DEFAULT NULL,
    "UPDATE_TIME"   DATE DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Table structure for ORDER_OPT_LOG
-- ----------------------------
CREATE TABLE "ORDER_OPT_LOG"
(
    "ID"             NVARCHAR(32)  NOT NULL,
    "ORDER_NO"       NVARCHAR(255) NOT NULL,
    "OPERATOR"       NVARCHAR(255) DEFAULT NULL,
    "OPERATION"      INT           NOT NULL,
    "SESSION_IDS"    NVARCHAR(255) NOT NULL,
    "OPERATION_TIME" DATE          NOT NULL,
    PRIMARY KEY ("ID")
);


-- ----------------------------
-- Table structure for ORDER_PERMISSION
-- ----------------------------
CREATE TABLE "ORDER_PERMISSION"
(
    "ID"            NVARCHAR(32)  NOT NULL,
    "PARENT_ID"     NVARCHAR(255) DEFAULT NULL,
    "PATH"          NVARCHAR(255) DEFAULT NULL,
    "NAME"          NVARCHAR(255) NOT NULL,
    "RESOURCE_NAME" NVARCHAR(255) DEFAULT NULL,
    "DESCRIPTION"   NVARCHAR(255) DEFAULT NULL,
    "DISPLAY_TYPE"  INT           DEFAULT NULL,
    "DATA"          NVARCHAR(255) DEFAULT NULL,
    "VALUE"         NVARCHAR(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of ORDER_PERMISSION
-- ----------------------------
INSERT INTO "ORDER_PERMISSION" VALUES ('1', NULL, '/order', 'order', '我的工单', NULL, 0, NULL, 'false');
INSERT INTO "ORDER_PERMISSION" VALUES ('10', '1', '/order', 'wb', '坐席工作台', '坐席工作台选项', 0, NULL, 'false');
INSERT INTO "ORDER_PERMISSION" VALUES ('11', '1', '/order', 'bp', '企业管理台', '企业管理台选项', 0, NULL, 'false');
INSERT INTO "ORDER_PERMISSION" VALUES ('20', '10', '/order/assignOrderRange', 'assign_order_range', '工单指派范围', '工单指派角色范围', 2, '[{\"name\":\"所有技能组\",\"value\":\"ALL\"},{\"name\":\"自定义技能组\",\"value\":\"zdykz\"}]', '');
INSERT INTO "ORDER_PERMISSION" VALUES ('21', '10', '/order/assignOrder', 'assign_order', '工单指派', '是否有指派权限', 0, NULL, 'false');
INSERT INTO "ORDER_PERMISSION" VALUES ('22', '10', '/order/createTemplate', 'create_template', '工单模板创建', '是否有权限创建模板', 0, NULL, 'false');
INSERT INTO "ORDER_PERMISSION" VALUES ('23', '10', '/order/auditTemplate', 'audit_template', '工单模板审核', '是否有权限审核模板', 0, NULL, 'false');
INSERT INTO "ORDER_PERMISSION" VALUES ('24', '10', '/order/deleteTemplate', 'delete_template', '工单模板删除', '是否有权限删除模板', 0, NULL, 'fasle');
INSERT INTO "ORDER_PERMISSION" VALUES ('25', '10', '/order/editTemplate', 'update_template', '工单模板修改', '是否有权限修改模板', 0, NULL, 'false');
INSERT INTO "ORDER_PERMISSION" VALUES ('26', '10', '/order/template', 'template', '工单模板', '是否显示工单模板菜单', 0, NULL, 'false');
INSERT INTO "ORDER_PERMISSION" VALUES ('30', '11', '/order/template', 'template', '工单模板', '是否显示工单模板菜单', 0, NULL, 'false');

-- ----------------------------
-- Table structure for ORDER_PERMISSION_ROLE
-- ----------------------------
CREATE TABLE "ORDER_PERMISSION_ROLE"
(
    "ROLE_ID"       NVARCHAR(32) NOT NULL,
    "PERMISSION_ID" NVARCHAR(32) NOT NULL,
    "VALUE"         NVARCHAR(4000) DEFAULT NULL,
    PRIMARY KEY ("ROLE_ID", "PERMISSION_ID")
);
-- ----------------------------
-- Table structure for ORDER_SESSION
-- ----------------------------
CREATE TABLE "ORDER_SESSION"
(
    "ORDER_ID"   NVARCHAR(50) NOT NULL,
    "SESSION_ID" NVARCHAR(50)  NOT NULL,
    PRIMARY KEY ("ORDER_ID", "SESSION_ID")
);
-- ----------------------------
-- Table structure for ORDER_TEMPLATE
-- ----------------------------
CREATE TABLE "ORDER_TEMPLATE"
(
    "ID"            NVARCHAR(255) NOT NULL,
    "TEMPLATE_NAME" NVARCHAR(255) NOT NULL,
    "CREATOR"       NVARCHAR(255) NOT NULL,
    "TYPE"          INT           NOT NULL,
    "STATUS"        INT           NOT NULL,
    "CREATE_TIME"   DATE          NOT NULL,
    "UPDATE_TIME"   DATE          NOT NULL,
    PRIMARY KEY ("ID")
);


-- ----------------------------
-- Table structure for ORDER_TEMPLATE_FIELD
-- ----------------------------
CREATE TABLE "ORDER_TEMPLATE_FIELD"
(
    "ID"            NVARCHAR(255) NOT NULL,
    "FIELD_ID"      NVARCHAR(255) DEFAULT NULL,
    "FIELD_TAG"     NVARCHAR(255) DEFAULT NULL,
    "FIELD_NAME"    NVARCHAR(255) NOT NULL,
    "FIELD_TYPE"    NVARCHAR(255) NOT NULL,
    "DISPLAY_ORDER" INT           NOT NULL,
    "DEFAULT_VALUE" NVARCHAR(255) DEFAULT NULL,
    "GROUP_ID"      NVARCHAR(255) NOT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Table structure for ORDER_TEMPLATE_FIELD_GROUP
-- ----------------------------
CREATE TABLE "ORDER_TEMPLATE_FIELD_GROUP"
(
    "ID"            NVARCHAR(255) NOT NULL,
    "GROUP_NAME"    NVARCHAR(255) NOT NULL,
    "DISPLAY_ORDER" INT           NOT NULL,
    "TEMPLATE_ID"   NVARCHAR(255) NOT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Table structure for ORDER_TEMPLATE_FIELD_VALUE
-- ----------------------------
CREATE TABLE "ORDER_TEMPLATE_FIELD_VALUE"
(
    "ID"       NVARCHAR(255) NOT NULL,
    "VALUE_ID" NVARCHAR(255) NOT NULL,
    "VALUE"    NVARCHAR(255) DEFAULT NULL,
    "FIELD_ID" NVARCHAR(255) NOT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Table structure for ORDER_VALUE
-- ----------------------------
CREATE TABLE "ORDER_VALUE"
(
    "ID"          NVARCHAR(32)  NOT NULL,
    "ORDER_ID"    NVARCHAR(255) NOT NULL,
    "FIELD_ID"    NVARCHAR(32)  DEFAULT NULL,
    "FIELD_VALUE" NVARCHAR(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Table structure for QC_ACTION
-- ----------------------------
CREATE TABLE "QC_ACTION"
(
    "ID"           NVARCHAR(32) NOT NULL,
    "NAME"         NVARCHAR(32) DEFAULT NULL,
    "STATUS"       INT          DEFAULT NULL,
    "CODE"         NVARCHAR(32) DEFAULT NULL,
    "UPDATED_BY"   NVARCHAR(32) DEFAULT NULL,
    "UPDATED_TIME" DATE         DEFAULT NULL,
    PRIMARY KEY ("ID")
);


-- ----------------------------
-- Table structure for QC_ITEMS
-- ----------------------------
CREATE TABLE "QC_ITEMS"
(
    "ID"           NVARCHAR(32) NOT NULL,
    "NAME"         NVARCHAR(32)  DEFAULT NULL,
    "PLAN_ID"      NVARCHAR(32)  DEFAULT NULL,
    "CLASSIFY"     INT           DEFAULT NULL,
    "REMARK"       NVARCHAR(512) DEFAULT NULL,
    "MODEL_ID"     NVARCHAR(32)  DEFAULT NULL,
    "SCORE"        INT           DEFAULT NULL,
    "TYPE"         INT           DEFAULT NULL,
    "CREATED_BY"   NVARCHAR(32)  DEFAULT NULL,
    "CREATED_TIME" DATE          DEFAULT NULL,
    "UPDATED_BY"   NVARCHAR(32)  DEFAULT NULL,
    "UPDATED_TIME" DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);


-- ----------------------------
-- Table structure for QC_LINK_NODE
-- ----------------------------
CREATE TABLE "QC_LINK_NODE"
(
    "ID"            NVARCHAR(32) NOT NULL,
    "NAME"          NVARCHAR(32)  DEFAULT NULL,
    "TYPE"          INT           DEFAULT NULL,
    "PARENT_ID"     NVARCHAR(32)  DEFAULT NULL,
    "LINK_ID"       NVARCHAR(32)  DEFAULT NULL,
    "FLAG_NAV_LINK" INT           DEFAULT NULL,
    "NAV_LINK_ID"   NVARCHAR(32)  DEFAULT NULL,
    "FLAG_TRIGGER"  INT           DEFAULT NULL,
    "WEIGHT"        DECIMAL(4, 2) DEFAULT NULL,
    "CREATED_BY"    NVARCHAR(128) DEFAULT NULL,
    "CREATED_TIME"  DATE          DEFAULT NULL,
    "UPDATED_BY"    NVARCHAR(128) DEFAULT NULL,
    "UPDATED_TIME"  DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Table structure for QC_MENU
-- ----------------------------
CREATE TABLE "QC_MENU"
(
    "ID"           NVARCHAR(32) NOT NULL,
    "PARENT_ID"    NVARCHAR(32)   DEFAULT NULL,
    "MENU_NAME"    NVARCHAR(128)  DEFAULT NULL,
    "PATH"         NVARCHAR(128)  DEFAULT NULL,
    "BACK_PATH"    NVARCHAR(128)  DEFAULT NULL,
    "TYPE"         INT            DEFAULT NULL,
    "ICON"         NVARCHAR(128)  DEFAULT NULL,
    "BH"           NVARCHAR(1024) DEFAULT NULL,
    "DETAIL"       NVARCHAR(1024) DEFAULT NULL,
    "DESCRIPTION"  NVARCHAR(1024) DEFAULT NULL,
    "APP"          NVARCHAR(32)   DEFAULT NULL,
    "PRIORITY"     INT            DEFAULT NULL,
    "DISPLAY_TYPE" INT            DEFAULT NULL,
    "IS_SHOW"      INT            DEFAULT NULL,
    "CREATOR"      NVARCHAR(32)   DEFAULT NULL,
    "CREATE_TIME"  DATE           DEFAULT NULL,
    "EDITOR"       NVARCHAR(32)   DEFAULT NULL,
    "EDIT_TIME"    DATE           DEFAULT NULL,
    PRIMARY KEY ("ID")
);


-- ----------------------------
-- Records of QC_MENU
-- ----------------------------
INSERT INTO "QC_MENU" VALUES ('100000', '\r\n', '智能质检', '/qc', '/qc', 0, NULL, '1000', NULL, '开启后角色可访问智能质检', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('101000', '100000', '业务建模', '/qc/businessModeling', '/qc/model', 0, NULL, '1000.1000', NULL, '开启后角色可访问业务建模页面', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('101100', '101000', '生效技能组', 'effectGroup', 'effectGroup', 2, NULL, '1000.1000.1000L', '[{\"name\":\"可查看所属技能组\",\"value\":\"ckssjnz\"},{\"name\":\"可查看所有\",\"value\":\"ALL\"},{\"name\":\"自定义跨组查看\",\"value\":\"zdykz\"}]', '开启后角色可浏览业务建模的技能组范围', 'aicc_bp', NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('101200', '101000', '模型类型', 'modelType', 'modelType', 1, NULL, '1000.1000.1001', NULL, '开启后角色可访问模型类型', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('101210', '101200', '行为模型', 'actionModel', 'actionModel', 1, NULL, '1000.1000.1001.1000L', NULL, '开启后角色可访问行为模型', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('101220', '101200', '语义模型', 'semanticModel', 'semanticModel', 1, NULL, '1000.1000.1001.1001L', NULL, '开启后角色可访问语义模型', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('101300', '101000', '新建模型', '/qc/newModel/newModel_menu', '/mgr/model/qcModel_post,/mgr/behavioralModel/bm/_post', 0, NULL, '1000.1000.1002', NULL, '开启后角色可访问新建模型页面', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('101310', '101300', '发布', 'release_add', 'release_add', 1, NULL, '1000.1000.1002.1000L', NULL, '开启后角色可新建模型并发布', 'aicc_bp', NULL, 0, 0, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('101400', '101000', '模型管理', '/qc/businessModeling/modelManagement', '/mgr/model/qcModel_get,/mgr/behavioralModel/bm/_get', 0, NULL, '1000.1000.1003', NULL, '开启后角色可访问模型管理页面', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('101410', '101400', '上线/下线', '', '/mgr/model/qcModels_put', 1, NULL, '1000.1000.1003.1000L', NULL, '开启后角色可操作模型上线和下线', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('101420', '101400', '删除', '', '/mgr/model/qcModel_delete', 1, NULL, '1000.1000.1003.1001L', NULL, '开启后角色可删除模型', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('101430', '101400', '编辑', '', '/mgr/model/qcModel_put,/mgr/behavioralModel/bm/_put', 1, NULL, '1000.1000.1003.1002', NULL, '开启后角色可编辑模型', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('101431', '101430', '编辑生效技能组', 'editEffectGroup', 'editEffectGroup', 1, NULL, '1000.1000.1003.1002.1000L', NULL, '开启后角色编辑模型可修改模型生效技能组', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('101432', '101430', '发布', 'release_edit', 'release_edit', 1, NULL, '1000.1000.1003.1002.1001L', NULL, '开启后角色编辑模型并可以发布', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102000', '100000', '业务管理', '/qc/serviceManage', 'businessManagement', 0, NULL, '1000.1001', NULL, '开启后角色可访问业务管理页面', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102100', '102000', '语义管理', '/qc/serviceManage/semanticManagement', '/mgr/wordClass/semanticManagement_get', 0, NULL, '1000.1001.1000', NULL, '开启后角色可访问语义管理页面', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102110', '102100', '关键词目录', 'keywordCatalog', 'keywordCatalog', 0, NULL, '1000.1001.1000.1000', NULL, '开启后角色可访问关键词目录', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102111', '102110', '添加顶级节点', '', '/mgr/wordClass/semanticManagement_post', 1, NULL, '1000.1001.1000.1000.1000L', '', '', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102112', '102110', '添加子级节点', '', '/mgr/wordClass/semanticManagement_post', 1, NULL, '1000.1001.1000.1000.1001L', NULL, '', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102113', '102110', '编辑节点', '', '/mgr/wordClass/semanticManagement_put', 1, NULL, '1000.1001.1000.1000.1002L', '', '', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102114', '102110', '删除节点', '', '/mgr/wordClass/semanticManagement_delete', 1, NULL, '1000.1001.1000.1000.1003L', NULL, '', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102120', '102100', '关键词列表', '', '/mgr/wordClass/keyWord_get', 0, NULL, '1000.1001.1000.1001', NULL, '开启后角色可访问关键词列表', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102121', '102120', '新增关键词', '', '/mgr/wordClass/keyWord_post', 1, NULL, '1000.1001.1000.1001.1000L', NULL, '', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102122', '102120', '删除关键词', '', '/mgr/wordClass/batchKeyWord_delete', 1, NULL, '1000.1001.1000.1001.1001L', NULL, '', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102123', '102120', '下载模板', '', '/mgr/wordClass/downloadTemplate_get', 1, NULL, '1000.1001.1000.1001.1002L', '', '', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102124', '102120', '导入', '', '/mgr/wordClass/importKeyWords_post', 1, NULL, '1000.1001.1000.1001.1003L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102125', '102120', '导出', '', '/mgr/wordClass/exportKeyWords_get', 1, NULL, '1000.1001.1000.1001.1004L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102130', '102100', '关键词', 'keyword', 'keyword', 0, NULL, '1000.1001.1000.1002', NULL, '开启后角色可访问关键词', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102131', '102130', '编辑', '', '/mgr/wordClass/keyWord_put', 1, NULL, '1000.1001.1000.1002.1000L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102132', '102130', '删除', '', '/mgr/wordClass/keyWord_delete', 1, NULL, '1000.1001.1000.1002.1001L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102133', '102130', '移动', '', '/mgr/wordClass/moveKeyWord_put', 1, NULL, '1000.1001.1000.1002.1002L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102200', '102000', '行为设置', '/qc/serviceManage/behaviorSettings', '/mgr/setting/behaviorSettings_get', 0, NULL, '1000.1001.1001', '', '开启后角色可访问行为设置页面', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('102210', '102200', '编辑', '', '/mgr/setting/behaviorSettings_put', 1, NULL, '1000.1001.1001.1000L', NULL, '开启后角色可编辑行为设置', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('103000', '100000', '分析报表', '/qc/analysisReport', 'analysisReport', 0, NULL, '1000.1002', NULL, '开启后角色可访问分析报表页面', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('103100', '103000', '实时质检报表', '/qc/analysisReport/qcRealTimeReport', '/mgr/realTimeReport/qcLog_get', 0, NULL, '1000.1002.1000', '', '开启后角色可查看实时质检报表', 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "QC_MENU" VALUES ('103110', '103100', '实时质检报表查看范围', 'qcRealTimeReportRange', 'qcRealTimeReportRange', 2, NULL, '1000.1002.1000.1000L', '[{\"name\":\"仅可查看自己\",\"value\":\"jkckzj\"},{\"name\":\"可查看所属技能组\",\"value\":\"ckssjnz\"},{\"name\":\"可查看所有\",\"value\":\"ALL\"},{\"name\":\"自定义跨组查看\",\"value\":\"zdykz\"}]', '设定角色可查询实时质检报表范围', 'aicc_bp', NULL, 2, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for QC_MODEL
-- ----------------------------
CREATE TABLE "QC_MODEL"
(
    "ID"                NVARCHAR(32) NOT NULL,
    "QC_TYPE"           INT           DEFAULT NULL,
    "TYPE"              INT           DEFAULT NULL,
    "GROUP_ID"          NVARCHAR(32)  DEFAULT NULL,
    "NAME"              NVARCHAR(32)  DEFAULT NULL,
    "REMARK"            NVARCHAR(128) DEFAULT NULL,
    "ATTR_ROLE"         INT           DEFAULT NULL,
    "ATTR_POS"          INT           DEFAULT NULL,
    "ATTR_POS_VALUE"    INT           DEFAULT NULL,
    "ATTR_ACTION_ID"    NVARCHAR(32)  DEFAULT NULL,
    "ATTR_ACTION_VALUE" NVARCHAR(32)  DEFAULT NULL,
    "SKILL_GROUP_ID"    NVARCHAR(32)  DEFAULT NULL,
    "FLAG_PUBLISH"      INT           DEFAULT NULL,
    "CREATED_BY"        NVARCHAR(32)  DEFAULT NULL,
    "CREATED_TIME"      DATE          DEFAULT NULL,
    "UPDATED_BY"        NVARCHAR(32)  DEFAULT NULL,
    "UPDATED_TIME"      DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);


-- ----------------------------
-- Table structure for QC_MODEL_GROUP
-- ----------------------------
CREATE TABLE "QC_MODEL_GROUP"
(
    "ID"           NVARCHAR(32) NOT NULL,
    "NAME"         NVARCHAR(32)  DEFAULT NULL,
    "PARENT_ID"    NVARCHAR(32)  DEFAULT NULL,
    "BH"           NVARCHAR(128) DEFAULT NULL,
    "CREATED_BY"   NVARCHAR(128) DEFAULT NULL,
    "CREATED_TIME" DATE          DEFAULT NULL,
    "UPDATED_BY"   NVARCHAR(128) DEFAULT NULL,
    "UPDATED_TIME" DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Table structure for QC_MODEL_LINK
-- ----------------------------
CREATE TABLE "QC_MODEL_LINK"
(
    "ID"           NVARCHAR(32) NOT NULL,
    "NAME"         NVARCHAR(32) DEFAULT NULL,
    "MODEL_ID"     NVARCHAR(32) DEFAULT NULL,
    "CREATED_BY"   NVARCHAR(32) DEFAULT NULL,
    "CREATED_TIME" DATE         DEFAULT NULL,
    "UPDATED_BY"   NVARCHAR(32) DEFAULT NULL,
    "UPDATED_TIME" DATE         DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Table structure for QC_MODEL_RULES
-- ----------------------------
CREATE TABLE "QC_MODEL_RULES"
(
    "ID"           NVARCHAR(32) NOT NULL,
    "RULE"         NVARCHAR(3072) DEFAULT NULL,
    "MODEL_ID"     NVARCHAR(32)   DEFAULT NULL,
    "CREATED_BY"   NVARCHAR(32)   DEFAULT NULL,
    "CREATED_TIME" DATE           DEFAULT NULL,
    "UPDATED_BY"   NVARCHAR(32)   DEFAULT NULL,
    "UPDATED_TIME" DATE           DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Table structure for QC_MODEL_SKILLGROUP_RELATION
-- ----------------------------
CREATE TABLE "QC_MODEL_SKILLGROUP_RELATION"
(
    "ID"             NVARCHAR(32) NOT NULL,
    "MODEL_ID"       NVARCHAR(32) DEFAULT NULL,
    "SKILL_GROUP_ID" NVARCHAR(32) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Table structure for QC_NODE_MODEL_RELATION
-- ----------------------------
CREATE TABLE "QC_NODE_MODEL_RELATION"
(
    "ID"           NVARCHAR(32) NOT NULL,
    "NODE_ID"      NVARCHAR(32) DEFAULT NULL,
    "MODAL_ID"     NVARCHAR(32) DEFAULT NULL,
    "RELATION"     INT          DEFAULT NULL,
    "CREATED_BY"   NVARCHAR(32) DEFAULT NULL,
    "CREATED_TIME" DATE         DEFAULT NULL,
    "UPDATED_BY"   NVARCHAR(32) DEFAULT NULL,
    "UPDATED_TIME" DATE         DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Table structure for QC_PLAN
-- ----------------------------
CREATE TABLE "QC_PLAN"
(
    "ID"           NVARCHAR(32) NOT NULL,
    "DESCRIB"      NVARCHAR(512) DEFAULT NULL,
    "NAME"         NVARCHAR(32)  DEFAULT NULL,
    "DEDUCT_LIMIT" INT           DEFAULT NULL,
    "BONUS_LIMIT"  INT           DEFAULT NULL,
    "CREATED_BY"   NVARCHAR(32)  DEFAULT NULL,
    "CREATED_TIME" DATE          DEFAULT NULL,
    "UPDATED_BY"   NVARCHAR(32)  DEFAULT NULL,
    "UPDATED_TIME" DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Table structure for QC_ROLE_MENU
-- ----------------------------
CREATE TABLE "QC_ROLE_MENU"
(
    "ID"      NVARCHAR(32) NOT NULL,
    "ROLE_ID" NVARCHAR(32)   DEFAULT NULL,
    "MENU_ID" NVARCHAR(32)   DEFAULT NULL,
    "DETAIL"  NVARCHAR(4000) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Table structure for QC_SESSION_MODEL_MATCH
-- ----------------------------
CREATE TABLE "QC_SESSION_MODEL_MATCH"
(
    "ID"          NVARCHAR(32) NOT NULL,
    "SESSION_ID"  NVARCHAR(32)   DEFAULT NULL,
    "MODEL_ID"    NVARCHAR(32)   DEFAULT NULL,
    "EX"          NVARCHAR(3072) DEFAULT NULL,
    "EX1"         NVARCHAR(3072) DEFAULT NULL,
    "ASK_ID"      NVARCHAR(32)   DEFAULT NULL,
    "SENTENCE_NO" INT            DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Table structure for QC_TASK
-- ----------------------------
CREATE TABLE "QC_TASK"
(
    "ID"             NVARCHAR(32) NOT NULL,
    "NAME"           NVARCHAR(32)  DEFAULT NULL,
    "DESCRIB"        NVARCHAR(512) DEFAULT NULL,
    "RUN_RATE"       NVARCHAR(128) DEFAULT NULL,
    "RUN_TIME"       NVARCHAR(32)  DEFAULT NULL,
    "PLAN_ID"        NVARCHAR(32)  DEFAULT NULL,
    "STATUS"         INT           DEFAULT NULL,
    "SKILL_GROUP_ID" NVARCHAR(32)  DEFAULT NULL,
    "CREATED_BY"     NVARCHAR(32)  DEFAULT NULL,
    "CREATED_TIME"   DATE          DEFAULT NULL,
    "UPDATED_BY"     NVARCHAR(32)  DEFAULT NULL,
    "UPDATED_TIME"   DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Table structure for QC_URL_LIST
-- ----------------------------
CREATE TABLE "QC_URL_LIST"
(
    "ID"           NVARCHAR(32) NOT NULL,
    "URL"          NVARCHAR(128) DEFAULT NULL,
    "TYPE"         INT           DEFAULT NULL,
    "MODEL_ID"     NVARCHAR(32)  DEFAULT NULL,
    "CREATED_BY"   NVARCHAR(32)  DEFAULT NULL,
    "CREATED_TIME" DATE          DEFAULT NULL,
    "UPDATED_BY"   NVARCHAR(32)  DEFAULT NULL,
    "UPDATED_TIME" DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Table structure for QC_WORDCLASS
-- ----------------------------
CREATE TABLE "QC_WORDCLASS"
(
    "ID"                 NVARCHAR(32) NOT NULL,
    "NAME"               NVARCHAR(32)   DEFAULT NULL,
    "WORDS"              NVARCHAR(3072) DEFAULT NULL,
    "WORDCLASS_GROUP_ID" NVARCHAR(32)   DEFAULT NULL,
    "CREATED_BY"         NVARCHAR(128)  DEFAULT NULL,
    "CREATED_TIME"       DATE           DEFAULT NULL,
    "UPDATED_BY"         NVARCHAR(128)  DEFAULT NULL,
    "UPDATED_TIME"       DATE           DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Table structure for QC_WORDCLASS_GROUP
-- ----------------------------
CREATE TABLE "QC_WORDCLASS_GROUP"
(
    "ID"           NVARCHAR(32) NOT NULL,
    "NAME"         NVARCHAR(32)  DEFAULT NULL,
    "PARENT_ID"    NVARCHAR(32)  DEFAULT NULL,
    "BH"           NVARCHAR(128) DEFAULT NULL,
    "CREATED_BY"   NVARCHAR(128) DEFAULT NULL,
    "CREATED_TIME" DATE          DEFAULT NULL,
    "UPDATED_BY"   NVARCHAR(128) DEFAULT NULL,
    "UPDATED_TIME" DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Table structure for QUICK_REPLY
-- ----------------------------
CREATE TABLE "QUICK_REPLY"
(
    "ID"      NVARCHAR(32) NOT NULL,
    "USER_ID" NVARCHAR(32)  DEFAULT NULL,
    "MESSAGE" NVARCHAR(255) DEFAULT NULL,
    "TYPE"    INT           DEFAULT 1,
    "NUM"     INT           DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of QUICK_REPLY
-- ----------------------------
INSERT INTO "QUICK_REPLY" VALUES ('016ce873d1d34006931dc6668cd121b1', NULL, '给您带来不好的感受我们深感抱歉。', 0, 1);
INSERT INTO "QUICK_REPLY" VALUES ('016ce873d1d34006931dc6668cd121b2', NULL, '我非常理解您的心情。', 0, 2);
INSERT INTO "QUICK_REPLY" VALUES ('016ce873d1d34006931dc6668cd121b3', NULL, '我理解您怎么会生气，换成是我也会跟您一样的感受。', 0, 3);
INSERT INTO "QUICK_REPLY" VALUES ('016ce873d1d34006931dc6668cd121b4', NULL, '请您不要着急，我非常理解您的心情，我们一定会竭尽全力为您解决的。', 0, 4);
INSERT INTO "QUICK_REPLY" VALUES ('016ce873d1d34006931dc6668cd121b5', NULL, '我非常理解您的心情，请放心，我们一定查证清楚，然后给您回复。', 0, 5);
INSERT INTO "QUICK_REPLY" VALUES ('016ce873d1d34006931dc6668cd121b6', NULL, '由于这个原因，给您带来的不便，深表歉意。', 0, 6);
INSERT INTO "QUICK_REPLY" VALUES ('016ce873d1d34006931dc6668cd121b7', NULL, '这个问题需要查询一下，请您稍等一下好吗？', 0, 7);
INSERT INTO "QUICK_REPLY" VALUES ('016ce873d1d34006931dc6668cd121b8', NULL, '感谢您的耐心等待。', 0, 8);
INSERT INTO "QUICK_REPLY" VALUES ('016ce873d1d34006931dc6668cd121b9', NULL, '非常感谢您提出的宝贵建议，我们会向上反映，因为有了您的建议，我们才会不断进步。', 0, 9);
INSERT INTO "QUICK_REPLY" VALUES ('016ce873d1d34006931dc6668cd121ba', NULL, '感谢您对我们公司的支持，您反馈的建议，将成为我们公司日后改进工作的重要参考内容。', 0, 10);

-- ----------------------------
-- Table structure for SYS_ACD
-- ----------------------------
CREATE TABLE "SYS_ACD"
(
    "ID"                     NVARCHAR(32) NOT NULL,
    "ACD_NAME"               NVARCHAR(50)  DEFAULT NULL,
    "EXCLUDE_HOLIDAY"        INT           DEFAULT NULL,
    "EXTIME_SERVICE_TYPE"    INT           DEFAULT NULL,
    "EXTIME_SERVICE_WORDS"   NVARCHAR(500) DEFAULT NULL,
    "ENABLE_BIZ"             INT           DEFAULT NULL,
    "BIZ_CHOOSE_ERR_TYPE"    INT           DEFAULT NULL,
    "BIZ_ERR_TIME_THRESHOLD" INT           DEFAULT NULL,
    "MULTI_SG_STRATEGY_ID"   NVARCHAR(32)  DEFAULT NULL,
    "CREATOR"                NVARCHAR(32)  DEFAULT NULL,
    "EDITOR"                 NVARCHAR(32)  DEFAULT NULL,
    "CREATE_TIME"            DATE          DEFAULT NULL,
    "EDIT_TIME"              DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of SYS_ACD
-- ----------------------------
INSERT INTO "SYS_ACD" VALUES ('061505e3d58000159671DEFALUTACD00', '默认策略', 0, 1, '您好，目前正处于坐席非工作时间，请您在工作时间再与我们联系。', 0, NULL, NULL, NULL, '27e55a01b74342189b000000000admin', '27e55a01b74342189b000000000admin', '2020-09-30 18:25:10.000', '2020-09-30 18:25:10.000');

-- ----------------------------
-- Table structure for SYS_ACD_BIZ
-- ----------------------------
CREATE TABLE "SYS_ACD_BIZ"
(
    "ID"                   NVARCHAR(32) NOT NULL,
    "BIZ_NAME"             NVARCHAR(255) DEFAULT NULL,
    "ACD_ID"               NVARCHAR(32)  DEFAULT NULL,
    "EXCLUDE_HOLIDAY"      INT           DEFAULT NULL,
    "EXTIME_SERVICE_TYPE"  INT           DEFAULT NULL,
    "EXTIME_SERVICE_WORDS" NVARCHAR(500) DEFAULT NULL,
    "DEFAULT_BIZ"          INT           DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of SYS_ACD_BIZ
-- ----------------------------
INSERT INTO "SYS_ACD_BIZ" VALUES ('061505e3d58000159671DEFALUTBIZ00', '默认业务', '061505e3d58000159671DEFALUTACD00', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for SYS_ACD_BIZ_GROUP
-- ----------------------------
CREATE TABLE "SYS_ACD_BIZ_GROUP"
(
    "ID"          NVARCHAR(32) NOT NULL,
    "TYPE"        INT          DEFAULT NULL,
    "ACD_ID"      NVARCHAR(32) DEFAULT NULL,
    "GROUP_ORDER" INT          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of SYS_ACD_BIZ_GROUP
-- ----------------------------
INSERT INTO "SYS_ACD_BIZ_GROUP" VALUES ('061505e3d580001DEFALUTGROUPBIZ00', 0, '061505e3d58000159671DEFALUTACD00', 0);

-- ----------------------------
-- Table structure for SYS_ACD_BIZ_QUEUE
-- ----------------------------
CREATE TABLE "SYS_ACD_BIZ_QUEUE"
(
    "ID"                       NVARCHAR(32) NOT NULL,
    "ACD_ID"                   NVARCHAR(32) DEFAULT NULL,
    "BIZ_GROUP_ID"             NVARCHAR(32) DEFAULT NULL,
    "BIZ_ORDER"                INT          DEFAULT NULL,
    "TYPE"                     INT          DEFAULT NULL,
    "ENABLE_VIP_FIRST"         INT          DEFAULT NULL,
    "VIP_FIRST_TYPE"           INT          DEFAULT NULL,
    "VIP_INTERVAL_NUM"         INT          DEFAULT NULL,
    "REPORT_TIME_INTERVAL"     INT          DEFAULT NULL,
    "ENABLE_WAITTING_OVERFLOW" INT          DEFAULT NULL,
    "WAIT_TIME_THRESHOLD"      INT          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of SYS_ACD_BIZ_QUEUE
-- ----------------------------
INSERT INTO "SYS_ACD_BIZ_QUEUE" VALUES ('061505e3d58001DEFALUTBIZQUEUE000', '061505e3d58000159671DEFALUTACD00', '061505e3d580001DEFALUTGROUPBIZ00', 1, 0, 0, NULL, NULL, 60, 0, NULL);

-- ----------------------------
-- Table structure for SYS_ACD_BIZ_X_GROUP
-- ----------------------------
CREATE TABLE "SYS_ACD_BIZ_X_GROUP"
(
    "ID"       NVARCHAR(32) NOT NULL,
    "GROUP_ID" NVARCHAR(32) DEFAULT NULL,
    "BIZ_ID"   NVARCHAR(32) DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Records of SYS_ACD_BIZ_X_GROUP
-- ----------------------------
INSERT INTO "SYS_ACD_BIZ_X_GROUP" VALUES ('061505e3d58001DEFALUTGROUPXBIZ00', '061505e3d580001DEFALUTGROUPBIZ00', '061505e3d58000159671DEFALUTBIZ00');

-- ----------------------------
-- Table structure for SYS_ACD_RESET_TIME
-- ----------------------------
CREATE TABLE "SYS_ACD_RESET_TIME"
(
    "ID"         NVARCHAR(32) NOT NULL,
    "ACD_ID"     NVARCHAR(32) DEFAULT NULL,
    "RESET_TIME" NVARCHAR(30) DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Table structure for SYS_ACD_TIME
-- ----------------------------
CREATE TABLE "SYS_ACD_TIME"
(
    "ID"          NVARCHAR(32) NOT NULL,
    "FOREIGN_KEY" NVARCHAR(32) DEFAULT NULL,
    "TYPE"        INT          DEFAULT NULL,
    "WEEKDAY"     INT          DEFAULT NULL,
    "START_TIME"  NVARCHAR(30) DEFAULT NULL,
    "END_TIME"    NVARCHAR(30) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of SYS_ACD_TIME
-- ----------------------------
INSERT INTO "SYS_ACD_TIME" VALUES ('00159705446142400000061505e3d580', '061505e3d58000159671DEFALUTACD00', 0, 1, '00:00', '23:59');
INSERT INTO "SYS_ACD_TIME" VALUES ('00159705446142400001061505e3d580', '061505e3d58000159671DEFALUTACD00', 0, 2, '00:00', '23:59');
INSERT INTO "SYS_ACD_TIME" VALUES ('00159705446142400002061505e3d580', '061505e3d58000159671DEFALUTACD00', 0, 3, '00:00', '23:59');
INSERT INTO "SYS_ACD_TIME" VALUES ('00159705446142400003061505e3d580', '061505e3d58000159671DEFALUTACD00', 0, 4, '00:00', '23:59');
INSERT INTO "SYS_ACD_TIME" VALUES ('00159705446142400004061505e3d580', '061505e3d58000159671DEFALUTACD00', 0, 5, '00:00', '23:59');
INSERT INTO "SYS_ACD_TIME" VALUES ('00159705446142400005061505e3d580', '061505e3d58000159671DEFALUTACD00', 0, 6, '00:00', '23:59');
INSERT INTO "SYS_ACD_TIME" VALUES ('00159705446142500006061505e3d580', '061505e3d58000159671DEFALUTACD00', 0, 7, '00:00', '23:59');

-- ----------------------------
-- Table structure for SYS_ACD_X_CHANNEL
-- ----------------------------
CREATE TABLE "SYS_ACD_X_CHANNEL"
(
    "ID"         NVARCHAR(32) NOT NULL,
    "ACD_ID"     NVARCHAR(32) DEFAULT NULL,
    "CHANNEL_ID" NVARCHAR(32) DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Table structure for SYS_ACD_X_SKILL_GROUP
-- ----------------------------
CREATE TABLE "SYS_ACD_X_SKILL_GROUP"
(
    "ID"             NVARCHAR(32) NOT NULL,
    "FOREIGN_KEY"    NVARCHAR(32) DEFAULT NULL,
    "TYPE"           INT          DEFAULT NULL,
    "SKILL_GROUP_ID" NVARCHAR(32) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Table structure for SYS_CUS_FIELD
-- ----------------------------
CREATE TABLE "SYS_CUS_FIELD"
(
    "ID"            NVARCHAR(32) NOT NULL,
    "NAME"          NVARCHAR(32)  DEFAULT NULL,
    "TAG"           NVARCHAR(32)  DEFAULT NULL,
    "TAG_LEVEL"     NVARCHAR(32)  DEFAULT NULL,
    "TYPE"          NVARCHAR(32)  DEFAULT NULL,
    "DESCRIPTION"   NVARCHAR(512) DEFAULT NULL,
    "CREATOR"       NVARCHAR(32)  DEFAULT NULL,
    "CATEGORY_CODE" NVARCHAR(30)  DEFAULT NULL,
    "CREATE_TIME"   DATE          DEFAULT NULL,
    "EDITOR"        NVARCHAR(32)  DEFAULT NULL,
    "EDIT_TIME"     DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of SYS_CUS_FIELD
-- ----------------------------
INSERT INTO "SYS_CUS_FIELD" VALUES ('156ce873d1d34006931dc6668cd12abe', '工单备注', 'workorder_remark', 'default', 'textarea', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('1f5c3e23434343e2b39d92d04e2eb8f2', '工单归属', 'workorder_owner', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('23deb9732ca145dcaae8ab4d08b5742f', '来源终端', 'terminal', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('2f47b055346a4f0a8637411e864ac837', '首次电话联系时间', 'first_call_time', 'default', 'datatimepicker', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('3322ec8d65a64dc38e3fa5100fe6da9b', '地址', 'address', 'default', 'textarea', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('37c223ab5d4d454fb82fff5982f24431', '动态用户名', '{{userId}}', 'default', 'textfield_dynamic', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('38dfd8b42680495c9488034fa0ef7552', '手机', 'mobile', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('3b4526f278b147e8b261fe49bdf28407', '工单类型', 'workorder_type', 'default', 'select', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('3ccbbc5dd05649898f36777124c6a312', '邮箱', 'email', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('576e177d32c7420ab721e2b1e6bf60d2', '业务类型', 'business_type', 'default', 'select', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('65b23ece32ff4213b0c2c11a8a7873ed', '负责人', 'director', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'public', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('68ff5b3af4544cb5b3a41f880ab1c24c', '工单有效时间', 'workorder_valid_time', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('8c25679414ed48e8a4c3a4358a06d3b0', '客户等级', 'level', 'default', 'select', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('93975c9d0521497399460d100a97da20', '工单责任人', 'workorder_director', 'default', 'select_dynamic', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('961709bb96ce42f585119e8c5823e0e7', '最后一次电话联系时间', 'last_call_time', 'default', 'datatimepicker', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('a22ac17c27c945b78b4dd3f6e0707ab4', '工单创建人', 'workorder_creator', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('b82b0b99f0e44b579f01fe8956cc4990', '首次会话时间', 'first_session_time', 'default', 'datatimepicker', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('cf8fa5a9cfb54cfc9e65cce2eef11825', '最后一次会话时间', 'last_session_time', 'default', 'datatimepicker', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('d78e0379ae0d4c88857b9b6c5decb97d', '姓名', 'name', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('e5cd4be53925446880b6f3d624bdf9b2', '访客备注', 'visitor_remark', 'default', 'textarea', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('e722c640ec904909ba2ffbe7f092769c', '访客渠道', 'platform', 'default', 'select_dynamic', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('e895e1275a4f4dd8a77a30bc2b02aa7a', '客户属性', 'customer_property', 'preset', 'multi_select', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('f4a19e9cd6114b1282d7adc7f97706d0', '创建时间', 'create_time', 'default', 'datatimepicker', '系统默认类型', '0015849442017540000000155d4c6010', 'public', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('f509265f583e49ada43faf9942e8704b', '工单指派', 'workorder_assignee', 'default', 'select_dynamic', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('fe7e3973dc2d4fbe97b42ac69edbdfbc', '更新时间', 'update_time', 'default', 'datatimepicker', '系统默认类型', '0015849442017540000000155d4c6010', 'public', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');
INSERT INTO "SYS_CUS_FIELD" VALUES ('feac1563bb644ec8852b24a28e5177d1', '工单售后', 'workorder_after_sale', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', '2020-09-30 18:25:10.000', '0015849442017540000000155d4c6010', '2020-09-30 18:25:10.000');

-- ----------------------------
-- Table structure for SYS_CUS_FIELD_CATE
-- ----------------------------
CREATE TABLE "SYS_CUS_FIELD_CATE"
(
    "ID"        NVARCHAR(32) NOT NULL,
    "PARENT_ID" NVARCHAR(32)  DEFAULT NULL,
    "CODE"      NVARCHAR(30)  DEFAULT NULL,
    "NAME"      NVARCHAR(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of SYS_CUS_FIELD_CATE
-- ----------------------------
INSERT INTO "SYS_CUS_FIELD_CATE" VALUES ('a59a939eb3a546f2bf49c41f5257c8bc', NULL, 'default', '系统默认');
INSERT INTO "SYS_CUS_FIELD_CATE" VALUES ('b4dea09172394cf6a02aa8e9790b94df', NULL, 'customer', '客户管理');
INSERT INTO "SYS_CUS_FIELD_CATE" VALUES ('bbe9fdbde831453482afef5747a25e0b', NULL, 'workorder', '工单管理');
INSERT INTO "SYS_CUS_FIELD_CATE" VALUES ('c3021e2f4b604b3285662907c969e2c1', NULL, 'public', '公用字段');

-- ----------------------------
-- Table structure for SYS_CUS_FIELD_VAL
-- ----------------------------
CREATE TABLE "SYS_CUS_FIELD_VAL"
(
    "ID"       NVARCHAR(32) NOT NULL,
    "FIELD_ID" NVARCHAR(32)  DEFAULT NULL,
    "VAL"      NVARCHAR(128) DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Records of SYS_CUS_FIELD_VAL
-- ----------------------------
INSERT INTO "SYS_CUS_FIELD_VAL" VALUES ('1be83da03e0d474292e6f5f1927f2c96', '576e177d32c7420ab721e2b1e6bf60d2', '售中');
INSERT INTO "SYS_CUS_FIELD_VAL" VALUES ('2efb6764d1094efa949bfa5020e6c616', '3b4526f278b147e8b261fe49bdf28407', '自动');
INSERT INTO "SYS_CUS_FIELD_VAL" VALUES ('305a2c1a0e9a4b348da974c607d07a98', 'e895e1275a4f4dd8a77a30bc2b02aa7a', '售中');
INSERT INTO "SYS_CUS_FIELD_VAL" VALUES ('553d73af5c294329be5722a129108b5f', 'e895e1275a4f4dd8a77a30bc2b02aa7a', '售前');
INSERT INTO "SYS_CUS_FIELD_VAL" VALUES ('85066f63569d4504a17b42c27f82319a', '3b4526f278b147e8b261fe49bdf28407', '手动');
INSERT INTO "SYS_CUS_FIELD_VAL" VALUES ('96ce7c053f3747ffb76591d24a98f28c', 'e895e1275a4f4dd8a77a30bc2b02aa7a', '售后');
INSERT INTO "SYS_CUS_FIELD_VAL" VALUES ('9c91e8826ff74c58b879fe607b435f81', '8c25679414ed48e8a4c3a4358a06d3b0', 'VIP');
INSERT INTO "SYS_CUS_FIELD_VAL" VALUES ('b9bf75f0eef741ee834adfaf877e5783', '576e177d32c7420ab721e2b1e6bf60d2', '售前');
INSERT INTO "SYS_CUS_FIELD_VAL" VALUES ('d558fd3f5c8b4d8bba7753ecc35c6dd7', '8c25679414ed48e8a4c3a4358a06d3b0', '普通');
INSERT INTO "SYS_CUS_FIELD_VAL" VALUES ('eaed3f44b2504e48bd6b1d02dd87dc66', '576e177d32c7420ab721e2b1e6bf60d2', '售后');

-- ----------------------------
-- Table structure for SYS_OP_LOG_MODULE
-- ----------------------------
CREATE TABLE "SYS_OP_LOG_MODULE"
(
    "ID"          NVARCHAR(32) NOT NULL,
    "NAME"        NVARCHAR(255) DEFAULT NULL,
    "PARENT_CODE" INT           DEFAULT NULL,
    "CODE"        INT           DEFAULT NULL,
    "APP_TAG"     NVARCHAR(20)  DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Records of SYS_OP_LOG_MODULE
-- ----------------------------
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450aa99999', '所有模块', NULL, 99999, 'all');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad71000', '用户', 99999, 1000, 'aicc-bp');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad71001', '坐席管理', 1000, 1001, 'aicc-bp');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad71002', '角色权限管理', 1000, 1002, 'aicc-bp');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad71003', '技能组管理', 1000, 1003, 'aicc-bp');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad72000', '系统', 99999, 2000, 'aicc-bp');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad72001', '自定义字段', 2000, 2001, 'aicc-bp');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad72002', '操作记录', 2000, 2002, 'aicc-bp');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad73000', '客户', 99999, 3000, 'aicc-crm');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad73001', '客户管理', 3000, 3001, 'aicc-crm');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad73002', '计划管理', 3000, 3002, 'aicc-crm');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad73003', '客户信息', 3000, 3003, 'aicc-crm');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad73004', '客户标签', 3000, 3004, 'aicc-crm');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad73005', '黑名单客户', 3000, 3005, 'aicc-crm');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad73006', '客户保存规则', 3000, 3006, 'aicc-crm');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad73007', '联系计划设置', 3000, 3007, 'aicc-crm');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad73008', '当前客户', 3000, 3008, 'aicc-crm');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad74000', '工单', 99999, 4000, 'aicc-order');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad74001', '工单模板', 4000, 4001, 'aicc-order');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad74002', '工单管理', 4000, 4002, 'aicc-order');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad75000', '呼叫', 99999, 5000, 'aicc-icall');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad75001', '任务管理', 5000, 5001, 'aicc-icall');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad75002', '重呼策略管理', 5000, 5002, 'aicc-icall');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad75003', '日期管理', 5000, 5003, 'aicc-icall');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad75004', '线路管理', 5000, 5004, 'aicc-icall');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad75005', '外呼黑名单管理', 5000, 5005, 'aicc-icall');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad75006', '应用管理', 5000, 5006, 'aicc-icall');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad75007', '呼入黑名单管理', 5000, 5007, 'aicc-icall');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad75008', '流程设置', 5000, 5008, 'aicc-icall');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad75009', '知识管理', 5000, 5009, 'aicc-icall');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad75010', '外呼通话日志', 5000, 5010, 'aicc-icall');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad75011', '名单结果详情', 5000, 5011, 'aicc-icall');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad75012', '呼入通话日志', 5000, 5012, 'aicc-icall');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad75013', '操作日志', 5000, 5013, 'aicc-icall');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad75014', '外呼报表', 5000, 5014, 'aicc-icall');
INSERT INTO "SYS_OP_LOG_MODULE" VALUES ('9a7852301a224d189d9c76450ad75015', '呼入报表', 5000, 5015, 'aicc-icall');

-- ----------------------------
-- Table structure for SYS_PLATFORM_ACD
-- ----------------------------
CREATE TABLE "SYS_PLATFORM_ACD"
(
    "ID"          NVARCHAR(32) NOT NULL,
    "SOURCE_ID"   NVARCHAR(32) DEFAULT NULL,
    "ACD_ID"      NVARCHAR(32) DEFAULT NULL,
    "CREATOR"     NVARCHAR(32) DEFAULT NULL,
    "EDITOR"      NVARCHAR(32) DEFAULT NULL,
    "CREATE_TIME" DATE         DEFAULT NULL,
    "EDIT_TIME"   DATE         DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Table structure for SYS_PLATFORM_DETAIL
-- ----------------------------
CREATE TABLE "SYS_PLATFORM_DETAIL"
(
    "ID"            NVARCHAR(32) NOT NULL,
    "PLATFORM_TAG"  NVARCHAR(100) DEFAULT NULL,
    "PLATFORM_NAME" NVARCHAR(100) DEFAULT NULL,
    "SPA_ID"        NVARCHAR(32)  DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Table structure for SYS_PLATFORM_SOURCE
-- ----------------------------
CREATE TABLE "SYS_PLATFORM_SOURCE"
(
    "ID"            NVARCHAR(32) NOT NULL,
    "SOURCE_NAME"   NVARCHAR(100) DEFAULT NULL,
    "FIXED_CHANNEL" NVARCHAR(255) DEFAULT NULL,
    "EX1"           NVARCHAR(255) DEFAULT NULL,
    "EX2"           NVARCHAR(255) DEFAULT NULL,
    "EX3"           NVARCHAR(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Records of SYS_PLATFORM_SOURCE
-- ----------------------------
INSERT INTO "SYS_PLATFORM_SOURCE" VALUES ('1', 'iBot-PRO', 'pro_', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for SYS_VISIT_ORIGIN
-- ----------------------------
CREATE TABLE "SYS_VISIT_ORIGIN"
(
    "ID"          NVARCHAR(32) NOT NULL,
    "TAG"         NVARCHAR(50)  DEFAULT NULL,
    "ORIGIN_NAME" NVARCHAR(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Records of SYS_VISIT_ORIGIN
-- ----------------------------
INSERT INTO "SYS_VISIT_ORIGIN" VALUES ('8e40b4cd2e9b4b0aaadb2905a17eb57a', 'weixin', '微信');
INSERT INTO "SYS_VISIT_ORIGIN" VALUES ('9a7fbe0bb5cc4302b997374101f04052', 'web', '网页');

