-- ----------------------------
-- Table structure for AUTH_MENU
-- ----------------------------
CREATE TABLE "AUTH_MENU"
(
    "ID"           VARCHAR2(32) NOT NULL,
    "PARENT_ID"    VARCHAR2(32)   DEFAULT NULL,
    "MENU_NAME"    VARCHAR2(128)  DEFAULT NULL,
    "PATH"         VARCHAR2(128)  DEFAULT NULL,
    "TYPE"         NUMBER(11)     DEFAULT NULL,
    "ICON"         VARCHAR2(128)  DEFAULT NULL,
    "BH"           VARCHAR2(1024) DEFAULT NULL,
    "DETAIL"       VARCHAR2(1024) DEFAULT NULL,
    "DESCRIPTION"  VARCHAR2(1024) DEFAULT NULL,
    "APP"          VARCHAR2(32)   DEFAULT NULL,
    "PRIORITY"     NUMBER(11)     DEFAULT NULL,
    "DISPLAY_TYPE" NUMBER(11)     DEFAULT NULL,
    "IS_SHOW"      NUMBER(1)      DEFAULT NULL,
    "CREATOR"      VARCHAR2(32)   DEFAULT NULL,
    "CREATE_TIME"  DATE           DEFAULT NULL,
    "EDITOR"       VARCHAR2(32)   DEFAULT NULL,
    "EDIT_TIME"    DATE           DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for AUTH_MENU
-- ----------------------------
COMMENT ON TABLE "AUTH_MENU" IS '用户权限';
COMMENT ON COLUMN "AUTH_MENU"."ID" IS '主键ID';
COMMENT ON COLUMN "AUTH_MENU"."PARENT_ID" IS '父节点ID';
COMMENT ON COLUMN "AUTH_MENU"."MENU_NAME" IS '权限名称';
COMMENT ON COLUMN "AUTH_MENU"."PATH" IS '请求路径';
COMMENT ON COLUMN "AUTH_MENU"."TYPE" IS '权限类型';
COMMENT ON COLUMN "AUTH_MENU"."ICON" IS '图标';
COMMENT ON COLUMN "AUTH_MENU"."BH" IS '节点路径';
COMMENT ON COLUMN "AUTH_MENU"."DETAIL" IS '权限值定义';
COMMENT ON COLUMN "AUTH_MENU"."DESCRIPTION" IS '权限描述';
COMMENT ON COLUMN "AUTH_MENU"."APP" IS '应用标识';
COMMENT ON COLUMN "AUTH_MENU"."PRIORITY" IS '排序';
COMMENT ON COLUMN "AUTH_MENU"."DISPLAY_TYPE" IS '展示方式';
COMMENT ON COLUMN "AUTH_MENU"."IS_SHOW" IS '是否显示,0：false，1：true';
COMMENT ON COLUMN "AUTH_MENU"."CREATOR" IS '创建者';
COMMENT ON COLUMN "AUTH_MENU"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "AUTH_MENU"."EDITOR" IS '编辑人';
COMMENT ON COLUMN "AUTH_MENU"."EDIT_TIME" IS '更新时间';

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
INSERT INTO "AUTH_MENU" VALUES ('110000', '100000', '工作报表', '/workreport', 0, NULL, '1001.1001', NULL, '开启后角色可访问浏览工作报表模块', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('11001', '11000', '查询操作记录', '/system/operation_log/getPaged_get', 1, NULL, '1000.1000.1000L', NULL, NULL, 'aicc_bp', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('111000', '110000', '自定义报表', '/workreport/autoReport', 0, NULL, '1001.1001.1000L', NULL, '开启后角色可访问浏览自定义报表页面', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('111100', '111000', '报表方案管理', NULL, 0, NULL, '1001.1001.1000.1000', NULL, '开启后角色可访问浏览报表方案管理页面', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('111110', '111100', '删除报表方案', NULL, 0, NULL, '1001.1001.1000.1000.1000L', NULL, '设定角色可删除已有报表方案', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('111120', '111100', '编辑报表方案', NULL, 0, NULL, '1001.1001.1000.1000.1001L', NULL, '设定角色可对已有报表方案进行编辑', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('111130', '111100', '新建报表方案', NULL, 0, NULL, '1001.1001.1000.1000.1002L', NULL, '设定角色可新建自定义报表方案', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('112000', '110000', '坐席报表', '/workreport/seatReport', 0, NULL, '1001.1001.1001L', NULL, '开启后角色可访问浏览坐席报表页面', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('112100', '112000', '坐席报表查询数据范围', NULL, 2, NULL, '1001.1001.1001.1000L', '[{\"name\":\"仅可查看自己\",\"value\":\"jkckzj\"},{\"name\":\"可查看所在坐席组\",\"value\":\"ckszzxz\"},{\"name\":\"可查看所属技能组\",\"value\":\"ckssjnz\"},{\"name\":\"可查看所有\",\"value\":\"ALL\"},{\"name\":\"自定义跨组查看\",\"value\":\"zdykz\"}]', '设定角色可查询坐席报表的数据范围', 'aicc_wb', NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('113000', '110000', '会话报表', '/workreport/chatReport', 0, NULL, '1001.1001.1002L', NULL, '开启后角色可访问浏览会话报表页面', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('113100', '113000', '技能组会话量', NULL, 0, NULL, '1001.1001.1002.1000', NULL, '开启后角色可访问浏览技能组会话量标签页', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('113110', '113100', '查询技能组数据范围', NULL, 2, NULL, '1001.1001.1002.1000.1000L', NULL, '设定角色可查询的技能组范围', 'aicc_wb', NULL, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('113200', '113000', '会话量趋势', NULL, 0, NULL, '1001.1001.1002.1001', NULL, '开启后角色可访问浏览会话量趋势标签页', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('113210', '113200', '会话量数据查询范围', NULL, 2, NULL, '1001.1001.1002.1001.1000L', '[{\"name\":\"仅可查看自己\",\"value\":\"jkckzj\"},{\"name\":\"可查看所在坐席组\",\"value\":\"ckszzxz\"},{\"name\":\"可查看所属技能组\",\"value\":\"ckssjnz\"},{\"name\":\"可查看所有\",\"value\":\"ALL\"},{\"name\":\"自定义跨组查看\",\"value\":\"zdykz\"}]', '设定角色可查询会话量趋势的数据范围\r\n\r\n', 'aicc_wb', NULL, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "AUTH_MENU" VALUES ('114000', '110000', '数据概况', '/workreport/dataReport', 0, NULL, '1001.1001.1003L', NULL, '开启后角色可访问浏览数据概况页面', 'aicc_wb', NULL, 0, NULL, NULL, NULL, NULL, NULL);
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
    "ID"          VARCHAR2(32) NOT NULL,
    "ROLE_NAME"   VARCHAR2(128)  DEFAULT NULL,
    "ROLE_TYPE"   NUMBER(11)     DEFAULT NULL,
    "DESCRIPTION" VARCHAR2(1024) DEFAULT NULL,
    "CREATOR"     VARCHAR2(32)   DEFAULT NULL,
    "CREATE_TIME" DATE           DEFAULT NULL,
    "EDITOR"      VARCHAR2(32)   DEFAULT NULL,
    "EDIT_TIME"   DATE           DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for AUTH_ROLE
-- ----------------------------
COMMENT ON TABLE "AUTH_ROLE" IS '用户角色';
COMMENT ON COLUMN "AUTH_ROLE"."ID" IS '主键ID';
COMMENT ON COLUMN "AUTH_ROLE"."ROLE_NAME" IS '角色名称';
COMMENT ON COLUMN "AUTH_ROLE"."ROLE_TYPE" IS '角色类型';
COMMENT ON COLUMN "AUTH_ROLE"."DESCRIPTION" IS '角色描述';
COMMENT ON COLUMN "AUTH_ROLE"."CREATOR" IS '创建者';
COMMENT ON COLUMN "AUTH_ROLE"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "AUTH_ROLE"."EDITOR" IS '编辑人';
COMMENT ON COLUMN "AUTH_ROLE"."EDIT_TIME" IS '更新时间';

-- ----------------------------
-- Records of AUTH_ROLE
-- ----------------------------
INSERT INTO "AUTH_ROLE" VALUES ('27e55a01b74342189b00000adminrole', '管理员', 1, NULL, '0015849442017540000000155d4c6010', TO_DATE('2020-04-19 19:34:04', 'SYYYY-MM-DD HH24:MI:SS'), NULL, TO_DATE('2020-04-19 19:34:04', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for AUTH_ROLE_TYPE_DICT
-- ----------------------------
CREATE TABLE "AUTH_ROLE_TYPE_DICT"
(
    "ID"             VARCHAR2(32) NOT NULL,
    "ROLE_TYPE_NAME" VARCHAR2(128) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for AUTH_ROLE_TYPE_DICT
-- ----------------------------
COMMENT ON TABLE "AUTH_ROLE_TYPE_DICT" IS '角色类型定义';
COMMENT ON COLUMN "AUTH_ROLE_TYPE_DICT"."ID" IS '主键ID';
COMMENT ON COLUMN "AUTH_ROLE_TYPE_DICT"."ROLE_TYPE_NAME" IS '角色类型名称';

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
    "ID"      VARCHAR2(32) NOT NULL,
    "ROLE_ID" VARCHAR2(32)   DEFAULT NULL,
    "MENU_ID" VARCHAR2(32)   DEFAULT NULL,
    "DETAIL"  VARCHAR2(4000) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for AUTH_ROLE_X_MENU
-- ----------------------------
COMMENT ON TABLE "AUTH_ROLE_X_MENU" IS '角色权限关联';
COMMENT ON COLUMN "AUTH_ROLE_X_MENU"."ID" IS '主键ID';
COMMENT ON COLUMN "AUTH_ROLE_X_MENU"."ROLE_ID" IS '角色ID';
COMMENT ON COLUMN "AUTH_ROLE_X_MENU"."MENU_ID" IS '权限ID';
COMMENT ON COLUMN "AUTH_ROLE_X_MENU"."DETAIL" IS '权限值';

-- ----------------------------
-- Table structure for AUTH_SKILL_GROUP
-- ----------------------------
CREATE TABLE "AUTH_SKILL_GROUP"
(
    "ID"          VARCHAR2(32) NOT NULL,
    "NAME"        VARCHAR2(32) DEFAULT NULL,
    "CREATOR"     VARCHAR2(32) DEFAULT NULL,
    "CREATE_TIME" DATE         DEFAULT NULL,
    "EDITOR"      VARCHAR2(32) DEFAULT NULL,
    "EDIT_TIME"   DATE         DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for AUTH_SKILL_GROUP
-- ----------------------------
COMMENT ON TABLE "AUTH_SKILL_GROUP" IS '技能组';
COMMENT ON COLUMN "AUTH_SKILL_GROUP"."ID" IS '主键ID';
COMMENT ON COLUMN "AUTH_SKILL_GROUP"."NAME" IS '组名';
COMMENT ON COLUMN "AUTH_SKILL_GROUP"."CREATOR" IS '创建人';
COMMENT ON COLUMN "AUTH_SKILL_GROUP"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "AUTH_SKILL_GROUP"."EDITOR" IS '编辑人';
COMMENT ON COLUMN "AUTH_SKILL_GROUP"."EDIT_TIME" IS '更新时间';

-- ----------------------------
-- Records of AUTH_SKILL_GROUP
-- ----------------------------
INSERT INTO "AUTH_SKILL_GROUP" VALUES ('0015870307129860015100155d4c6010', '默认技能组', '0015849442017540000000155d4c6010', TO_DATE('2020-04-16 17:51:53', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-16 17:51:53', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for AUTH_SKILL_GROUP_BIZ_ITEM
-- ----------------------------
CREATE TABLE "AUTH_SKILL_GROUP_BIZ_ITEM"
(
    "ID"                 VARCHAR2(32) NOT NULL,
    "LABEL"              VARCHAR2(64)  DEFAULT NULL,
    "NAME"               VARCHAR2(64)  DEFAULT NULL,
    "SKILL_GROUP_BIZ_ID" VARCHAR2(32)  DEFAULT NULL,
    "TYPE"               VARCHAR2(32)  DEFAULT NULL,
    "PLACEHOLDER"        VARCHAR2(255) DEFAULT NULL,
    "TIP"                VARCHAR2(255) DEFAULT NULL,
    "CUST_FIELD_TAG"     VARCHAR2(32)  DEFAULT NULL,
    "PRIORITY"           NUMBER(11)    DEFAULT NULL,
    "DEFAULT_VALUE"      VARCHAR2(255) DEFAULT NULL,
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
    "ID"   VARCHAR2(32) NOT NULL,
    "NAME" VARCHAR2(64) DEFAULT NULL,
    "TAG"  VARCHAR2(32) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for AUTH_SKILL_GROUP_BIZ_TYPE
-- ----------------------------
COMMENT ON TABLE "AUTH_SKILL_GROUP_BIZ_TYPE" IS '技能组业务类型';
COMMENT ON COLUMN "AUTH_SKILL_GROUP_BIZ_TYPE"."ID" IS '主键ID';
COMMENT ON COLUMN "AUTH_SKILL_GROUP_BIZ_TYPE"."NAME" IS '名称';

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
    "ID"             VARCHAR2(32) NOT NULL,
    "SKILL_GROUP_ID" VARCHAR2(32)  DEFAULT NULL,
    "BIZ_TYPE"       VARCHAR2(32)  DEFAULT NULL,
    "BIZ_KEY"        VARCHAR2(255) DEFAULT NULL,
    "BIZ_VALUE"      VARCHAR2(255) DEFAULT NULL,
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
    "ID"            VARCHAR2(32) NOT NULL,
    "USER_NAME"     VARCHAR2(32)   DEFAULT NULL,
    "PASSWORD"      VARCHAR2(1024) DEFAULT NULL,
    "NICKNAME"      VARCHAR2(128)  DEFAULT NULL,
    "REAL_NAME"     VARCHAR2(128)  DEFAULT NULL,
    "MAX_RECEPTION" INT            DEFAULT NULL,
    "ID_NUM"        VARCHAR2(32)   DEFAULT NULL,
    "MOBILE"        VARCHAR2(32)   DEFAULT NULL,
    "EMAIL"         VARCHAR2(128)  DEFAULT NULL,
    "STATUS"        NUMBER(11)     DEFAULT 0,
    "CREATOR"       VARCHAR2(32)   DEFAULT NULL,
    "CREATE_TIME"   DATE           DEFAULT NULL,
    "EDITOR"        VARCHAR2(32)   DEFAULT NULL,
    "EDIT_TIME"     DATE           DEFAULT NULL,
    "WELCOME"       VARCHAR2(255)  DEFAULT NULL,
    "AVATAR"        VARCHAR2(128)  DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for AUTH_USER
-- ----------------------------
COMMENT ON TABLE "AUTH_USER" IS '用户';
COMMENT ON COLUMN "AUTH_USER"."ID" IS '主键ID';
COMMENT ON COLUMN "AUTH_USER"."USER_NAME" IS '用户名';
COMMENT ON COLUMN "AUTH_USER"."PASSWORD" IS '密码';
COMMENT ON COLUMN "AUTH_USER"."NICKNAME" IS '昵称';
COMMENT ON COLUMN "AUTH_USER"."REAL_NAME" IS '真实姓名';
COMMENT ON COLUMN "AUTH_USER"."MAX_RECEPTION" IS '最大接待数';
COMMENT ON COLUMN "AUTH_USER"."ID_NUM" IS '工号';
COMMENT ON COLUMN "AUTH_USER"."MOBILE" IS '手机号';
COMMENT ON COLUMN "AUTH_USER"."EMAIL" IS '邮箱';
COMMENT ON COLUMN "AUTH_USER"."STATUS" IS '用户状态';
COMMENT ON COLUMN "AUTH_USER"."CREATOR" IS '创建者';
COMMENT ON COLUMN "AUTH_USER"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "AUTH_USER"."EDITOR" IS '编辑人';
COMMENT ON COLUMN "AUTH_USER"."EDIT_TIME" IS '更新时间';
COMMENT ON COLUMN "AUTH_USER"."WELCOME" IS '欢迎语';
COMMENT ON COLUMN "AUTH_USER"."AVATAR" IS '用户图标';

-- ----------------------------
-- Records of AUTH_USER
-- ----------------------------
INSERT INTO "AUTH_USER" VALUES ('0015849442017540000000155d4c6010', 'INCE.SUPERVISOR', '$2a$10$sm8UkRcGM1v.7E/MHpdRYOBkCvMpJ0k6OTpea0PQ7TMfcs6dWfNsW', 'INCE.SUPERVISOR', 'INCE.SUPERVISOR', 3, 'INCE.SUPERVISOR', '', '', 0, '0015849442017540000000155d4c6010', TO_DATE('2020-06-01 12:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-06-01 12:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL);
INSERT INTO "AUTH_USER" VALUES ('27e55a01b74342189b000000000admin', 'admin', '$2a$10$JseURQgQcZnvczype/AAfe5QwIuU7HRqZ3yVrPfUVNvTH6JO2KWOS', 'admin', 'admin', 3, 'admin', '', '', 0, '27e55a01b74342189b000000000admin', TO_DATE('2020-06-01 12:00:00', 'SYYYY-MM-DD HH24:MI:SS'), '27e55a01b74342189b000000000admin', TO_DATE('2020-06-01 12:00:00', 'SYYYY-MM-DD HH24:MI:SS'), NULL, NULL);

-- ----------------------------
-- Table structure for AUTH_USER_GROUP
-- ----------------------------
CREATE TABLE "AUTH_USER_GROUP"
(
    "ID"          VARCHAR2(32) NOT NULL,
    "NAME"        VARCHAR2(32) DEFAULT NULL,
    "PARENT_ID"   VARCHAR2(32) DEFAULT NULL,
    "BH"          VARCHAR2(32) DEFAULT NULL,
    "CREATOR"     VARCHAR2(32) DEFAULT NULL,
    "CREATE_TIME" DATE         DEFAULT NULL,
    "EDITOR"      VARCHAR2(32) DEFAULT NULL,
    "EDIT_TIME"   DATE         DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for AUTH_USER_GROUP
-- ----------------------------
COMMENT ON TABLE "AUTH_USER_GROUP" IS '用户组';
COMMENT ON COLUMN "AUTH_USER_GROUP"."ID" IS '主键ID';
COMMENT ON COLUMN "AUTH_USER_GROUP"."NAME" IS '组名';
COMMENT ON COLUMN "AUTH_USER_GROUP"."PARENT_ID" IS '父节点ID';
COMMENT ON COLUMN "AUTH_USER_GROUP"."BH" IS '节点路径';
COMMENT ON COLUMN "AUTH_USER_GROUP"."CREATOR" IS '创建人';
COMMENT ON COLUMN "AUTH_USER_GROUP"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "AUTH_USER_GROUP"."EDITOR" IS '更新人';
COMMENT ON COLUMN "AUTH_USER_GROUP"."EDIT_TIME" IS '更新时间';

-- ----------------------------
-- Records of AUTH_USER_GROUP
-- ----------------------------
INSERT INTO "AUTH_USER_GROUP" VALUES ('0015868314746520008200155d4c6010', '默认分组', NULL, '1000L', NULL, NULL, '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 00:09:04', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for AUTH_USER_X_GROUP
-- ----------------------------
CREATE TABLE "AUTH_USER_X_GROUP"
(
    "ID"            VARCHAR2(32) NOT NULL,
    "USER_ID"       VARCHAR2(32) DEFAULT NULL,
    "USER_GROUP_ID" VARCHAR2(32) DEFAULT NULL,
    "IS_CHARGE"     NUMBER(11)   DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for AUTH_USER_X_GROUP
-- ----------------------------
COMMENT ON COLUMN "AUTH_USER_X_GROUP"."ID" IS '主键ID';
COMMENT ON COLUMN "AUTH_USER_X_GROUP"."USER_ID" IS '用户ID';
COMMENT ON COLUMN "AUTH_USER_X_GROUP"."USER_GROUP_ID" IS '用户组ID';
COMMENT ON COLUMN "AUTH_USER_X_GROUP"."IS_CHARGE" IS '是否负责人.0：否 ，1：是';

-- ----------------------------
-- Records of AUTH_USER_X_GROUP
-- ----------------------------
INSERT INTO "AUTH_USER_X_GROUP" VALUES ('0', '27e55a01b74342189b000000000admin', '0015868314746520008200155d4c6010', 1);

-- ----------------------------
-- Table structure for AUTH_USER_X_ROLE
-- ----------------------------
CREATE TABLE "AUTH_USER_X_ROLE"
(
    "ID"      VARCHAR2(32) NOT NULL,
    "USER_ID" VARCHAR2(32) DEFAULT NULL,
    "ROLE_ID" VARCHAR2(32) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for auth_user_x_role
-- ----------------------------
COMMENT ON TABLE "AUTH_USER_X_ROLE" IS '用户角色关联';
COMMENT ON COLUMN "AUTH_USER_X_ROLE"."ID" IS '主键ID';
COMMENT ON COLUMN "AUTH_USER_X_ROLE"."USER_ID" IS '用户ID';
COMMENT ON COLUMN "AUTH_USER_X_ROLE"."ROLE_ID" IS '角色ID';

-- ----------------------------
-- Records of AUTH_USER_X_ROLE
-- ----------------------------
INSERT INTO "AUTH_USER_X_ROLE" VALUES ('00159590479316500001061505e3d580', '27e55a01b74342189b000000000admin', '27e55a01b74342189b00000adminrole');

-- ----------------------------
-- Table structure for AUTH_USER_X_SKILL_GROUP
-- ----------------------------
CREATE TABLE "AUTH_USER_X_SKILL_GROUP"
(
    "ID"             VARCHAR2(32) NOT NULL,
    "USER_ID"        VARCHAR2(32) DEFAULT NULL,
    "SKILL_GROUP_ID" VARCHAR2(32) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for AUTH_USER_X_SKILL_GROUP
-- ----------------------------
COMMENT ON TABLE "AUTH_USER_X_SKILL_GROUP" IS '用户技能组关联';
COMMENT ON COLUMN "AUTH_USER_X_SKILL_GROUP"."ID" IS '主键ID';
COMMENT ON COLUMN "AUTH_USER_X_SKILL_GROUP"."USER_ID" IS '用户ID';
COMMENT ON COLUMN "AUTH_USER_X_SKILL_GROUP"."SKILL_GROUP_ID" IS '技能组ID';

-- ----------------------------
-- Records of AUTH_USER_X_SKILL_GROUP
-- ----------------------------
INSERT INTO "AUTH_USER_X_SKILL_GROUP" VALUES ('00159590479316500003061505e3d580', '27e55a01b74342189b000000000admin', '0015870307129860015100155d4c6010');

-- ----------------------------
-- Table structure for CHANNEL_PLATFORM
-- ----------------------------
CREATE TABLE "CHANNEL_PLATFORM"
(
    "PLATFORM_ID"   VARCHAR2(255) NOT NULL,
    "PLATFORM_NAME" VARCHAR2(255) DEFAULT NULL,
    PRIMARY KEY ("PLATFORM_ID")
);

-- ----------------------------
-- comment for CHANNEL_PLATFORM
-- ----------------------------
COMMENT ON COLUMN "CHANNEL_PLATFORM"."PLATFORM_ID" IS '平台ID';
COMMENT ON COLUMN "CHANNEL_PLATFORM"."PLATFORM_NAME" IS '平台名称';

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
    "ID"               VARCHAR2(255) NOT NULL,
    "PLATFORM_ID"      VARCHAR2(255) NOT NULL,
    "NAME"             VARCHAR2(255) NOT NULL,
    "WEB_DOMAIN_NAME"  VARCHAR2(255) DEFAULT NULL,
    "WEB_ACCESS_KEY"   VARCHAR2(255) DEFAULT NULL,
    "WEB_STYLE_ID"     VARCHAR2(32)  DEFAULT NULL,
    "APP_ID"           VARCHAR2(255) DEFAULT NULL,
    "APP_SECRET"       VARCHAR2(255) DEFAULT NULL,
    "BOT"              VARCHAR2(255) NOT NULL,
    "TRIGGER_ON"       NUMBER(1)     NOT NULL,
    "TRIGGER_WORD"     VARCHAR2(255) DEFAULT NULL,
    "GREETING"         VARCHAR2(255) NOT NULL,
    "ROUTE_STRATEGY"   VARCHAR2(255) NOT NULL,
    "TOKEN"            VARCHAR2(255) DEFAULT NULL,
    "ENCODING_AES_KEY" VARCHAR2(255) DEFAULT NULL,
    "CREATE_TIME"      DATE          NOT NULL,
    "UPDATE_TIME"      DATE          NOT NULL,
    "TYPE"             NUMBER(2)     DEFAULT NULL,
    "ORIGIN_ID"        VARCHAR2(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for CHANNEL_INFO
-- ----------------------------
COMMENT ON COLUMN "CHANNEL_INFO"."ID" IS '主键ID';
COMMENT ON COLUMN "CHANNEL_INFO"."PLATFORM_ID" IS '平台id(web,miniprogram,weixin)';
COMMENT ON COLUMN "CHANNEL_INFO"."NAME" IS '渠道实例名称（比如web网站名称）';
COMMENT ON COLUMN "CHANNEL_INFO"."WEB_DOMAIN_NAME" IS 'web网站域名';
COMMENT ON COLUMN "CHANNEL_INFO"."WEB_ACCESS_KEY" IS 'web渠道接入密匙';
COMMENT ON COLUMN "CHANNEL_INFO"."WEB_STYLE_ID" IS 'web渠道对话框样式信息主键ID';
COMMENT ON COLUMN "CHANNEL_INFO"."APP_ID" IS '小程序或公众号appID';
COMMENT ON COLUMN "CHANNEL_INFO"."APP_SECRET" IS '小程序或公众号appSecret';
COMMENT ON COLUMN "CHANNEL_INFO"."BOT" IS '选用的机器人(ID)';
COMMENT ON COLUMN "CHANNEL_INFO"."TRIGGER_ON" IS '是否打开转人工功能';
COMMENT ON COLUMN "CHANNEL_INFO"."TRIGGER_WORD" IS '转人工触发词';
COMMENT ON COLUMN "CHANNEL_INFO"."GREETING" IS '欢迎语';
COMMENT ON COLUMN "CHANNEL_INFO"."ROUTE_STRATEGY" IS '路由策略(ID)';
COMMENT ON COLUMN "CHANNEL_INFO"."TOKEN" IS '小程序或公众号token';
COMMENT ON COLUMN "CHANNEL_INFO"."ENCODING_AES_KEY" IS '小程序或公众号消息加密密钥';
COMMENT ON COLUMN "CHANNEL_INFO"."CREATE_TIME" IS '渠道创建时间';
COMMENT ON COLUMN "CHANNEL_INFO"."UPDATE_TIME" IS '渠道最后修改时间';
COMMENT ON COLUMN "CHANNEL_INFO"."TYPE" IS '小程序或公众号接入类型(0-授权接入;1-秘钥接入)';
COMMENT ON COLUMN "CHANNEL_INFO"."ORIGIN_ID" IS '小程序或公众号原始ID';

-- ----------------------------
-- Table structure for CHANNEL_WEB_STYLE
-- ----------------------------
CREATE TABLE "CHANNEL_WEB_STYLE"
(
    "ID"                         VARCHAR2(32) NOT NULL,
    "DIALOG_STYLE"               VARCHAR2(50)  DEFAULT NULL,
    "BILLBOARD_IMG_PATH"         VARCHAR2(255) DEFAULT NULL,
    "COMPANY_ABBR"               VARCHAR2(50)  DEFAULT NULL,
    "COMPANY_AVATAR_IMG_PATH"    VARCHAR2(255) DEFAULT NULL,
    "MESSAGE_AVATAR_IMG_PATH"    VARCHAR2(255) DEFAULT NULL,
    "SKIN_COLOR"                 VARCHAR2(255) DEFAULT NULL,
    "SHOW_CLOSE_BTN"             NUMBER(1)     DEFAULT NULL,
    "SHOW_TRANSFER_BTN"          NUMBER(1)     DEFAULT NULL,
    "HORIZONTAL_ALIGN"           VARCHAR2(20)  DEFAULT NULL,
    "HORIZONTAL_OFFSET"          NUMBER(20)    DEFAULT NULL,
    "VERTICAL_ALIGN"             VARCHAR2(20)  DEFAULT NULL,
    "VERTICAL_OFFSET"            NUMBER(20)    DEFAULT NULL,
    "WIDTH"                      NUMBER(20)    DEFAULT NULL,
    "HEIGHT"                     NUMBER(20)    DEFAULT NULL,
    "OPEN_BTN_TEXT"              VARCHAR2(50)  DEFAULT NULL,
    "OPEN_BTN_ICON"              VARCHAR2(50)  DEFAULT NULL,
    "OPEN_BTN_VERTICAL_ALIGN"    VARCHAR2(255) DEFAULT NULL,
    "OPEN_BTN_HORIZONTAL_OFFSET" NUMBER(20)    DEFAULT NULL,
    "OPEN_BTN_VERTICAL_OFFSET"   NUMBER(20)    DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for CHANNEL_WEB_STYLE
-- ----------------------------
COMMENT ON TABLE "CHANNEL_WEB_STYLE" IS '用户技能组关联';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."ID" IS '主键ID';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."DIALOG_STYLE" IS '窗口样式风格（default/left_wrap/both_wrap/right_wrap）';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."BILLBOARD_IMG_PATH" IS '企业广告牌（宣传牌）图片相对路径';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."COMPANY_ABBR" IS '企业简称';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."COMPANY_AVATAR_IMG_PATH" IS '企业logo或头像图片相对路径';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."MESSAGE_AVATAR_IMG_PATH" IS '系统消息头像图片相对路径';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."SKIN_COLOR" IS '对话框皮肤颜色（如#FFF）';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."SHOW_CLOSE_BTN" IS '是否显示关闭按钮(显示1，不显示0)';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."SHOW_TRANSFER_BTN" IS '是否显示转人工按钮（显示1，不显示0）';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."HORIZONTAL_ALIGN" IS '聊天框水平对齐方式（left/center/right）';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."HORIZONTAL_OFFSET" IS '聊天框距离左边界水平偏移量（单位：px）';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."VERTICAL_ALIGN" IS '聊天框垂直对齐方式（top/center/bottom）';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."VERTICAL_OFFSET" IS '聊天框距离上边界垂直偏移量（单位：px）';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."WIDTH" IS '聊天框宽度（单位：px）';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."HEIGHT" IS '聊天框高度（单位：px）';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."OPEN_BTN_TEXT" IS '咨询按钮文案';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."OPEN_BTN_ICON" IS '咨询按钮图标样式';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."OPEN_BTN_VERTICAL_ALIGN" IS '咨询按钮垂直方向对齐方式（top/center/bottom）';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."OPEN_BTN_HORIZONTAL_OFFSET" IS '咨询按钮下边界水平偏移量（单位：px）';
COMMENT ON COLUMN "CHANNEL_WEB_STYLE"."OPEN_BTN_VERTICAL_OFFSET" IS '咨询按钮右边界垂直偏移量（单位：px）';

-- ----------------------------
-- Table structure for COMMON_DICT
-- ----------------------------
CREATE TABLE "COMMON_DICT"
(
    "ID"   VARCHAR2(32) NOT NULL,
    "NAME" VARCHAR2(64) DEFAULT NULL,
    "TAG"  VARCHAR2(32) DEFAULT NULL,
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
    "ID"      VARCHAR2(32) NOT NULL,
    "NAME"    VARCHAR2(64)  DEFAULT NULL,
    "DICT_ID" VARCHAR2(32)  DEFAULT NULL,
    "VALUE"   VARCHAR2(255) DEFAULT NULL,
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
    "ID"                    VARCHAR2(32) NOT NULL,
    "CUSTOMER_ID"           VARCHAR2(32)   DEFAULT NULL,
    "CUSTOMER_CHINES_NAME"  VARCHAR2(50)   DEFAULT NULL,
    "REPORT_TIME"           DATE           DEFAULT NULL,
    "EXPIRY_TIME"           DATE           DEFAULT NULL,
    "REPORT_REASONS"        VARCHAR2(600)  DEFAULT NULL,
    "REPORT_CHANNEL"        NUMBER(11)     DEFAULT NULL,
    "REPORT_SERVICE_RECORD" VARCHAR2(1000) DEFAULT NULL,
    "STATUS"                NUMBER(11)     DEFAULT NULL,
    "CREATE_USER"           VARCHAR2(32)   DEFAULT NULL,
    "CREATE_USER_NAME"      VARCHAR2(50)   DEFAULT NULL,
    "CREATE_DATE"           DATE           DEFAULT NULL,
    "MODIFY_USER"           VARCHAR2(255)  DEFAULT NULL,
    "MODIFY_USER_NAME"      VARCHAR2(255)  DEFAULT NULL,
    "MODIFY_DATE"           DATE           DEFAULT NULL,
    "DEL_FLAG"              NUMBER(4)      DEFAULT 0,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for CRM_BLOCKLIST_CUSTOMER
-- ----------------------------
COMMENT ON TABLE "CRM_BLOCKLIST_CUSTOMER" IS '黑名单客户表';
COMMENT ON COLUMN "CRM_BLOCKLIST_CUSTOMER"."ID" IS '主键ID';
COMMENT ON COLUMN "CRM_BLOCKLIST_CUSTOMER"."CUSTOMER_ID" IS '客户ID';
COMMENT ON COLUMN "CRM_BLOCKLIST_CUSTOMER"."CUSTOMER_CHINES_NAME" IS '客户中文名';
COMMENT ON COLUMN "CRM_BLOCKLIST_CUSTOMER"."REPORT_TIME" IS '举报时间';
COMMENT ON COLUMN "CRM_BLOCKLIST_CUSTOMER"."EXPIRY_TIME" IS '失效时间';
COMMENT ON COLUMN "CRM_BLOCKLIST_CUSTOMER"."REPORT_REASONS" IS '举报原因';
COMMENT ON COLUMN "CRM_BLOCKLIST_CUSTOMER"."REPORT_CHANNEL" IS '举报渠道:0-电话;1-在线';
COMMENT ON COLUMN "CRM_BLOCKLIST_CUSTOMER"."REPORT_SERVICE_RECORD" IS '举报服务记录(暂定存数据)';
COMMENT ON COLUMN "CRM_BLOCKLIST_CUSTOMER"."STATUS" IS '状态: 0-待审核;1-生效中;2-已拒绝';
COMMENT ON COLUMN "CRM_BLOCKLIST_CUSTOMER"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "CRM_BLOCKLIST_CUSTOMER"."CREATE_USER_NAME" IS '创建人中文名';
COMMENT ON COLUMN "CRM_BLOCKLIST_CUSTOMER"."CREATE_DATE" IS '创建时间';
COMMENT ON COLUMN "CRM_BLOCKLIST_CUSTOMER"."MODIFY_USER" IS '修改人';
COMMENT ON COLUMN "CRM_BLOCKLIST_CUSTOMER"."MODIFY_USER_NAME" IS '修改人中文名';
COMMENT ON COLUMN "CRM_BLOCKLIST_CUSTOMER"."MODIFY_DATE" IS '修改时间';
COMMENT ON COLUMN "CRM_BLOCKLIST_CUSTOMER"."DEL_FLAG" IS '删除标识：0-正常；1-逻辑删除';

-- ----------------------------
-- Table structure for CRM_CONFIG
-- ----------------------------
CREATE TABLE "CRM_CONFIG"
(
    "ID"               VARCHAR2(32)             NOT NULL,
    "FIELD_NAME"       VARCHAR2(100)  DEFAULT NULL,
    "FIELD_VAL"        VARCHAR2(500)  DEFAULT NULL,
    "FIELD_DESC"       VARCHAR2(1000) DEFAULT NULL,
    "MODULE"           NUMBER(4)      DEFAULT 3 NOT NULL,
    "CREATE_USER"      VARCHAR2(32)   DEFAULT NULL,
    "CREATE_USER_NAME" VARCHAR2(50)   DEFAULT NULL,
    "CREATE_DATE"      DATE           DEFAULT NULL,
    "MODIFY_USER"      VARCHAR2(32)   DEFAULT NULL,
    "MODIFY_USER_NAME" VARCHAR2(50)   DEFAULT NULL,
    "MODIFY_DATE"      DATE           DEFAULT NULL,
    "DEL_FLAG"         NUMBER(4)      DEFAULT 0,
    PRIMARY KEY (ID)
);

-- ----------------------------
-- comment for CRM_CONFIG
-- ----------------------------
COMMENT ON TABLE "CRM_CONFIG" IS '客户管理系统配置表';
COMMENT ON COLUMN "CRM_CONFIG"."ID" IS '主键';
COMMENT ON COLUMN "CRM_CONFIG"."FIELD_NAME" IS '参数名称';
COMMENT ON COLUMN "CRM_CONFIG"."FIELD_VAL" IS '参数值';
COMMENT ON COLUMN "CRM_CONFIG"."FIELD_DESC" IS '参数注释';
COMMENT ON COLUMN "CRM_CONFIG"."MODULE" IS '模块:0:客户保存规则,1:联系计划';
COMMENT ON COLUMN "CRM_CONFIG"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "CRM_CONFIG"."CREATE_USER_NAME" IS '创建人中文名';
COMMENT ON COLUMN "CRM_CONFIG"."CREATE_DATE" IS '创建时间';
COMMENT ON COLUMN "CRM_CONFIG"."MODIFY_USER" IS '修改人';
COMMENT ON COLUMN "CRM_CONFIG"."MODIFY_USER_NAME" IS '修改人中文名';
COMMENT ON COLUMN "CRM_CONFIG"."MODIFY_DATE" IS '修改时间';
COMMENT ON COLUMN "CRM_CONFIG"."DEL_FLAG" IS '删除标识：0-正常；1-逻辑删除';

-- ----------------------------
-- Table structure for CRM_CONN_PLAN
-- ----------------------------
CREATE TABLE "CRM_CONN_PLAN"
(
    "ID"                   VARCHAR2(32) NOT NULL,
    "PLAN_TITLE"           VARCHAR2(255)  DEFAULT NULL,
    "PLAN_CONTENT"         VARCHAR2(1000) DEFAULT NULL,
    "PLAN_START_TIME"      DATE           DEFAULT NULL,
    "PLAN_END_TIME"        DATE           DEFAULT NULL,
    "CUSTOMER_PROPERTY"    VARCHAR2(64)   DEFAULT NULL,
    "CUSTOMER_PROPERTY_ID" VARCHAR2(32)   DEFAULT NULL,
    "PLAN_LEVEL"           NUMBER(11)     DEFAULT NULL,
    "CUSTOMER_TOTAL"       NUMBER(11)     DEFAULT NULL,
    "PLAN_STATUS"          NUMBER(11)     DEFAULT NULL,
    "CREATE_USER"          VARCHAR2(32)   DEFAULT NULL,
    "CREATE_USER_NAME"     VARCHAR2(50)   DEFAULT NULL,
    "CREATE_DATE"          DATE           DEFAULT NULL,
    "MODIFY_USER"          VARCHAR2(32)   DEFAULT NULL,
    "MODIFY_USER_NAME"     VARCHAR2(50)   DEFAULT NULL,
    "MODIFY_DATE"          DATE           DEFAULT NULL,
    "DEL_FLAG"             NUMBER(4)      DEFAULT 0,
    "SKILL_PROPERTY"       VARCHAR2(255)  DEFAULT NULL,
    "SKILL_PROPERTY_ID"    VARCHAR2(255)  DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for CRM_CONN_PLAN
-- ----------------------------
COMMENT ON TABLE "CRM_CONN_PLAN" IS '联系计划表';
COMMENT ON COLUMN "CRM_CONN_PLAN"."ID" IS '主键';
COMMENT ON COLUMN "CRM_CONN_PLAN"."PLAN_TITLE" IS '计划标题';
COMMENT ON COLUMN "CRM_CONN_PLAN"."PLAN_CONTENT" IS '计划目标';
COMMENT ON COLUMN "CRM_CONN_PLAN"."PLAN_START_TIME" IS '计划开始时间';
COMMENT ON COLUMN "CRM_CONN_PLAN"."PLAN_END_TIME" IS '计划结束时间';
COMMENT ON COLUMN "CRM_CONN_PLAN"."CUSTOMER_PROPERTY" IS '客户属性';
COMMENT ON COLUMN "CRM_CONN_PLAN"."CUSTOMER_PROPERTY_ID" IS '客户属性ID';
COMMENT ON COLUMN "CRM_CONN_PLAN"."PLAN_LEVEL" IS '计划优先级：0-较低；1-一般；2-较高；3-很高；默认为1';
COMMENT ON COLUMN "CRM_CONN_PLAN"."CUSTOMER_TOTAL" IS '客户总数';
COMMENT ON COLUMN "CRM_CONN_PLAN"."PLAN_STATUS" IS '计划状态：0-未开始、1-进行中、2-未完成、3-已完成';
COMMENT ON COLUMN "CRM_CONN_PLAN"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "CRM_CONN_PLAN"."CREATE_USER_NAME" IS '创建人中文名';
COMMENT ON COLUMN "CRM_CONN_PLAN"."CREATE_DATE" IS '创建时间';
COMMENT ON COLUMN "CRM_CONN_PLAN"."MODIFY_USER" IS '修改人';
COMMENT ON COLUMN "CRM_CONN_PLAN"."MODIFY_USER_NAME" IS '修改人中文名';
COMMENT ON COLUMN "CRM_CONN_PLAN"."MODIFY_DATE" IS '修改时间';
COMMENT ON COLUMN "CRM_CONN_PLAN"."DEL_FLAG" IS '删除标识：0-正常；1-逻辑删除';
COMMENT ON COLUMN "CRM_CONN_PLAN"."SKILL_PROPERTY" IS '技能组属性';
COMMENT ON COLUMN "CRM_CONN_PLAN"."SKILL_PROPERTY_ID" IS '技能组属性ID';

-- ----------------------------
-- Table structure for CRM_CUSTOMER
-- ----------------------------
CREATE TABLE "CRM_CUSTOMER"
(
    "ID"                 VARCHAR2(32) NOT NULL,
    "NAME_CN"            VARCHAR2(50)   DEFAULT NULL,
    "PHONE"              VARCHAR2(16) NOT NULL,
    "VISIT_ID"           VARCHAR2(255)  DEFAULT NULL,
    "EMAIL"              VARCHAR2(40)   DEFAULT NULL,
    "ADDR"               VARCHAR2(255)  DEFAULT NULL,
    "PROPERTY"           VARCHAR2(50)   DEFAULT NULL,
    "PROPERTY_ID"        VARCHAR2(32)   DEFAULT NULL,
    "LEVEL"              NUMBER(11)     DEFAULT 0,
    "SOURCE"             VARCHAR2(20) NOT NULL,
    "REMARKS"            VARCHAR2(2000) DEFAULT NULL,
    "LOCATION"           VARCHAR2(200)  DEFAULT NULL,
    "CONVERSATION_FIRST" DATE           DEFAULT NULL,
    "CONVERSATION_LAST"  DATE           DEFAULT NULL,
    "TEL_CONN_FIRST"     DATE           DEFAULT NULL,
    "TEL_CONN_LAST"      DATE           DEFAULT NULL,
    "PRINCIPAL"          VARCHAR2(32)   DEFAULT NULL,
    "PRINCIPAL_NAME"     VARCHAR2(50)   DEFAULT NULL,
    "CREATE_USER"        VARCHAR2(32)   DEFAULT NULL,
    "CREATE_USER_NAME"   VARCHAR2(50)   DEFAULT NULL,
    "CREATE_DATE"        DATE           DEFAULT NULL,
    "MODIFY_USER"        VARCHAR2(32)   DEFAULT NULL,
    "MODIFY_USER_NAME"   VARCHAR2(50)   DEFAULT NULL,
    "MODIFY_DATE"        DATE           DEFAULT NULL,
    "DEL_FLAG"           NUMBER(4)      DEFAULT 0,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for CRM_CUSTOMER
-- ----------------------------
COMMENT ON TABLE "CRM_CUSTOMER" IS '客户表';
COMMENT ON COLUMN "CRM_CUSTOMER"."ID" IS '主键';
COMMENT ON COLUMN "CRM_CUSTOMER"."NAME_CN" IS '客户姓名';
COMMENT ON COLUMN "CRM_CUSTOMER"."PHONE" IS '客户手机号';
COMMENT ON COLUMN "CRM_CUSTOMER"."VISIT_ID" IS 'OPENID';
COMMENT ON COLUMN "CRM_CUSTOMER"."EMAIL" IS '客户联系邮箱';
COMMENT ON COLUMN "CRM_CUSTOMER"."ADDR" IS '客户地址';
COMMENT ON COLUMN "CRM_CUSTOMER"."PROPERTY" IS '客户属性中文名';
COMMENT ON COLUMN "CRM_CUSTOMER"."PROPERTY_ID" IS '客户属性ID/代码';
COMMENT ON COLUMN "CRM_CUSTOMER"."LEVEL" IS '客户等级：0-普通；1-VIP；默认为0';
COMMENT ON COLUMN "CRM_CUSTOMER"."SOURCE" IS '渠道，客户注册时的系统，必填';
COMMENT ON COLUMN "CRM_CUSTOMER"."REMARKS" IS '备注';
COMMENT ON COLUMN "CRM_CUSTOMER"."LOCATION" IS '客户籍贯（归属地）';
COMMENT ON COLUMN "CRM_CUSTOMER"."CONVERSATION_FIRST" IS '首次会话时间';
COMMENT ON COLUMN "CRM_CUSTOMER"."CONVERSATION_LAST" IS '最后会话时间';
COMMENT ON COLUMN "CRM_CUSTOMER"."TEL_CONN_FIRST" IS '首次电联时间';
COMMENT ON COLUMN "CRM_CUSTOMER"."TEL_CONN_LAST" IS '最后一次电联时间';
COMMENT ON COLUMN "CRM_CUSTOMER"."PRINCIPAL" IS '负责人应该是存USERID';
COMMENT ON COLUMN "CRM_CUSTOMER"."PRINCIPAL_NAME" IS '负责人中文名';
COMMENT ON COLUMN "CRM_CUSTOMER"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "CRM_CUSTOMER"."CREATE_USER_NAME" IS '创建人中文名';
COMMENT ON COLUMN "CRM_CUSTOMER"."CREATE_DATE" IS '创建时间';
COMMENT ON COLUMN "CRM_CUSTOMER"."MODIFY_USER" IS '修改人';
COMMENT ON COLUMN "CRM_CUSTOMER"."MODIFY_USER_NAME" IS '修改人中文名';
COMMENT ON COLUMN "CRM_CUSTOMER"."MODIFY_DATE" IS '修改时间';
COMMENT ON COLUMN "CRM_CUSTOMER"."DEL_FLAG" IS '删除标识：0-正常；1-逻辑删除';

-- ----------------------------
-- Table structure for CRM_CUSTOMER_COL
-- ----------------------------
CREATE TABLE "CRM_CUSTOMER_COL"
(
    "ID"               VARCHAR2(32) NOT NULL,
    "NAME"             VARCHAR2(200) DEFAULT NULL,
    "NAME_EN"          VARCHAR2(255) DEFAULT NULL,
    "TYPE"             VARCHAR2(20)  DEFAULT NULL,
    "COL_STATUS"       NUMBER(11)    DEFAULT NULL,
    "COL_INDEX"        NUMBER(11)    DEFAULT NULL,
    "COL_ORDER"        NUMBER(11)    DEFAULT NULL,
    "SHOW_SYS"         VARCHAR2(128) DEFAULT NULL,
    "CREATE_USER"      VARCHAR2(32)  DEFAULT NULL,
    "CREATE_USER_NAME" VARCHAR2(50)  DEFAULT NULL,
    "CREATE_DATE"      DATE          DEFAULT NULL,
    "MODIFY_USER"      VARCHAR2(255) DEFAULT NULL,
    "MODIFY_USER_NAME" VARCHAR2(255) DEFAULT NULL,
    "MODIFY_DATE"      DATE          DEFAULT NULL,
    "DEL_FLAG"         NUMBER(4)     DEFAULT 0,
    "TAG"              VARCHAR2(255) DEFAULT NULL,
    "FIELD_VALUES"     VARCHAR2(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for CRM_CUSTOMER_COL
-- ----------------------------
COMMENT ON TABLE "CRM_CUSTOMER_COL" IS '客户信息自定义字段表';
COMMENT ON COLUMN "CRM_CUSTOMER_COL"."ID" IS '主键';
COMMENT ON COLUMN "CRM_CUSTOMER_COL"."NAME" IS '列名';
COMMENT ON COLUMN "CRM_CUSTOMER_COL"."NAME_EN" IS '列英文名，对应数据表中的字段名';
COMMENT ON COLUMN "CRM_CUSTOMER_COL"."TYPE" IS '字段类型';
COMMENT ON COLUMN "CRM_CUSTOMER_COL"."COL_STATUS" IS '字段状态：0-关闭；1-开启';
COMMENT ON COLUMN "CRM_CUSTOMER_COL"."COL_INDEX" IS '与自定义数据表关联';
COMMENT ON COLUMN "CRM_CUSTOMER_COL"."COL_ORDER" IS '自定义列排序字段';
COMMENT ON COLUMN "CRM_CUSTOMER_COL"."SHOW_SYS" IS '字段在哪些系统模块中展示，存的值为系统英文简称，例如客户管理-CRM';
COMMENT ON COLUMN "CRM_CUSTOMER_COL"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "CRM_CUSTOMER_COL"."CREATE_USER_NAME" IS '创建人中文名';
COMMENT ON COLUMN "CRM_CUSTOMER_COL"."CREATE_DATE" IS '创建时间';
COMMENT ON COLUMN "CRM_CUSTOMER_COL"."MODIFY_USER" IS '修改人';
COMMENT ON COLUMN "CRM_CUSTOMER_COL"."MODIFY_USER_NAME" IS '修改人中文名';
COMMENT ON COLUMN "CRM_CUSTOMER_COL"."MODIFY_DATE" IS '修改时间';
COMMENT ON COLUMN "CRM_CUSTOMER_COL"."DEL_FLAG" IS '删除标识：0-正常；1-逻辑删除';
COMMENT ON COLUMN "CRM_CUSTOMER_COL"."TAG" IS '自定义字段唯一标识';
COMMENT ON COLUMN "CRM_CUSTOMER_COL"."FIELD_VALUES" IS '自定义字段枚举';

-- ----------------------------
-- Records of CRM_CUSTOMER_COL
-- ----------------------------
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('55e8fc4b0583416587a2de54848f89ee', '姓名', 'NAME_CN', 'default_type', 1, 0, 1, 'AICC_CRM,AICC_WORKBENCH,AICC_ORDER', NULL, NULL, TO_DATE('2020-05-07 16:14:50', 'SYYYY-MM-DD HH24:MI:SS'), '001588928289396012177e1d5cb59a5d', 'shashaWei', TO_DATE('2020-05-08 17:09:55', 'SYYYY-MM-DD HH24:MI:SS'), 0, 'name', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('8fff2fc7933d4e68acff4d4d5bbf68cc', '手机', 'PHONE', 'default_type', 1, 0, 2, 'AICC_CRM,AICC_WORKBENCH,AICC_ORDER', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'mobile', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('bb602fa463ee4da5a26d1ad2793a6c75', '邮箱', 'EMAIL', 'default_type', 1, 0, 3, 'AICC_CRM,AICC_WORKBENCH', NULL, NULL, TO_DATE('2020-05-08 14:52:36', 'SYYYY-MM-DD HH24:MI:SS'), '001588822827321001697e1d5cb59a5d', 'shashaWei', TO_DATE('2020-05-08 14:52:36', 'SYYYY-MM-DD HH24:MI:SS'), 0, 'email', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('dc89e4a55caa40deb74ef6e650b96d7b', '地址', 'ADDR', 'default_type', 0, 0, 4, 'AICC_CRM,AICC_ORDER', NULL, NULL, TO_DATE('2020-05-08 12:57:01', 'SYYYY-MM-DD HH24:MI:SS'), '001588928289396012177e1d5cb59a5d', 'shashaWei', TO_DATE('2020-05-08 17:08:15', 'SYYYY-MM-DD HH24:MI:SS'), 0, 'address', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('636bd0aac50c428a8d95edd959d0400c', '属性', 'PROPERTY', 'default_type', 0, 0, 5, 'AICC_CRM,AICC_ORDER', NULL, NULL, NULL, '001588928289396012177e1d5cb59a5d', 'shashaWei', TO_DATE('2020-05-08 17:09:09', 'SYYYY-MM-DD HH24:MI:SS'), 0, 'customer_property', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('0236f8f67a1e41dc89d4c62499d7f47f', '标签', 'LABEL', 'default_type', 1, 0, 6, 'AICC_CRM,AICC_WORKBENCH', NULL, NULL, TO_DATE('2020-05-08 14:08:49', 'SYYYY-MM-DD HH24:MI:SS'), '001588928326414012237e1d5cb59a5d', 'xiaochuang', TO_DATE('2020-05-08 17:18:16', 'SYYYY-MM-DD HH24:MI:SS'), 0, 'default_label', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('d850911971514d4d85e55d646651d3df', '等级', 'LEVEL', 'default_type', 1, 0, 7, 'AICC_WORKBENCH,AICC_ORDER', NULL, NULL, NULL, '001588928289396012177e1d5cb59a5d', 'shashaWei', TO_DATE('2020-05-08 17:07:21', 'SYYYY-MM-DD HH24:MI:SS'), 0, 'level', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('20a4581af6d74d4ea0092149302e04d0', '负责人', 'PRINCIPAL_NAME', 'default_type', 1, 0, 8, NULL, NULL, NULL, TO_DATE('2020-05-08 14:33:09', 'SYYYY-MM-DD HH24:MI:SS'), '001588913785588011157e1d5cb59a5d', 'yangyang', TO_DATE('2020-05-08 14:33:09', 'SYYYY-MM-DD HH24:MI:SS'), 0, 'director', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('5acb6f1be351431ea01fcf52ff8f8237', '来源终端', 'SOURCE', 'default_type', 0, 0, 9, 'AICC_ORDER', NULL, NULL, NULL, '001588928289396012177e1d5cb59a5d', 'shashaWei', TO_DATE('2020-05-08 17:08:50', 'SYYYY-MM-DD HH24:MI:SS'), 0, 'terminal', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('a39623827e9e433e8a2c43cffa3b7b81', '创建时间', 'CREATE_DATE', 'default_type', 0, 0, 10, 'AICC_CRM,AICC_ORDER', NULL, NULL, TO_DATE('2020-05-08 14:52:34', 'SYYYY-MM-DD HH24:MI:SS'), '001588822827321001697e1d5cb59a5d', 'shashaWei', TO_DATE('2020-05-08 14:52:34', 'SYYYY-MM-DD HH24:MI:SS'), 0, 'create_time', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('c64c86c4a5e6416788a7c9452f6094f4', '更新时间', 'MODIFY_DATE', 'default_type', 1, 0, 11, 'AICC_CRM,AICC_ORDER', NULL, NULL, TO_DATE('2020-05-08 14:52:38', 'SYYYY-MM-DD HH24:MI:SS'), '001588822827321001697e1d5cb59a5d', 'shashaWei', TO_DATE('2020-05-08 14:52:38', 'SYYYY-MM-DD HH24:MI:SS'), 0, 'update_time', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('74d86785715947198a9d77b3539cff64', '首次会话时间', 'CONVERSATION_FIRST', 'default_type', 0, 0, 12, 'AICC_CRM', NULL, NULL, NULL, '001588928289396012177e1d5cb59a5d', 'shashaWei', TO_DATE('2020-05-08 17:09:39', 'SYYYY-MM-DD HH24:MI:SS'), 0, 'first_session_time', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('74da4e560f244d868ee0b60ed442ef75', '最后一次会话时间', 'CONVERSATION_LAST', 'default_type', 1, 0, 13, 'AICC_CRM', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'last_session_time', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('2574cc1a2c1c4a098746a2abd9c41acb', '首次电联时间', 'TEL_CONN_FIRST', 'default_type', 1, 0, 14, 'AICC_CRM', NULL, NULL, TO_DATE('2020-05-07 16:14:50', 'SYYYY-MM-DD HH24:MI:SS'), '001589263233452026317e1d5cb59a5d', 'admin', TO_DATE('2020-05-12 16:59:10', 'SYYYY-MM-DD HH24:MI:SS'), 0, 'first_call_time', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('f8c60f517cef4537b89b49c917f7178b', '最后一次电联时间', 'TEL_CONN_LAST', 'default_type', 0, 0, 15, 'AICC_CRM', NULL, NULL, TO_DATE('2020-05-08 12:56:58', 'SYYYY-MM-DD HH24:MI:SS'), '001588913785588011157e1d5cb59a5d', 'yangyang', TO_DATE('2020-05-08 12:56:58', 'SYYYY-MM-DD HH24:MI:SS'), 0, 'last_call_time', 'blank');
INSERT INTO "CRM_CUSTOMER_COL" VALUES ('27e6b1d6a2934c5487b91284bfbb1252', '访客备注', 'REMARKS', 'default_type', 1, 0, 16, 'AICC_CRM,AICC_WORKBENCH', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'visitor_remark', 'blank');

-- ----------------------------
-- Table structure for CRM_CUSTOMER_DATA
-- ----------------------------
CREATE TABLE "CRM_CUSTOMER_DATA"
(
    "ID"                 VARCHAR2(32) NOT NULL,
    "NAME_CN"            VARCHAR2(50)   DEFAULT NULL,
    "PHONE"              VARCHAR2(64) NOT NULL,
    "VISIT_ID"           VARCHAR2(255)  DEFAULT NULL,
    "EMAIL"              VARCHAR2(40)   DEFAULT NULL,
    "ADDR"               VARCHAR2(255)  DEFAULT NULL,
    "PROPERTY"           VARCHAR2(50)   DEFAULT NULL,
    "PROPERTY_ID"        VARCHAR2(32)   DEFAULT NULL,
    "LEVEL"              NUMBER(11)     DEFAULT 0,
    "SOURCE"             VARCHAR2(20) NOT NULL,
    "REMARKS"            VARCHAR2(2000) DEFAULT NULL,
    "LOCATION"           VARCHAR2(200)  DEFAULT NULL,
    "CONVERSATION_FIRST" DATE           DEFAULT NULL,
    "CONVERSATION_LAST"  DATE           DEFAULT NULL,
    "TEL_CONN_FIRST"     DATE           DEFAULT NULL,
    "TEL_CONN_LAST"      DATE           DEFAULT NULL,
    "PRINCIPAL"          VARCHAR2(32)   DEFAULT NULL,
    "PRINCIPAL_NAME"     VARCHAR2(50)   DEFAULT NULL,
    "CREATE_USER"        VARCHAR2(32)   DEFAULT NULL,
    "CREATE_USER_NAME"   VARCHAR2(50)   DEFAULT NULL,
    "CREATE_DATE"        DATE           DEFAULT NULL,
    "MODIFY_USER"        VARCHAR2(32)   DEFAULT NULL,
    "MODIFY_USER_NAME"   VARCHAR2(50)   DEFAULT NULL,
    "MODIFY_DATE"        DATE           DEFAULT NULL,
    "DEL_FLAG"           NUMBER(4)      DEFAULT 0,
    "COL1"               VARCHAR2(3000) DEFAULT NULL,
    "COL2"               VARCHAR2(3000) DEFAULT NULL,
    "COL3"               VARCHAR2(3000) DEFAULT NULL,
    "COL4"               VARCHAR2(3000) DEFAULT NULL,
    "COL5"               VARCHAR2(3000) DEFAULT NULL,
    "COL6"               VARCHAR2(3000) DEFAULT NULL,
    "COL7"               VARCHAR2(3000) DEFAULT NULL,
    "COL8"               VARCHAR2(3000) DEFAULT NULL,
    "COL9"               VARCHAR2(3000) DEFAULT NULL,
    "COL10"              VARCHAR2(3000) DEFAULT NULL,
    "COL11"              VARCHAR2(3000) DEFAULT NULL,
    "COL12"              VARCHAR2(3000) DEFAULT NULL,
    "COL13"              VARCHAR2(3000) DEFAULT NULL,
    "COL14"              VARCHAR2(3000) DEFAULT NULL,
    "COL15"              VARCHAR2(3000) DEFAULT NULL,
    "COL16"              VARCHAR2(3000) DEFAULT NULL,
    "COL17"              VARCHAR2(3000) DEFAULT NULL,
    "COL18"              VARCHAR2(3000) DEFAULT NULL,
    "COL19"              VARCHAR2(3000) DEFAULT NULL,
    "COL20"              VARCHAR2(3000) DEFAULT NULL,
    "COL21"              VARCHAR2(3000) DEFAULT NULL,
    "COL22"              VARCHAR2(3000) DEFAULT NULL,
    "COL23"              VARCHAR2(3000) DEFAULT NULL,
    "COL24"              VARCHAR2(3000) DEFAULT NULL,
    "COL25"              VARCHAR2(3000) DEFAULT NULL,
    "COL26"              VARCHAR2(3000) DEFAULT NULL,
    "COL27"              VARCHAR2(3000) DEFAULT NULL,
    "COL28"              VARCHAR2(3000) DEFAULT NULL,
    "COL29"              VARCHAR2(3000) DEFAULT NULL,
    "COL30"              VARCHAR2(3000) DEFAULT NULL,
    "COL31"              VARCHAR2(3000) DEFAULT NULL,
    "COL32"              VARCHAR2(3000) DEFAULT NULL,
    "COL33"              VARCHAR2(3000) DEFAULT NULL,
    "COL34"              VARCHAR2(3000) DEFAULT NULL,
    "COL35"              VARCHAR2(3000) DEFAULT NULL,
    "COL36"              VARCHAR2(3000) DEFAULT NULL,
    "COL37"              VARCHAR2(3000) DEFAULT NULL,
    "COL38"              VARCHAR2(3000) DEFAULT NULL,
    "COL39"              VARCHAR2(3000) DEFAULT NULL,
    "COL40"              VARCHAR2(3000) DEFAULT NULL,
    "COL41"              VARCHAR2(3000) DEFAULT NULL,
    "COL42"              VARCHAR2(3000) DEFAULT NULL,
    "COL43"              VARCHAR2(3000) DEFAULT NULL,
    "COL44"              VARCHAR2(3000) DEFAULT NULL,
    "COL45"              VARCHAR2(3000) DEFAULT NULL,
    "COL46"              VARCHAR2(3000) DEFAULT NULL,
    "COL47"              VARCHAR2(3000) DEFAULT NULL,
    "COL48"              VARCHAR2(3000) DEFAULT NULL,
    "COL49"              VARCHAR2(3000) DEFAULT NULL,
    "COL50"              VARCHAR2(3000) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for CRM_CUSTOMER_DATA
-- ----------------------------
COMMENT ON TABLE "CRM_CUSTOMER_DATA" IS '自定义列数据表';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."ID" IS '主键';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."NAME_CN" IS '客户姓名';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."PHONE" IS '客户手机号';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."EMAIL" IS '客户联系邮箱';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."ADDR" IS '客户地址';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."PROPERTY" IS '客户属性中文名';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."PROPERTY_ID" IS '客户属性ID/代码';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."LEVEL" IS '客户等级：0-普通；1-VIP；默认为0';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."SOURCE" IS '渠道，客户注册时的系统，必填';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."REMARKS" IS '备注';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."LOCATION" IS '客户籍贯（归属地）';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."CONVERSATION_FIRST" IS '首次会话时间';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."CONVERSATION_LAST" IS '最后会话时间';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."TEL_CONN_FIRST" IS '首次电联时间';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."TEL_CONN_LAST" IS '最后一次电联时间';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."PRINCIPAL" IS '负责人应该是存USERID';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."PRINCIPAL_NAME" IS '负责人中文名';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."CREATE_USER_NAME" IS '创建人中文名';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."CREATE_DATE" IS '创建时间';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."MODIFY_USER" IS '修改人';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."MODIFY_USER_NAME" IS '修改人中文名';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."MODIFY_DATE" IS '修改时间';
COMMENT ON COLUMN "CRM_CUSTOMER_DATA"."DEL_FLAG" IS '删除标识：0-正常；1-逻辑删除';

-- ----------------------------
-- Table structure for CRM_CUSTOMER_LABEL
-- ----------------------------
CREATE TABLE "CRM_CUSTOMER_LABEL"
(
    "ID"          VARCHAR2(32) NOT NULL,
    "CUSTOMER_ID" VARCHAR2(32) DEFAULT NULL,
    "LABEL_ID"    VARCHAR2(32) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for CRM_CUSTOMER_LABEL
-- ----------------------------
COMMENT ON TABLE "CRM_CUSTOMER_LABEL" IS '客户-标签关联表';
COMMENT ON COLUMN "CRM_CUSTOMER_LABEL"."ID" IS '主键';
COMMENT ON COLUMN "CRM_CUSTOMER_LABEL"."CUSTOMER_ID" IS '客户ID';
COMMENT ON COLUMN "CRM_CUSTOMER_LABEL"."LABEL_ID" IS '标签ID';

-- ----------------------------
-- Table structure for CRM_CUSTOMER_PLAN
-- ----------------------------
CREATE TABLE "CRM_CUSTOMER_PLAN"
(
    "ID"               VARCHAR2(32) NOT NULL,
    "PLAN_ID"          VARCHAR2(32)  DEFAULT NULL,
    "CUSTOMER_ID"      VARCHAR2(32)  DEFAULT NULL,
    "STATUS"           NUMBER(11)    DEFAULT NULL,
    "CREATE_USER"      VARCHAR2(32)  DEFAULT NULL,
    "CREATE_USER_NAME" VARCHAR2(50)  DEFAULT NULL,
    "CREATE_DATE"      DATE          DEFAULT NULL,
    "MODIFY_USER"      VARCHAR2(255) DEFAULT NULL,
    "MODIFY_USER_NAME" VARCHAR2(255) DEFAULT NULL,
    "MODIFY_DATE"      DATE          DEFAULT NULL,
    "DEL_FLAG"         NUMBER(4)     DEFAULT 0,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for CRM_CUSTOMER_PLAN
-- ----------------------------
COMMENT ON TABLE "CRM_CUSTOMER_PLAN" IS '客户-标签关联表';
COMMENT ON COLUMN "CRM_CUSTOMER_PLAN"."ID" IS '主键';
COMMENT ON COLUMN "CRM_CUSTOMER_PLAN"."PLAN_ID" IS '列名';
COMMENT ON COLUMN "CRM_CUSTOMER_PLAN"."CUSTOMER_ID" IS '客户ID';
COMMENT ON COLUMN "CRM_CUSTOMER_PLAN"."STATUS" IS '处理状态：0：未处理；1：已处理';
COMMENT ON COLUMN "CRM_CUSTOMER_PLAN"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "CRM_CUSTOMER_PLAN"."CREATE_USER_NAME" IS '创建人中文名';
COMMENT ON COLUMN "CRM_CUSTOMER_PLAN"."CREATE_DATE" IS '创建时间';
COMMENT ON COLUMN "CRM_CUSTOMER_PLAN"."MODIFY_USER" IS '修改人';
COMMENT ON COLUMN "CRM_CUSTOMER_PLAN"."MODIFY_USER_NAME" IS '修改人中文名';
COMMENT ON COLUMN "CRM_CUSTOMER_PLAN"."MODIFY_DATE" IS '修改时间';
COMMENT ON COLUMN "CRM_CUSTOMER_PLAN"."DEL_FLAG" IS '删除标识：0-正常；1-逻辑删除';

-- ----------------------------
-- Table structure for CRM_LABEL
-- ----------------------------
CREATE TABLE "CRM_LABEL"
(
    "ID"               VARCHAR2(32) NOT NULL,
    "NAME"             VARCHAR2(32)  DEFAULT NULL,
    "COLOR"            VARCHAR2(100) DEFAULT NULL,
    "USE_COUNT"        NUMBER(11)    DEFAULT 0,
    "CREATE_USER"      VARCHAR2(32)  DEFAULT NULL,
    "CREATE_USER_NAME" VARCHAR2(50)  DEFAULT NULL,
    "CREATE_DATE"      DATE          DEFAULT NULL,
    "MODIFY_USER"      VARCHAR2(32)  DEFAULT NULL,
    "MODIFY_USER_NAME" VARCHAR2(50)  DEFAULT NULL,
    "MODIFY_DATE"      DATE          DEFAULT NULL,
    "DEL_FLAG"         NUMBER(4)     DEFAULT 0,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for CRM_LABEL
-- ----------------------------
COMMENT ON TABLE "CRM_LABEL" IS '标签表';
COMMENT ON COLUMN "CRM_LABEL"."ID" IS '主键';
COMMENT ON COLUMN "CRM_LABEL"."NAME" IS '标签名';
COMMENT ON COLUMN "CRM_LABEL"."COLOR" IS '标签颜色';
COMMENT ON COLUMN "CRM_LABEL"."USE_COUNT" IS '标签使用次数';
COMMENT ON COLUMN "CRM_LABEL"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "CRM_LABEL"."CREATE_USER_NAME" IS '创建人中文名';
COMMENT ON COLUMN "CRM_LABEL"."CREATE_DATE" IS '创建时间';
COMMENT ON COLUMN "CRM_LABEL"."MODIFY_USER" IS '修改人';
COMMENT ON COLUMN "CRM_LABEL"."MODIFY_USER_NAME" IS '修改人中文名';
COMMENT ON COLUMN "CRM_LABEL"."MODIFY_DATE" IS '修改时间';
COMMENT ON COLUMN "CRM_LABEL"."DEL_FLAG" IS '删除标识：0-正常；1-逻辑删除';

-- ----------------------------
-- Table structure for CRM_MENU
-- ----------------------------
CREATE TABLE "CRM_MENU"
(
    "ID"               VARCHAR2(32) NOT NULL,
    "PARENT_ID"        VARCHAR2(32)  DEFAULT NULL,
    "TYPE"             NUMBER(11)    DEFAULT NULL,
    "NAME"             VARCHAR2(50)  DEFAULT NULL,
    "BH"               VARCHAR2(200) DEFAULT NULL,
    "PATH"             VARCHAR2(255) DEFAULT NULL,
    "DISPLAY_TYPE"     NUMBER(11)    DEFAULT NULL,
    "DATA"             VARCHAR2(255) DEFAULT NULL,
    "DESCRIPTION"      VARCHAR2(500) DEFAULT NULL,
    "CREATE_USER"      VARCHAR2(32)  DEFAULT NULL,
    "CREATE_USER_NAME" VARCHAR2(50)  DEFAULT NULL,
    "CREATE_DATE"      DATE          DEFAULT NULL,
    "MODIFY_USER"      VARCHAR2(32)  DEFAULT NULL,
    "MODIFY_USER_NAME" VARCHAR2(50)  DEFAULT NULL,
    "DEL_FLAG"         NUMBER(4)     DEFAULT 0,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for CRM_MENU
-- ----------------------------
COMMENT ON COLUMN "CRM_MENU"."ID" IS '主键';
COMMENT ON COLUMN "CRM_MENU"."PARENT_ID" IS '父节点';
COMMENT ON COLUMN "CRM_MENU"."TYPE" IS '0-目录，1-按钮组，2-按钮';
COMMENT ON COLUMN "CRM_MENU"."NAME" IS '名称';
COMMENT ON COLUMN "CRM_MENU"."BH" IS 'BH';
COMMENT ON COLUMN "CRM_MENU"."PATH" IS '路径';
COMMENT ON COLUMN "CRM_MENU"."DISPLAY_TYPE" IS '展示方式。0 开关，1 下拉选择（单选），2 自定义跨组，3 技能组列表（多选）';
COMMENT ON COLUMN "CRM_MENU"."DATA" IS 'displaytype=0或者2时，值为null；displaytype=1时，展示方式为下拉列表， data为下拉列表的数据，以kv表示';
COMMENT ON COLUMN "CRM_MENU"."DESCRIPTION" IS '描述';
COMMENT ON COLUMN "CRM_MENU"."CREATE_USER" IS '创建人';
COMMENT ON COLUMN "CRM_MENU"."CREATE_USER_NAME" IS '创建人中文名';
COMMENT ON COLUMN "CRM_MENU"."CREATE_DATE" IS '创建时间';
COMMENT ON COLUMN "CRM_MENU"."MODIFY_USER" IS '修改人';
COMMENT ON COLUMN "CRM_MENU"."MODIFY_USER_NAME" IS '修改人中文名';
COMMENT ON COLUMN "CRM_MENU"."DEL_FLAG" IS '删除标识：0-正常；1-逻辑删除';

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
    "ID"      VARCHAR2(32) NOT NULL,
    "MENU_ID" VARCHAR2(32) NOT NULL,
    "ROLE_ID" VARCHAR2(32) NOT NULL,
    "DETAIL"  VARCHAR2(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for CRM_ROLE_MENU
-- ----------------------------
COMMENT ON COLUMN "CRM_ROLE_MENU"."ID" IS 'ID';
COMMENT ON COLUMN "CRM_ROLE_MENU"."MENU_ID" IS '权限ID';
COMMENT ON COLUMN "CRM_ROLE_MENU"."ROLE_ID" IS '角色ID';
COMMENT ON COLUMN "CRM_ROLE_MENU"."DETAIL" IS '权限详情';

-- ----------------------------
-- Table structure for ORDER_CUSTOMER
-- ----------------------------
CREATE TABLE "ORDER_CUSTOMER"
(
    "ID"          VARCHAR2(32)  NOT NULL,
    "ORDER_ID"    VARCHAR2(255) NOT NULL,
    "CUSTOMER_ID" VARCHAR2(32)  NOT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for ORDER_CUSTOMER
-- ----------------------------
COMMENT ON COLUMN "ORDER_CUSTOMER"."ORDER_ID" IS '工单号';
COMMENT ON COLUMN "ORDER_CUSTOMER"."CUSTOMER_ID" IS '工单关联用户ID';

-- ----------------------------
-- Table structure for ORDER_LIST
-- ----------------------------
CREATE TABLE "ORDER_LIST"
(
    "ID"            VARCHAR2(32)  NOT NULL,
    "NAME"          VARCHAR2(255) NOT NULL,
    "CREATOR"       VARCHAR2(255) NOT NULL,
    "STATUS"        NUMBER(1)     NOT NULL,
    "ASSIGNEE"      VARCHAR2(255) NOT NULL,
    "CUSTOMER_ID"   VARCHAR2(255) NOT NULL,
    "TEMPLATE_ID"   VARCHAR2(32)  NOT NULL,
    "TEMPLATE_NAME" VARCHAR2(255) NOT NULL,
    "CREATE_TIME"   DATE DEFAULT NULL,
    "UPDATE_TIME"   DATE DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for ORDER_LIST
-- ----------------------------
COMMENT ON COLUMN "ORDER_LIST"."ID" IS '主键ID';
COMMENT ON COLUMN "ORDER_LIST"."NAME" IS '工单名称';
COMMENT ON COLUMN "ORDER_LIST"."CREATOR" IS '工单创建人';
COMMENT ON COLUMN "ORDER_LIST"."STATUS" IS '状态:0-未受理,1-已受理,2-已回复,3-已完成';
COMMENT ON COLUMN "ORDER_LIST"."ASSIGNEE" IS '工单被指派的人';
COMMENT ON COLUMN "ORDER_LIST"."CUSTOMER_ID" IS '工单关联用户';
COMMENT ON COLUMN "ORDER_LIST"."TEMPLATE_ID" IS '工单所用模板ID';
COMMENT ON COLUMN "ORDER_LIST"."TEMPLATE_NAME" IS '工单模板名称';
COMMENT ON COLUMN "ORDER_LIST"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "ORDER_LIST"."UPDATE_TIME" IS '状态更新时间';

-- ----------------------------
-- Table structure for ORDER_OPT_LOG
-- ----------------------------
CREATE TABLE "ORDER_OPT_LOG"
(
    "ID"             VARCHAR2(32)  NOT NULL,
    "ORDER_NO"       VARCHAR2(255) NOT NULL,
    "OPERATOR"       VARCHAR2(255) DEFAULT NULL,
    "OPERATION"      NUMBER(1)     NOT NULL,
    "SESSION_IDS"    VARCHAR2(255) NOT NULL,
    "OPERATION_TIME" DATE          NOT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for ORDER_OPT_LOG
-- ----------------------------
COMMENT ON COLUMN "ORDER_OPT_LOG"."ORDER_NO" IS '工单号';
COMMENT ON COLUMN "ORDER_OPT_LOG"."OPERATOR" IS '操作人';
COMMENT ON COLUMN "ORDER_OPT_LOG"."OPERATION" IS '操作类型';
COMMENT ON COLUMN "ORDER_OPT_LOG"."SESSION_IDS" IS '关联会话IDS';
COMMENT ON COLUMN "ORDER_OPT_LOG"."OPERATION_TIME" IS '工单操作时间';

-- ----------------------------
-- Table structure for ORDER_PERMISSION
-- ----------------------------
CREATE TABLE "ORDER_PERMISSION"
(
    "ID"            VARCHAR2(32)  NOT NULL,
    "PARENT_ID"     VARCHAR2(255) DEFAULT NULL,
    "PATH"          VARCHAR2(255) DEFAULT NULL,
    "NAME"          VARCHAR2(255) NOT NULL,
    "RESOURCE_NAME" VARCHAR2(255) DEFAULT NULL,
    "DESCRIPTION"   VARCHAR2(255) DEFAULT NULL,
    "DISPLAY_TYPE"  NUMBER(1)     DEFAULT NULL,
    "DATA"          VARCHAR2(255) DEFAULT NULL,
    "VALUE"         VARCHAR2(255) DEFAULT NULL,
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
    "ROLE_ID"       VARCHAR2(32) NOT NULL,
    "PERMISSION_ID" VARCHAR2(32) NOT NULL,
    "VALUE"         VARCHAR2(4000) DEFAULT NULL,
    PRIMARY KEY ("ROLE_ID", "PERMISSION_ID")
);

-- ----------------------------
-- comment for ORDER_PERMISSION_ROLE
-- ----------------------------
COMMENT ON COLUMN "ORDER_PERMISSION_ROLE"."ROLE_ID" IS '角色ID';
COMMENT ON COLUMN "ORDER_PERMISSION_ROLE"."PERMISSION_ID" IS '权限ID';
COMMENT ON COLUMN "ORDER_PERMISSION_ROLE"."VALUE" IS '权限值';

-- ----------------------------
-- Table structure for ORDER_SESSION
-- ----------------------------
CREATE TABLE "ORDER_SESSION"
(
    "ORDER_ID"   VARCHAR2(50) NOT NULL,
    "SESSION_ID" VARCHAR2(50)  NOT NULL,
    PRIMARY KEY ("ORDER_ID", "SESSION_ID")
);

-- ----------------------------
-- comment for ORDER_SESSION
-- ----------------------------
COMMENT ON COLUMN "ORDER_SESSION"."ORDER_ID" IS '工单号';
COMMENT ON COLUMN "ORDER_SESSION"."SESSION_ID" IS '工单关联会话ID';

-- ----------------------------
-- Table structure for ORDER_TEMPLATE
-- ----------------------------
CREATE TABLE "ORDER_TEMPLATE"
(
    "ID"            VARCHAR2(255) NOT NULL,
    "TEMPLATE_NAME" VARCHAR2(255) NOT NULL,
    "CREATOR"       VARCHAR2(255) NOT NULL,
    "TYPE"          NUMBER(2)     NOT NULL,
    "STATUS"        NUMBER(2)     NOT NULL,
    "CREATE_TIME"   DATE          NOT NULL,
    "UPDATE_TIME"   DATE          NOT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for ORDER_TEMPLATE
-- ----------------------------
COMMENT ON COLUMN "ORDER_TEMPLATE"."ID" IS '模板ID';
COMMENT ON COLUMN "ORDER_TEMPLATE"."TEMPLATE_NAME" IS '模板名称';
COMMENT ON COLUMN "ORDER_TEMPLATE"."CREATOR" IS '创建者';
COMMENT ON COLUMN "ORDER_TEMPLATE"."TYPE" IS '模板类型';
COMMENT ON COLUMN "ORDER_TEMPLATE"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "ORDER_TEMPLATE"."UPDATE_TIME" IS '更改时间';
COMMENT ON COLUMN "ORDER_TEMPLATE"."STATUS" IS '模板状态:-1-新创建待审核;0-审核通过';

-- ----------------------------
-- Table structure for ORDER_TEMPLATE_FIELD
-- ----------------------------
CREATE TABLE "ORDER_TEMPLATE_FIELD"
(
    "ID"            VARCHAR2(255) NOT NULL,
    "FIELD_ID"      VARCHAR2(255) DEFAULT NULL,
    "FIELD_TAG"     VARCHAR2(255) DEFAULT NULL,
    "FIELD_NAME"    VARCHAR2(255) NOT NULL,
    "FIELD_TYPE"    VARCHAR2(255) NOT NULL,
    "DISPLAY_ORDER" NUMBER(2)     NOT NULL,
    "DEFAULT_VALUE" VARCHAR2(255) DEFAULT NULL,
    "GROUP_ID"      VARCHAR2(255) NOT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for ORDER_TEMPLATE_FIELD
-- ----------------------------
COMMENT ON COLUMN "ORDER_TEMPLATE_FIELD"."ID" IS 'ID';
COMMENT ON COLUMN "ORDER_TEMPLATE_FIELD"."FIELD_ID" IS '字段ID';
COMMENT ON COLUMN "ORDER_TEMPLATE_FIELD"."FIELD_TAG" IS '字段标签';
COMMENT ON COLUMN "ORDER_TEMPLATE_FIELD"."FIELD_NAME" IS '字段名称';
COMMENT ON COLUMN "ORDER_TEMPLATE_FIELD"."FIELD_TYPE" IS '字段类型';
COMMENT ON COLUMN "ORDER_TEMPLATE_FIELD"."DISPLAY_ORDER" IS '显示顺序';
COMMENT ON COLUMN "ORDER_TEMPLATE_FIELD"."DEFAULT_VALUE" IS '默认值';
COMMENT ON COLUMN "ORDER_TEMPLATE_FIELD"."GROUP_ID" IS '字段组ID';

-- ----------------------------
-- Table structure for ORDER_TEMPLATE_FIELD_GROUP
-- ----------------------------
CREATE TABLE "ORDER_TEMPLATE_FIELD_GROUP"
(
    "ID"            VARCHAR2(255) NOT NULL,
    "GROUP_NAME"    VARCHAR2(255) NOT NULL,
    "DISPLAY_ORDER" NUMBER(2)     NOT NULL,
    "TEMPLATE_ID"   VARCHAR2(255) NOT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for ORDER_TEMPLATE_FIELD_GROUP
-- ----------------------------
COMMENT ON COLUMN "ORDER_TEMPLATE_FIELD_GROUP"."ID" IS '字段组ID';
COMMENT ON COLUMN "ORDER_TEMPLATE_FIELD_GROUP"."GROUP_NAME" IS '字段组名称';
COMMENT ON COLUMN "ORDER_TEMPLATE_FIELD_GROUP"."DISPLAY_ORDER" IS '显示顺序';
COMMENT ON COLUMN "ORDER_TEMPLATE_FIELD_GROUP"."TEMPLATE_ID" IS '模板ID';

-- ----------------------------
-- Table structure for ORDER_TEMPLATE_FIELD_VALUE
-- ----------------------------
CREATE TABLE "ORDER_TEMPLATE_FIELD_VALUE"
(
    "ID"       VARCHAR2(255) NOT NULL,
    "VALUE_ID" VARCHAR2(255) NOT NULL,
    "VALUE"    VARCHAR2(255) DEFAULT NULL,
    "FIELD_ID" VARCHAR2(255) NOT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for ORDER_TEMPLATE_FIELD_VALUE
-- ----------------------------
COMMENT ON COLUMN "ORDER_TEMPLATE_FIELD_VALUE"."ID" IS '字段值ID';
COMMENT ON COLUMN "ORDER_TEMPLATE_FIELD_VALUE"."VALUE_ID" IS '值ID';
COMMENT ON COLUMN "ORDER_TEMPLATE_FIELD_VALUE"."VALUE" IS '值';
COMMENT ON COLUMN "ORDER_TEMPLATE_FIELD_VALUE"."FIELD_ID" IS '所属字段ID';

-- ----------------------------
-- Table structure for ORDER_VALUE
-- ----------------------------
CREATE TABLE "ORDER_VALUE"
(
    "ID"          VARCHAR2(32)  NOT NULL,
    "ORDER_ID"    VARCHAR2(255) NOT NULL,
    "FIELD_ID"    VARCHAR2(32)  DEFAULT NULL,
    "FIELD_VALUE" VARCHAR2(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for ORDER_VALUE
-- ----------------------------
COMMENT ON COLUMN "ORDER_VALUE"."ID" IS 'ID';
COMMENT ON COLUMN "ORDER_VALUE"."ORDER_ID" IS '工单号';
COMMENT ON COLUMN "ORDER_VALUE"."FIELD_ID" IS '工单属性ID';
COMMENT ON COLUMN "ORDER_VALUE"."FIELD_VALUE" IS '工单属性值';

-- ----------------------------
-- Table structure for QC_ACTION
-- ----------------------------
CREATE TABLE "QC_ACTION"
(
    "ID"           VARCHAR2(32) NOT NULL,
    "NAME"         VARCHAR2(32) DEFAULT NULL,
    "STATUS"       NUMBER(1)    DEFAULT NULL,
    "CODE"         VARCHAR2(32) DEFAULT NULL,
    "UPDATED_BY"   VARCHAR2(32) DEFAULT NULL,
    "UPDATED_TIME" DATE         DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for QC_ACTION
-- ----------------------------
COMMENT ON TABLE "QC_ACTION" IS '质检行为';
COMMENT ON COLUMN "QC_ACTION"."ID" IS 'ID';
COMMENT ON COLUMN "QC_ACTION"."NAME" IS '名称';
COMMENT ON COLUMN "QC_ACTION"."STATUS" IS '状态 0：关闭\N1：打开';
COMMENT ON COLUMN "QC_ACTION"."CODE" IS '代码';
COMMENT ON COLUMN "QC_ACTION"."UPDATED_BY" IS '更新人';
COMMENT ON COLUMN "QC_ACTION"."UPDATED_TIME" IS '更新时间';

-- ----------------------------
-- Table structure for QC_ITEMS
-- ----------------------------
CREATE TABLE "QC_ITEMS"
(
    "ID"           VARCHAR2(32) NOT NULL,
    "NAME"         VARCHAR2(32)  DEFAULT NULL,
    "PLAN_ID"      VARCHAR2(32)  DEFAULT NULL,
    "CLASSIFY"     NUMBER(1)     DEFAULT NULL,
    "REMARK"       VARCHAR2(512) DEFAULT NULL,
    "MODEL_ID"     VARCHAR2(32)  DEFAULT NULL,
    "SCORE"        NUMBER(11)    DEFAULT NULL,
    "TYPE"         NUMBER(1)     DEFAULT NULL,
    "CREATED_BY"   VARCHAR2(32)  DEFAULT NULL,
    "CREATED_TIME" DATE          DEFAULT NULL,
    "UPDATED_BY"   VARCHAR2(32)  DEFAULT NULL,
    "UPDATED_TIME" DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for QC_ITEMS
-- ----------------------------
COMMENT ON TABLE "QC_ITEMS" IS '质检方案质检项';
COMMENT ON COLUMN "QC_ITEMS"."ID" IS 'ID';
COMMENT ON COLUMN "QC_ITEMS"."NAME" IS '名称';
COMMENT ON COLUMN "QC_ITEMS"."PLAN_ID" IS '方案ID';
COMMENT ON COLUMN "QC_ITEMS"."CLASSIFY" IS '项目分类 1：扣分项\N2：加分项\N3：致命项';
COMMENT ON COLUMN "QC_ITEMS"."REMARK" IS '说明';
COMMENT ON COLUMN "QC_ITEMS"."MODEL_ID" IS '模型ID';
COMMENT ON COLUMN "QC_ITEMS"."SCORE" IS '分值';
COMMENT ON COLUMN "QC_ITEMS"."TYPE" IS '类型 1：正向\N2：负向';
COMMENT ON COLUMN "QC_ITEMS"."CREATED_BY" IS '创建人';
COMMENT ON COLUMN "QC_ITEMS"."CREATED_TIME" IS '创建时间';
COMMENT ON COLUMN "QC_ITEMS"."UPDATED_BY" IS '更新人';
COMMENT ON COLUMN "QC_ITEMS"."UPDATED_TIME" IS '更新时间';

-- ----------------------------
-- Table structure for QC_LINK_NODE
-- ----------------------------
CREATE TABLE "QC_LINK_NODE"
(
    "ID"            VARCHAR2(32) NOT NULL,
    "NAME"          VARCHAR2(32)  DEFAULT NULL,
    "TYPE"          NUMBER(1)     DEFAULT NULL,
    "PARENT_ID"     VARCHAR2(32)  DEFAULT NULL,
    "LINK_ID"       VARCHAR2(32)  DEFAULT NULL,
    "FLAG_NAV_LINK" NUMBER(1)     DEFAULT NULL,
    "NAV_LINK_ID"   VARCHAR2(32)  DEFAULT NULL,
    "FLAG_TRIGGER"  NUMBER(1)     DEFAULT NULL,
    "WEIGHT"        DECIMAL(4, 2) DEFAULT NULL,
    "CREATED_BY"    VARCHAR2(128) DEFAULT NULL,
    "CREATED_TIME"  DATE          DEFAULT NULL,
    "UPDATED_BY"    VARCHAR2(128) DEFAULT NULL,
    "UPDATED_TIME"  DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for QC_LINK_NODE
-- ----------------------------
COMMENT ON TABLE "QC_LINK_NODE" IS '质检环节中的节点表';
COMMENT ON COLUMN "QC_LINK_NODE"."ID" IS 'ID';
COMMENT ON COLUMN "QC_LINK_NODE"."NAME" IS '节点名';
COMMENT ON COLUMN "QC_LINK_NODE"."TYPE" IS '节点类型 1：选择\n2：非选择\n3：槽位';
COMMENT ON COLUMN "QC_LINK_NODE"."PARENT_ID" IS '父级节点id';
COMMENT ON COLUMN "QC_LINK_NODE"."LINK_ID" IS '环节id';
COMMENT ON COLUMN "QC_LINK_NODE"."FLAG_NAV_LINK" IS '是否节点跳转 0：非跳转节点\n1：跳转节点';
COMMENT ON COLUMN "QC_LINK_NODE"."NAV_LINK_ID" IS '节点跳转-环节id';
COMMENT ON COLUMN "QC_LINK_NODE"."FLAG_TRIGGER" IS '是否触发节点 0：非触发节点\n1：触发节点';
COMMENT ON COLUMN "QC_LINK_NODE"."WEIGHT" IS '权重';
COMMENT ON COLUMN "QC_LINK_NODE"."CREATED_BY" IS '创建人id';
COMMENT ON COLUMN "QC_LINK_NODE"."CREATED_TIME" IS '创建时间';
COMMENT ON COLUMN "QC_LINK_NODE"."UPDATED_BY" IS '更新人id';
COMMENT ON COLUMN "QC_LINK_NODE"."UPDATED_TIME" IS '更新时间';

-- ----------------------------
-- Table structure for QC_MENU
-- ----------------------------
CREATE TABLE "QC_MENU"
(
    "ID"           VARCHAR2(32) NOT NULL,
    "PARENT_ID"    VARCHAR2(32)   DEFAULT NULL,
    "MENU_NAME"    VARCHAR2(128)  DEFAULT NULL,
    "PATH"         VARCHAR2(128)  DEFAULT NULL,
    "BACK_PATH"    VARCHAR2(128)  DEFAULT NULL,
    "TYPE"         NUMBER(11)     DEFAULT NULL,
    "ICON"         VARCHAR2(128)  DEFAULT NULL,
    "BH"           VARCHAR2(1024) DEFAULT NULL,
    "DETAIL"       VARCHAR2(1024) DEFAULT NULL,
    "DESCRIPTION"  VARCHAR2(1024) DEFAULT NULL,
    "APP"          VARCHAR2(32)   DEFAULT NULL,
    "PRIORITY"     NUMBER(11)     DEFAULT NULL,
    "DISPLAY_TYPE" NUMBER(11)     DEFAULT NULL,
    "IS_SHOW"      NUMBER(1)      DEFAULT NULL,
    "CREATOR"      VARCHAR2(32)   DEFAULT NULL,
    "CREATE_TIME"  DATE           DEFAULT NULL,
    "EDITOR"       VARCHAR2(32)   DEFAULT NULL,
    "EDIT_TIME"    DATE           DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for QC_MENU
-- ----------------------------
COMMENT ON TABLE "QC_MENU" IS '用户权限';
COMMENT ON COLUMN "QC_MENU"."ID" IS 'ID';
COMMENT ON COLUMN "QC_MENU"."PARENT_ID" IS '父节点ID';
COMMENT ON COLUMN "QC_MENU"."MENU_NAME" IS '权限名称';
COMMENT ON COLUMN "QC_MENU"."PATH" IS '请求路径';
COMMENT ON COLUMN "QC_MENU"."BACK_PATH" IS '后端路径';
COMMENT ON COLUMN "QC_MENU"."TYPE" IS '权限类型';
COMMENT ON COLUMN "QC_MENU"."ICON" IS '图标';
COMMENT ON COLUMN "QC_MENU"."BH" IS '节点路径';
COMMENT ON COLUMN "QC_MENU"."DETAIL" IS '权限值定义';
COMMENT ON COLUMN "QC_MENU"."DESCRIPTION" IS '权限描述';
COMMENT ON COLUMN "QC_MENU"."APP" IS '应用标识';
COMMENT ON COLUMN "QC_MENU"."PRIORITY" IS '排序';
COMMENT ON COLUMN "QC_MENU"."DISPLAY_TYPE" IS '展示方式';
COMMENT ON COLUMN "QC_MENU"."IS_SHOW" IS '是否显示,0：false，1：true';
COMMENT ON COLUMN "QC_MENU"."CREATOR" IS '创建者';
COMMENT ON COLUMN "QC_MENU"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "QC_MENU"."EDITOR" IS '编辑人';
COMMENT ON COLUMN "QC_MENU"."EDIT_TIME" IS '更新时间';

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
    "ID"                VARCHAR2(32) NOT NULL,
    "QC_TYPE"           NUMBER(1)     DEFAULT NULL,
    "TYPE"              NUMBER(1)     DEFAULT NULL,
    "GROUP_ID"          VARCHAR2(32)  DEFAULT NULL,
    "NAME"              VARCHAR2(32)  DEFAULT NULL,
    "REMARK"            VARCHAR2(128) DEFAULT NULL,
    "ATTR_ROLE"         NUMBER(1)     DEFAULT NULL,
    "ATTR_POS"          NUMBER(1)     DEFAULT NULL,
    "ATTR_POS_VALUE"    NUMBER(11)    DEFAULT NULL,
    "ATTR_ACTION_ID"    VARCHAR2(32)  DEFAULT NULL,
    "ATTR_ACTION_VALUE" VARCHAR2(32)  DEFAULT NULL,
    "SKILL_GROUP_ID"    VARCHAR2(32)  DEFAULT NULL,
    "FLAG_PUBLISH"      NUMBER(1)     DEFAULT NULL,
    "CREATED_BY"        VARCHAR2(32)  DEFAULT NULL,
    "CREATED_TIME"      DATE          DEFAULT NULL,
    "UPDATED_BY"        VARCHAR2(32)  DEFAULT NULL,
    "UPDATED_TIME"      DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for QC_MODEL
-- ----------------------------
COMMENT ON TABLE "QC_MODEL" IS '质检模型表';
COMMENT ON COLUMN "QC_MODEL"."ID" IS 'ID';
COMMENT ON COLUMN "QC_MODEL"."QC_TYPE" IS '质检类型 0：默认，事后质检\n1：实时质检';
COMMENT ON COLUMN "QC_MODEL"."TYPE" IS '模型类型 0：默认，语义模型\n1：行为模型\n2：高级模型';
COMMENT ON COLUMN "QC_MODEL"."GROUP_ID" IS '模型组别';
COMMENT ON COLUMN "QC_MODEL"."NAME" IS '名称';
COMMENT ON COLUMN "QC_MODEL"."REMARK" IS '备注';
COMMENT ON COLUMN "QC_MODEL"."ATTR_ROLE" IS '模型属性-所属角色 0：默认-客户或者坐席\n1：客户\n2：坐席';
COMMENT ON COLUMN "QC_MODEL"."ATTR_POS" IS '模型属性-位置 0：默认，任意位置\n1：会话初\n2：会话末';
COMMENT ON COLUMN "QC_MODEL"."ATTR_POS_VALUE" IS '模型属性-位置值';
COMMENT ON COLUMN "QC_MODEL"."ATTR_ACTION_ID" IS '模型属性-行为类别';
COMMENT ON COLUMN "QC_MODEL"."ATTR_ACTION_VALUE" IS '模型属性-行为类别值';
COMMENT ON COLUMN "QC_MODEL"."SKILL_GROUP_ID" IS '生效客服组';
COMMENT ON COLUMN "QC_MODEL"."FLAG_PUBLISH" IS '是否发布 0：默认，未发布\n1：发布';
COMMENT ON COLUMN "QC_MODEL"."CREATED_BY" IS '创建人';
COMMENT ON COLUMN "QC_MODEL"."CREATED_TIME" IS '创建时间';
COMMENT ON COLUMN "QC_MODEL"."UPDATED_BY" IS '更新人';
COMMENT ON COLUMN "QC_MODEL"."UPDATED_TIME" IS '更新时间';

-- ----------------------------
-- Table structure for QC_MODEL_GROUP
-- ----------------------------
CREATE TABLE "QC_MODEL_GROUP"
(
    "ID"           VARCHAR2(32) NOT NULL,
    "NAME"         VARCHAR2(32)  DEFAULT NULL,
    "PARENT_ID"    VARCHAR2(32)  DEFAULT NULL,
    "BH"           VARCHAR2(128) DEFAULT NULL,
    "CREATED_BY"   VARCHAR2(128) DEFAULT NULL,
    "CREATED_TIME" DATE          DEFAULT NULL,
    "UPDATED_BY"   VARCHAR2(128) DEFAULT NULL,
    "UPDATED_TIME" DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for QC_MODEL_GROUP
-- ----------------------------
COMMENT ON TABLE "QC_MODEL_GROUP" IS '质检模型组';
COMMENT ON COLUMN "QC_MODEL_GROUP"."ID" IS 'id';
COMMENT ON COLUMN "QC_MODEL_GROUP"."NAME" IS '组名';
COMMENT ON COLUMN "QC_MODEL_GROUP"."PARENT_ID" IS '父级组id';
COMMENT ON COLUMN "QC_MODEL_GROUP"."BH" IS '编号 末级节点bh以L结尾标识';
COMMENT ON COLUMN "QC_MODEL_GROUP"."CREATED_BY" IS '创建人id';
COMMENT ON COLUMN "QC_MODEL_GROUP"."CREATED_TIME" IS '创建时间';
COMMENT ON COLUMN "QC_MODEL_GROUP"."UPDATED_BY" IS '更新人id';
COMMENT ON COLUMN "QC_MODEL_GROUP"."UPDATED_TIME" IS '更新时间';

-- ----------------------------
-- Table structure for QC_MODEL_LINK
-- ----------------------------
CREATE TABLE "QC_MODEL_LINK"
(
    "ID"           VARCHAR2(32) NOT NULL,
    "NAME"         VARCHAR2(32) DEFAULT NULL,
    "MODEL_ID"     VARCHAR2(32) DEFAULT NULL,
    "CREATED_BY"   VARCHAR2(32) DEFAULT NULL,
    "CREATED_TIME" DATE         DEFAULT NULL,
    "UPDATED_BY"   VARCHAR2(32) DEFAULT NULL,
    "UPDATED_TIME" DATE         DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for QC_MODEL_LINK
-- ----------------------------
COMMENT ON TABLE "QC_MODEL_LINK" IS '质检模型环节表';
COMMENT ON COLUMN "QC_MODEL_LINK"."ID" IS 'ID';
COMMENT ON COLUMN "QC_MODEL_LINK"."NAME" IS '环节名';
COMMENT ON COLUMN "QC_MODEL_LINK"."MODEL_ID" IS '模型ID';
COMMENT ON COLUMN "QC_MODEL_LINK"."CREATED_BY" IS '创建人';
COMMENT ON COLUMN "QC_MODEL_LINK"."CREATED_TIME" IS '创建时间';
COMMENT ON COLUMN "QC_MODEL_LINK"."UPDATED_BY" IS '更新人';
COMMENT ON COLUMN "QC_MODEL_LINK"."UPDATED_TIME" IS '更新时间';

-- ----------------------------
-- Table structure for QC_MODEL_RULES
-- ----------------------------
CREATE TABLE "QC_MODEL_RULES"
(
    "ID"           VARCHAR2(32) NOT NULL,
    "RULE"         VARCHAR2(3072) DEFAULT NULL,
    "MODEL_ID"     VARCHAR2(32)   DEFAULT NULL,
    "CREATED_BY"   VARCHAR2(32)   DEFAULT NULL,
    "CREATED_TIME" DATE           DEFAULT NULL,
    "UPDATED_BY"   VARCHAR2(32)   DEFAULT NULL,
    "UPDATED_TIME" DATE           DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for QC_MODEL_RULES
-- ----------------------------
COMMENT ON TABLE "QC_MODEL_RULES" IS '质检模型规则表';
COMMENT ON COLUMN "QC_MODEL_RULES"."ID" IS 'ID';
COMMENT ON COLUMN "QC_MODEL_RULES"."RULE" IS '内容';
COMMENT ON COLUMN "QC_MODEL_RULES"."MODEL_ID" IS '模型ID';
COMMENT ON COLUMN "QC_MODEL_RULES"."CREATED_BY" IS '创建人';
COMMENT ON COLUMN "QC_MODEL_RULES"."CREATED_TIME" IS '创建时间';
COMMENT ON COLUMN "QC_MODEL_RULES"."UPDATED_BY" IS '更新人';
COMMENT ON COLUMN "QC_MODEL_RULES"."UPDATED_TIME" IS '更新时间';

-- ----------------------------
-- Table structure for QC_MODEL_SKILLGROUP_RELATION
-- ----------------------------
CREATE TABLE "QC_MODEL_SKILLGROUP_RELATION"
(
    "ID"             VARCHAR2(32) NOT NULL,
    "MODEL_ID"       VARCHAR2(32) DEFAULT NULL,
    "SKILL_GROUP_ID" VARCHAR2(32) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- Table structure for QC_NODE_MODEL_RELATION
-- ----------------------------
CREATE TABLE "QC_NODE_MODEL_RELATION"
(
    "ID"           VARCHAR2(32) NOT NULL,
    "NODE_ID"      VARCHAR2(32) DEFAULT NULL,
    "MODAL_ID"     VARCHAR2(32) DEFAULT NULL,
    "RELATION"     NUMBER(1)    DEFAULT NULL,
    "CREATED_BY"   VARCHAR2(32) DEFAULT NULL,
    "CREATED_TIME" DATE         DEFAULT NULL,
    "UPDATED_BY"   VARCHAR2(32) DEFAULT NULL,
    "UPDATED_TIME" DATE         DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for QC_NODE_MODEL_RELATION
-- ----------------------------
COMMENT ON TABLE "QC_NODE_MODEL_RELATION" IS '质检节点中引用的模型关系表';
COMMENT ON COLUMN "QC_NODE_MODEL_RELATION"."ID" IS 'ID';
COMMENT ON COLUMN "QC_NODE_MODEL_RELATION"."NODE_ID" IS '节点ID';
COMMENT ON COLUMN "QC_NODE_MODEL_RELATION"."MODAL_ID" IS '模型ID';
COMMENT ON COLUMN "QC_NODE_MODEL_RELATION"."RELATION" IS '关系 0：and（默认）\n1：or';
COMMENT ON COLUMN "QC_NODE_MODEL_RELATION"."CREATED_BY" IS '创建人';
COMMENT ON COLUMN "QC_NODE_MODEL_RELATION"."CREATED_TIME" IS '创建时间';
COMMENT ON COLUMN "QC_NODE_MODEL_RELATION"."UPDATED_BY" IS '更新人';
COMMENT ON COLUMN "QC_NODE_MODEL_RELATION"."UPDATED_TIME" IS '更新时间';

-- ----------------------------
-- Table structure for QC_PLAN
-- ----------------------------
CREATE TABLE "QC_PLAN"
(
    "ID"           VARCHAR2(32) NOT NULL,
    "DESCRIB"      VARCHAR2(512) DEFAULT NULL,
    "NAME"         VARCHAR2(32)  DEFAULT NULL,
    "DEDUCT_LIMIT" NUMBER(11)    DEFAULT NULL,
    "BONUS_LIMIT"  NUMBER(11)    DEFAULT NULL,
    "CREATED_BY"   VARCHAR2(32)  DEFAULT NULL,
    "CREATED_TIME" DATE          DEFAULT NULL,
    "UPDATED_BY"   VARCHAR2(32)  DEFAULT NULL,
    "UPDATED_TIME" DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for QC_PLAN
-- ----------------------------
COMMENT ON TABLE "QC_PLAN" IS '质检方案';
COMMENT ON COLUMN "QC_PLAN"."ID" IS 'ID';
COMMENT ON COLUMN "QC_PLAN"."DESCRIB" IS '描述';
COMMENT ON COLUMN "QC_PLAN"."NAME" IS '名称';
COMMENT ON COLUMN "QC_PLAN"."DEDUCT_LIMIT" IS '扣分上限';
COMMENT ON COLUMN "QC_PLAN"."BONUS_LIMIT" IS '加分上限';
COMMENT ON COLUMN "QC_PLAN"."CREATED_BY" IS '创建人';
COMMENT ON COLUMN "QC_PLAN"."CREATED_TIME" IS '创建时间';
COMMENT ON COLUMN "QC_PLAN"."UPDATED_BY" IS '更新人';
COMMENT ON COLUMN "QC_PLAN"."UPDATED_TIME" IS '更新时间';

-- ----------------------------
-- Table structure for QC_ROLE_MENU
-- ----------------------------
CREATE TABLE "QC_ROLE_MENU"
(
    "ID"      VARCHAR2(32) NOT NULL,
    "ROLE_ID" VARCHAR2(32)   DEFAULT NULL,
    "MENU_ID" VARCHAR2(32)   DEFAULT NULL,
    "DETAIL"  VARCHAR2(4000) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for QC_ROLE_MENU
-- ----------------------------
COMMENT ON TABLE "QC_ROLE_MENU" IS '角色权限关联';
COMMENT ON COLUMN "QC_ROLE_MENU"."ID" IS '主键ID';
COMMENT ON COLUMN "QC_ROLE_MENU"."ROLE_ID" IS '角色ID';
COMMENT ON COLUMN "QC_ROLE_MENU"."MENU_ID" IS '权限ID';
COMMENT ON COLUMN "QC_ROLE_MENU"."DETAIL" IS '权限值';

-- ----------------------------
-- Table structure for QC_SESSION_MODEL_MATCH
-- ----------------------------
CREATE TABLE "QC_SESSION_MODEL_MATCH"
(
    "ID"          VARCHAR2(32) NOT NULL,
    "SESSION_ID"  VARCHAR2(32)   DEFAULT NULL,
    "MODEL_ID"    VARCHAR2(32)   DEFAULT NULL,
    "EX"          VARCHAR2(3072) DEFAULT NULL,
    "EX1"         VARCHAR2(3072) DEFAULT NULL,
    "ASK_ID"      VARCHAR2(32)   DEFAULT NULL,
    "SENTENCE_NO" NUMBER(11)     DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for QC_SESSION_MODEL_MATCH
-- ----------------------------
COMMENT ON TABLE "QC_SESSION_MODEL_MATCH" IS '质检模型与会话匹配表';
COMMENT ON COLUMN "QC_SESSION_MODEL_MATCH"."ID" IS 'ID';
COMMENT ON COLUMN "QC_SESSION_MODEL_MATCH"."SESSION_ID" IS '会话ID';
COMMENT ON COLUMN "QC_SESSION_MODEL_MATCH"."MODEL_ID" IS '模型ID';
COMMENT ON COLUMN "QC_SESSION_MODEL_MATCH"."EX" IS '扩展字段';
COMMENT ON COLUMN "QC_SESSION_MODEL_MATCH"."EX1" IS '扩展字段';
COMMENT ON COLUMN "QC_SESSION_MODEL_MATCH"."ASK_ID" IS '交互ID';
COMMENT ON COLUMN "QC_SESSION_MODEL_MATCH"."SENTENCE_NO" IS '句序号';

-- ----------------------------
-- Table structure for QC_TASK
-- ----------------------------
CREATE TABLE "QC_TASK"
(
    "ID"             VARCHAR2(32) NOT NULL,
    "NAME"           VARCHAR2(32)  DEFAULT NULL,
    "DESCRIB"        VARCHAR2(512) DEFAULT NULL,
    "RUN_RATE"       VARCHAR2(128) DEFAULT NULL,
    "RUN_TIME"       VARCHAR2(32)  DEFAULT NULL,
    "PLAN_ID"        VARCHAR2(32)  DEFAULT NULL,
    "STATUS"         NUMBER(1)     DEFAULT NULL,
    "SKILL_GROUP_ID" VARCHAR2(32)  DEFAULT NULL,
    "CREATED_BY"     VARCHAR2(32)  DEFAULT NULL,
    "CREATED_TIME"   DATE          DEFAULT NULL,
    "UPDATED_BY"     VARCHAR2(32)  DEFAULT NULL,
    "UPDATED_TIME"   DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for QC_TASK
-- ----------------------------
COMMENT ON TABLE "QC_TASK" IS '质检任务';
COMMENT ON COLUMN "QC_TASK"."ID" IS 'ID';
COMMENT ON COLUMN "QC_TASK"."NAME" IS '任务名';
COMMENT ON COLUMN "QC_TASK"."DESCRIB" IS '描述';
COMMENT ON COLUMN "QC_TASK"."RUN_RATE" IS '执行频率';
COMMENT ON COLUMN "QC_TASK"."RUN_TIME" IS '执行时间';
COMMENT ON COLUMN "QC_TASK"."PLAN_ID" IS '执行方案';
COMMENT ON COLUMN "QC_TASK"."STATUS" IS '状态';
COMMENT ON COLUMN "QC_TASK"."SKILL_GROUP_ID" IS '分配小组';
COMMENT ON COLUMN "QC_TASK"."CREATED_BY" IS '创建人';
COMMENT ON COLUMN "QC_TASK"."CREATED_TIME" IS '创建时间';
COMMENT ON COLUMN "QC_TASK"."UPDATED_BY" IS '更新人';
COMMENT ON COLUMN "QC_TASK"."UPDATED_TIME" IS '更新时间';

-- ----------------------------
-- Table structure for QC_URL_LIST
-- ----------------------------
CREATE TABLE "QC_URL_LIST"
(
    "ID"           VARCHAR2(32) NOT NULL,
    "URL"          VARCHAR2(128) DEFAULT NULL,
    "TYPE"         NUMBER(1)     DEFAULT NULL,
    "MODEL_ID"     VARCHAR2(32)  DEFAULT NULL,
    "CREATED_BY"   VARCHAR2(32)  DEFAULT NULL,
    "CREATED_TIME" DATE          DEFAULT NULL,
    "UPDATED_BY"   VARCHAR2(32)  DEFAULT NULL,
    "UPDATED_TIME" DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for QC_URL_LIST
-- ----------------------------
COMMENT ON TABLE "QC_URL_LIST" IS '质检url黑白名单';
COMMENT ON COLUMN "QC_URL_LIST"."ID" IS 'ID';
COMMENT ON COLUMN "QC_URL_LIST"."URL" IS '链接地址';
COMMENT ON COLUMN "QC_URL_LIST"."TYPE" IS '类型 0：黑名单\n1：白名单';
COMMENT ON COLUMN "QC_URL_LIST"."MODEL_ID" IS '模型ID';
COMMENT ON COLUMN "QC_URL_LIST"."CREATED_BY" IS '创建人';
COMMENT ON COLUMN "QC_URL_LIST"."CREATED_TIME" IS '创建时间';
COMMENT ON COLUMN "QC_URL_LIST"."UPDATED_BY" IS '更新人';
COMMENT ON COLUMN "QC_URL_LIST"."UPDATED_TIME" IS '更新时间';

-- ----------------------------
-- Table structure for QC_WORDCLASS
-- ----------------------------
CREATE TABLE "QC_WORDCLASS"
(
    "ID"                 VARCHAR2(32) NOT NULL,
    "NAME"               VARCHAR2(32)   DEFAULT NULL,
    "WORDS"              VARCHAR2(3072) DEFAULT NULL,
    "WORDCLASS_GROUP_ID" VARCHAR2(32)   DEFAULT NULL,
    "CREATED_BY"         VARCHAR2(128)  DEFAULT NULL,
    "CREATED_TIME"       DATE           DEFAULT NULL,
    "UPDATED_BY"         VARCHAR2(128)  DEFAULT NULL,
    "UPDATED_TIME"       DATE           DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for QC_WORDCLASS
-- ----------------------------
COMMENT ON TABLE "QC_WORDCLASS" IS '质检词类';
COMMENT ON COLUMN "QC_WORDCLASS"."ID" IS 'id';
COMMENT ON COLUMN "QC_WORDCLASS"."NAME" IS '词类名';
COMMENT ON COLUMN "QC_WORDCLASS"."WORDS" IS '词';
COMMENT ON COLUMN "QC_WORDCLASS"."WORDCLASS_GROUP_ID" IS '词类组id';
COMMENT ON COLUMN "QC_WORDCLASS"."CREATED_BY" IS '创建人id';
COMMENT ON COLUMN "QC_WORDCLASS"."CREATED_TIME" IS '创建时间';
COMMENT ON COLUMN "QC_WORDCLASS"."UPDATED_BY" IS '更新人id';
COMMENT ON COLUMN "QC_WORDCLASS"."UPDATED_TIME" IS '更新时间';

-- ----------------------------
-- Table structure for QC_WORDCLASS_GROUP
-- ----------------------------
CREATE TABLE "QC_WORDCLASS_GROUP"
(
    "ID"           VARCHAR2(32) NOT NULL,
    "NAME"         VARCHAR2(32)  DEFAULT NULL,
    "PARENT_ID"    VARCHAR2(32)  DEFAULT NULL,
    "BH"           VARCHAR2(128) DEFAULT NULL,
    "CREATED_BY"   VARCHAR2(128) DEFAULT NULL,
    "CREATED_TIME" DATE          DEFAULT NULL,
    "UPDATED_BY"   VARCHAR2(128) DEFAULT NULL,
    "UPDATED_TIME" DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for QC_WORDCLASS_GROUP
-- ----------------------------
COMMENT ON TABLE "QC_WORDCLASS_GROUP" IS '质检词类组';
COMMENT ON COLUMN "QC_WORDCLASS_GROUP"."ID" IS 'id';
COMMENT ON COLUMN "QC_WORDCLASS_GROUP"."NAME" IS '组名';
COMMENT ON COLUMN "QC_WORDCLASS_GROUP"."PARENT_ID" IS '父级组id';
COMMENT ON COLUMN "QC_WORDCLASS_GROUP"."BH" IS '编号 末级节点bh以L结尾标识';
COMMENT ON COLUMN "QC_WORDCLASS_GROUP"."CREATED_BY" IS '创建人id';
COMMENT ON COLUMN "QC_WORDCLASS_GROUP"."CREATED_TIME" IS '创建时间';
COMMENT ON COLUMN "QC_WORDCLASS_GROUP"."UPDATED_BY" IS '更新人id';
COMMENT ON COLUMN "QC_WORDCLASS_GROUP"."UPDATED_TIME" IS '更新时间';

-- ----------------------------
-- Table structure for QUICK_REPLY
-- ----------------------------
CREATE TABLE "QUICK_REPLY"
(
    "ID"      VARCHAR2(32) NOT NULL,
    "USER_ID" VARCHAR2(32)  DEFAULT NULL,
    "MESSAGE" VARCHAR2(255) DEFAULT NULL,
    "TYPE"    NUMBER(1)     DEFAULT 1,
    "NUM"     NUMBER(2)     DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for QUICK_REPLY
-- ----------------------------
COMMENT ON TABLE "QUICK_REPLY" IS '快捷回复';
COMMENT ON COLUMN "QUICK_REPLY"."ID" IS 'ID';
COMMENT ON COLUMN "QUICK_REPLY"."USER_ID" IS '坐席ID';
COMMENT ON COLUMN "QUICK_REPLY"."MESSAGE" IS '回复语';
COMMENT ON COLUMN "QUICK_REPLY"."TYPE" IS '类型：0-系统，1-个人';
COMMENT ON COLUMN "QUICK_REPLY"."NUM" IS '回复语的编号，有序';

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
    "ID"                     VARCHAR2(32) NOT NULL,
    "ACD_NAME"               VARCHAR2(50)  DEFAULT NULL,
    "EXCLUDE_HOLIDAY"        INT           DEFAULT NULL,
    "EXTIME_SERVICE_TYPE"    NUMBER(11)    DEFAULT NULL,
    "EXTIME_SERVICE_WORDS"   VARCHAR2(500) DEFAULT NULL,
    "ENABLE_BIZ"             INT           DEFAULT NULL,
    "BIZ_CHOOSE_ERR_TYPE"    INT           DEFAULT NULL,
    "BIZ_ERR_TIME_THRESHOLD" NUMBER(11)    DEFAULT NULL,
    "MULTI_SG_STRATEGY_ID"   VARCHAR2(32)  DEFAULT NULL,
    "CREATOR"                VARCHAR2(32)  DEFAULT NULL,
    "EDITOR"                 VARCHAR2(32)  DEFAULT NULL,
    "CREATE_TIME"            DATE          DEFAULT NULL,
    "EDIT_TIME"              DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for SYS_ACD
-- ----------------------------
COMMENT ON COLUMN "SYS_ACD"."ID" IS 'id';
COMMENT ON COLUMN "SYS_ACD"."ACD_NAME" IS '策略名称';
COMMENT ON COLUMN "SYS_ACD"."EXCLUDE_HOLIDAY" IS '是否排除法定假日，0：false，1：true';
COMMENT ON COLUMN "SYS_ACD"."EXTIME_SERVICE_TYPE" IS '非策略时间进线策略类型，0：机器人，1：用户留言';
COMMENT ON COLUMN "SYS_ACD"."EXTIME_SERVICE_WORDS" IS '非策略时间进线话术';
COMMENT ON COLUMN "SYS_ACD"."ENABLE_BIZ" IS '是否开启业务分配，0：false，1：true';
COMMENT ON COLUMN "SYS_ACD"."BIZ_CHOOSE_ERR_TYPE" IS '业务选择错误策略类型，0：重新选择，1：随机分配';
COMMENT ON COLUMN "SYS_ACD"."BIZ_ERR_TIME_THRESHOLD" IS '错误次数阈值';
COMMENT ON COLUMN "SYS_ACD"."MULTI_SG_STRATEGY_ID" IS '业务对应多技能组分配策略,对应common_dict_item 的主键';
COMMENT ON COLUMN "SYS_ACD"."CREATOR" IS '创建者';
COMMENT ON COLUMN "SYS_ACD"."EDITOR" IS '编辑者';
COMMENT ON COLUMN "SYS_ACD"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_ACD"."EDIT_TIME" IS '编辑时间';

-- ----------------------------
-- Records of SYS_ACD
-- ----------------------------
INSERT INTO "SYS_ACD" VALUES ('061505e3d58000159671DEFALUTACD00', '默认策略', 0, 1, '您好，目前正处于坐席非工作时间，请您在工作时间再与我们联系。', 0, NULL, NULL, NULL, '27e55a01b74342189b000000000admin', '27e55a01b74342189b000000000admin', TO_DATE('2020-08-10 15:38:52', 'SYYYY-MM-DD HH24:MI:SS'), TO_DATE('2020-08-10 15:38:56', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for SYS_ACD_BIZ
-- ----------------------------
CREATE TABLE "SYS_ACD_BIZ"
(
    "ID"                   VARCHAR2(32) NOT NULL,
    "BIZ_NAME"             VARCHAR2(255) DEFAULT NULL,
    "ACD_ID"               VARCHAR2(32)  DEFAULT NULL,
    "EXCLUDE_HOLIDAY"      INT           DEFAULT NULL,
    "EXTIME_SERVICE_TYPE"  NUMBER(11)    DEFAULT NULL,
    "EXTIME_SERVICE_WORDS" VARCHAR2(500) DEFAULT NULL,
    "DEFAULT_BIZ"          INT           DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for SYS_ACD_BIZ
-- ----------------------------
COMMENT ON COLUMN "SYS_ACD_BIZ"."ID" IS 'id';
COMMENT ON COLUMN "SYS_ACD_BIZ"."BIZ_NAME" IS '业务名称';
COMMENT ON COLUMN "SYS_ACD_BIZ"."ACD_ID" IS '策略主键';
COMMENT ON COLUMN "SYS_ACD_BIZ"."EXCLUDE_HOLIDAY" IS '是否排除法定假日，0：false，1：true';
COMMENT ON COLUMN "SYS_ACD_BIZ"."EXTIME_SERVICE_TYPE" IS '非策略时间进线策略类型，0：机器人，1：用户留言';
COMMENT ON COLUMN "SYS_ACD_BIZ"."EXTIME_SERVICE_WORDS" IS '非策略时间进线话术';
COMMENT ON COLUMN "SYS_ACD_BIZ"."DEFAULT_BIZ" IS '是否默认业务，0：false，1：true';

-- ----------------------------
-- Records of SYS_ACD_BIZ
-- ----------------------------
INSERT INTO "SYS_ACD_BIZ" VALUES ('061505e3d58000159671DEFALUTBIZ00', '默认业务', '061505e3d58000159671DEFALUTACD00', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for SYS_ACD_BIZ_GROUP
-- ----------------------------
CREATE TABLE "SYS_ACD_BIZ_GROUP"
(
    "ID"          VARCHAR2(32) NOT NULL,
    "TYPE"        INT          DEFAULT NULL,
    "ACD_ID"      VARCHAR2(32) DEFAULT NULL,
    "GROUP_ORDER" INT          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for SYS_ACD_BIZ_GROUP
-- ----------------------------
COMMENT ON COLUMN "SYS_ACD_BIZ_GROUP"."ID" IS 'id';
COMMENT ON COLUMN "SYS_ACD_BIZ_GROUP"."TYPE" IS '0：默认分组，1其他分组';
COMMENT ON COLUMN "SYS_ACD_BIZ_GROUP"."ACD_ID" IS '策略主键';
COMMENT ON COLUMN "SYS_ACD_BIZ_GROUP"."GROUP_ORDER" IS '排序';

-- ----------------------------
-- Records of SYS_ACD_BIZ_GROUP
-- ----------------------------
INSERT INTO "SYS_ACD_BIZ_GROUP" VALUES ('061505e3d580001DEFALUTGROUPBIZ00', 0, '061505e3d58000159671DEFALUTACD00', 0);

-- ----------------------------
-- Table structure for SYS_ACD_BIZ_QUEUE
-- ----------------------------
CREATE TABLE "SYS_ACD_BIZ_QUEUE"
(
    "ID"                       VARCHAR2(32) NOT NULL,
    "ACD_ID"                   VARCHAR2(32) DEFAULT NULL,
    "BIZ_GROUP_ID"             VARCHAR2(32) DEFAULT NULL,
    "BIZ_ORDER"                INT          DEFAULT NULL,
    "TYPE"                     INT          DEFAULT NULL,
    "ENABLE_VIP_FIRST"         INT          DEFAULT NULL,
    "VIP_FIRST_TYPE"           INT          DEFAULT NULL,
    "VIP_INTERVAL_NUM"         NUMBER(11)   DEFAULT NULL,
    "REPORT_TIME_INTERVAL"     INT          DEFAULT NULL,
    "ENABLE_WAITTING_OVERFLOW" INT          DEFAULT NULL,
    "WAIT_TIME_THRESHOLD"      INT          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for SYS_ACD_BIZ_QUEUE
-- ----------------------------
COMMENT ON COLUMN "SYS_ACD_BIZ_QUEUE"."ID" IS 'id';
COMMENT ON COLUMN "SYS_ACD_BIZ_QUEUE"."ACD_ID" IS '策略主键';
COMMENT ON COLUMN "SYS_ACD_BIZ_QUEUE"."BIZ_GROUP_ID" IS '业务分组主键';
COMMENT ON COLUMN "SYS_ACD_BIZ_QUEUE"."BIZ_ORDER" IS '顺序';
COMMENT ON COLUMN "SYS_ACD_BIZ_QUEUE"."TYPE" IS '排队策略类型。0：通用类型，1自定义类型';
COMMENT ON COLUMN "SYS_ACD_BIZ_QUEUE"."ENABLE_VIP_FIRST" IS 'VIP排队优先，0：false，1：true';
COMMENT ON COLUMN "SYS_ACD_BIZ_QUEUE"."VIP_FIRST_TYPE" IS 'VIP优先方式，0：永远优先 1：间隔优先';
COMMENT ON COLUMN "SYS_ACD_BIZ_QUEUE"."VIP_INTERVAL_NUM" IS '间隔优先时，每X个VIP接入一个普通用户';
COMMENT ON COLUMN "SYS_ACD_BIZ_QUEUE"."REPORT_TIME_INTERVAL" IS '排队数量播报时间';
COMMENT ON COLUMN "SYS_ACD_BIZ_QUEUE"."ENABLE_WAITTING_OVERFLOW" IS '等待时间溢出策略，0：false，1：true';
COMMENT ON COLUMN "SYS_ACD_BIZ_QUEUE"."WAIT_TIME_THRESHOLD" IS '等待时间溢出阈值(单位：秒)';

-- ----------------------------
-- Records of SYS_ACD_BIZ_QUEUE
-- ----------------------------
INSERT INTO "SYS_ACD_BIZ_QUEUE" VALUES ('061505e3d58001DEFALUTBIZQUEUE000', '061505e3d58000159671DEFALUTACD00', '061505e3d580001DEFALUTGROUPBIZ00', 1, 0, 0, NULL, NULL, 60, 0, NULL);

-- ----------------------------
-- Table structure for SYS_ACD_BIZ_X_GROUP
-- ----------------------------
CREATE TABLE "SYS_ACD_BIZ_X_GROUP"
(
    "ID"       VARCHAR2(32) NOT NULL,
    "GROUP_ID" VARCHAR2(32) DEFAULT NULL,
    "BIZ_ID"   VARCHAR2(32) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for SYS_ACD_BIZ_X_GROUP
-- ----------------------------
COMMENT ON COLUMN "SYS_ACD_BIZ_X_GROUP"."ID" IS 'id';
COMMENT ON COLUMN "SYS_ACD_BIZ_X_GROUP"."GROUP_ID" IS '业务分组主键';
COMMENT ON COLUMN "SYS_ACD_BIZ_X_GROUP"."BIZ_ID" IS '业务主键';

-- ----------------------------
-- Records of SYS_ACD_BIZ_X_GROUP
-- ----------------------------
INSERT INTO "SYS_ACD_BIZ_X_GROUP" VALUES ('061505e3d58001DEFALUTGROUPXBIZ00', '061505e3d580001DEFALUTGROUPBIZ00', '061505e3d58000159671DEFALUTBIZ00');

-- ----------------------------
-- Table structure for SYS_ACD_RESET_TIME
-- ----------------------------
CREATE TABLE "SYS_ACD_RESET_TIME"
(
    "ID"         VARCHAR2(32) NOT NULL,
    "ACD_ID"     VARCHAR2(32) DEFAULT NULL,
    "RESET_TIME" VARCHAR2(30) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for SYS_ACD_RESET_TIME
-- ----------------------------
COMMENT ON COLUMN "SYS_ACD_RESET_TIME"."ID" IS 'id';
COMMENT ON COLUMN "SYS_ACD_RESET_TIME"."ACD_ID" IS '策略主键';
COMMENT ON COLUMN "SYS_ACD_RESET_TIME"."RESET_TIME" IS '重置时间点（小时：分钟）';

-- ----------------------------
-- Table structure for SYS_ACD_TIME
-- ----------------------------
CREATE TABLE "SYS_ACD_TIME"
(
    "ID"          VARCHAR2(32) NOT NULL,
    "FOREIGN_KEY" VARCHAR2(32) DEFAULT NULL,
    "TYPE"        INT          DEFAULT NULL,
    "WEEKDAY"     INT          DEFAULT NULL,
    "START_TIME"  VARCHAR2(30) DEFAULT NULL,
    "END_TIME"    VARCHAR2(30) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for SYS_ACD_TIME
-- ----------------------------
COMMENT ON COLUMN "SYS_ACD_TIME"."ID" IS 'id';
COMMENT ON COLUMN "SYS_ACD_TIME"."FOREIGN_KEY" IS '关联外键，根据type区分';
COMMENT ON COLUMN "SYS_ACD_TIME"."TYPE" IS '0：策略，1业务';
COMMENT ON COLUMN "SYS_ACD_TIME"."WEEKDAY" IS '工作日';
COMMENT ON COLUMN "SYS_ACD_TIME"."START_TIME" IS '开始时间';
COMMENT ON COLUMN "SYS_ACD_TIME"."END_TIME" IS '结束时间';

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
    "ID"         VARCHAR2(32) NOT NULL,
    "ACD_ID"     VARCHAR2(32) DEFAULT NULL,
    "CHANNEL_ID" VARCHAR2(32) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for SYS_ACD_X_CHANNEL
-- ----------------------------
COMMENT ON COLUMN "SYS_ACD_X_CHANNEL"."ID" IS 'id';
COMMENT ON COLUMN "SYS_ACD_X_CHANNEL"."ACD_ID" IS '策略主键';
COMMENT ON COLUMN "SYS_ACD_X_CHANNEL"."CHANNEL_ID" IS '渠道主键';

-- ----------------------------
-- Table structure for SYS_ACD_X_SKILL_GROUP
-- ----------------------------
CREATE TABLE "SYS_ACD_X_SKILL_GROUP"
(
    "ID"             VARCHAR2(32) NOT NULL,
    "FOREIGN_KEY"    VARCHAR2(32) DEFAULT NULL,
    "TYPE"           INT          DEFAULT NULL,
    "SKILL_GROUP_ID" VARCHAR2(32) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for SYS_ACD_X_SKILL_GROUP
-- ----------------------------
COMMENT ON COLUMN "SYS_ACD_X_SKILL_GROUP"."ID" IS 'id';
COMMENT ON COLUMN "SYS_ACD_X_SKILL_GROUP"."FOREIGN_KEY" IS '外键';
COMMENT ON COLUMN "SYS_ACD_X_SKILL_GROUP"."TYPE" IS '0,ACD_BIZ表，1：ACD_BIZ_QUEUE表';
COMMENT ON COLUMN "SYS_ACD_X_SKILL_GROUP"."SKILL_GROUP_ID" IS '技能组主键';

-- ----------------------------
-- Table structure for SYS_CUS_FIELD
-- ----------------------------
CREATE TABLE "SYS_CUS_FIELD"
(
    "ID"            VARCHAR2(32) NOT NULL,
    "NAME"          VARCHAR2(32)  DEFAULT NULL,
    "TAG"           VARCHAR2(32)  DEFAULT NULL,
    "TAG_LEVEL"     VARCHAR2(32)  DEFAULT NULL,
    "TYPE"          VARCHAR2(32)  DEFAULT NULL,
    "DESCRIPTION"   VARCHAR2(512) DEFAULT NULL,
    "CREATOR"       VARCHAR2(32)  DEFAULT NULL,
    "CATEGORY_CODE" VARCHAR2(30)  DEFAULT NULL,
    "CREATE_TIME"   DATE          DEFAULT NULL,
    "EDITOR"        VARCHAR2(32)  DEFAULT NULL,
    "EDIT_TIME"     DATE          DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for SYS_CUS_FIELD
-- ----------------------------
COMMENT ON TABLE "SYS_CUS_FIELD" IS '自定义字段';
COMMENT ON COLUMN "SYS_CUS_FIELD"."ID" IS '主键ID';
COMMENT ON COLUMN "SYS_CUS_FIELD"."NAME" IS '字段名称';
COMMENT ON COLUMN "SYS_CUS_FIELD"."TAG" IS '字段标识';
COMMENT ON COLUMN "SYS_CUS_FIELD"."TAG_LEVEL" IS '字段等级(系统默认default/系统预置preset/普通字段null)';
COMMENT ON COLUMN "SYS_CUS_FIELD"."TYPE" IS '字段类型 textfield/textarea/select/multi_select/radio/checkbox';
COMMENT ON COLUMN "SYS_CUS_FIELD"."DESCRIPTION" IS '字段描述';
COMMENT ON COLUMN "SYS_CUS_FIELD"."CREATOR" IS '创建人';
COMMENT ON COLUMN "SYS_CUS_FIELD"."CATEGORY_CODE" IS '字段分类(默认分类default/工单管理workorder/客户管理customer)';
COMMENT ON COLUMN "SYS_CUS_FIELD"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_CUS_FIELD"."EDITOR" IS '编辑人';
COMMENT ON COLUMN "SYS_CUS_FIELD"."EDIT_TIME" IS '编辑时间';

-- ----------------------------
-- Records of SYS_CUS_FIELD
-- ----------------------------
INSERT INTO "SYS_CUS_FIELD" VALUES ('156ce873d1d34006931dc6668cd12abe', '工单备注', 'workorder_remark', 'default', 'textarea', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', TO_DATE('2020-04-17 13:51:02', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 13:51:02', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('1f5c3e23434343e2b39d92d04e2eb8f2', '工单归属', 'workorder_owner', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', TO_DATE('2020-04-17 13:18:13', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 13:18:13', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('23deb9732ca145dcaae8ab4d08b5742f', '来源终端', 'terminal', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', TO_DATE('2020-04-17 11:51:11', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 11:51:11', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('2f47b055346a4f0a8637411e864ac837', '首次电话联系时间', 'first_call_time', 'default', 'datatimepicker', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', TO_DATE('2020-04-17 11:55:05', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 11:55:05', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('3322ec8d65a64dc38e3fa5100fe6da9b', '地址', 'address', 'default', 'textarea', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', TO_DATE('2020-04-17 11:49:51', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 11:49:51', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('37c223ab5d4d454fb82fff5982f24431', '动态用户名', '{{userId}}', 'default', 'textfield_dynamic', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', TO_DATE('2020-04-18 16:17:36', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-18 16:17:36', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('38dfd8b42680495c9488034fa0ef7552', '手机', 'mobile', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', TO_DATE('2020-04-17 11:35:05', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 11:35:05', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('3b4526f278b147e8b261fe49bdf28407', '工单类型', 'workorder_type', 'default', 'select', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', TO_DATE('2020-04-17 13:21:48', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 13:21:48', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('3ccbbc5dd05649898f36777124c6a312', '邮箱', 'email', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', TO_DATE('2020-04-17 11:47:45', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 11:47:45', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('576e177d32c7420ab721e2b1e6bf60d2', '业务类型', 'business_type', 'default', 'select', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', TO_DATE('2020-04-17 13:13:57', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 13:13:57', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('65b23ece32ff4213b0c2c11a8a7873ed', '负责人', 'director', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'public', TO_DATE('2020-04-17 11:53:07', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 11:53:07', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('68ff5b3af4544cb5b3a41f880ab1c24c', '工单有效时间', 'workorder_valid_time', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', TO_DATE('2020-04-17 17:39:14', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 17:39:14', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('8c25679414ed48e8a4c3a4358a06d3b0', '客户等级', 'level', 'default', 'select', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', TO_DATE('2020-04-17 11:43:23', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-05-09 09:16:14', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('93975c9d0521497399460d100a97da20', '工单责任人', 'workorder_director', 'default', 'select_dynamic', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', TO_DATE('2020-04-17 13:19:04', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 13:19:04', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('961709bb96ce42f585119e8c5823e0e7', '最后一次电话联系时间', 'last_call_time', 'default', 'datatimepicker', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', TO_DATE('2020-04-17 11:54:24', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 11:54:24', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('a22ac17c27c945b78b4dd3f6e0707ab4', '工单创建人', 'workorder_creator', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', TO_DATE('2020-04-17 13:19:52', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 13:19:52', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('b82b0b99f0e44b579f01fe8956cc4990', '首次会话时间', 'first_session_time', 'default', 'datatimepicker', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', TO_DATE('2020-04-17 11:56:43', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 11:56:43', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('cf8fa5a9cfb54cfc9e65cce2eef11825', '最后一次会话时间', 'last_session_time', 'default', 'datatimepicker', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', TO_DATE('2020-04-17 11:56:13', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 11:56:13', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('d78e0379ae0d4c88857b9b6c5decb97d', '姓名', 'name', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', TO_DATE('2020-04-17 11:34:34', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 11:34:34', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('e5cd4be53925446880b6f3d624bdf9b2', '访客备注', 'visitor_remark', 'default', 'textarea', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', TO_DATE('2020-04-17 11:49:03', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 11:49:03', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('e722c640ec904909ba2ffbe7f092769c', '访客渠道', 'platform', 'default', 'select_dynamic', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', TO_DATE('2020-04-17 13:53:14', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 13:53:14', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('e895e1275a4f4dd8a77a30bc2b02aa7a', '客户属性', 'customer_property', 'preset', 'multi_select', '系统默认类型', '0015849442017540000000155d4c6010', 'customer', TO_DATE('2020-04-17 11:47:18', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-05-07 17:58:25', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('f4a19e9cd6114b1282d7adc7f97706d0', '创建时间', 'create_time', 'default', 'datatimepicker', '系统默认类型', '0015849442017540000000155d4c6010', 'public', TO_DATE('2020-04-17 11:57:32', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 11:57:32', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('f509265f583e49ada43faf9942e8704b', '工单指派', 'workorder_assignee', 'default', 'select_dynamic', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', TO_DATE('2020-04-17 13:21:47', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 13:21:47', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('fe7e3973dc2d4fbe97b42ac69edbdfbc', '更新时间', 'update_time', 'default', 'datatimepicker', '系统默认类型', '0015849442017540000000155d4c6010', 'public', TO_DATE('2020-04-17 11:57:10', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-04-17 11:57:10', 'SYYYY-MM-DD HH24:MI:SS'));
INSERT INTO "SYS_CUS_FIELD" VALUES ('feac1563bb644ec8852b24a28e5177d1', '工单售后', 'workorder_after_sale', 'default', 'textfield', '系统默认类型', '0015849442017540000000155d4c6010', 'workorder', TO_DATE('2020-05-13 11:57:10', 'SYYYY-MM-DD HH24:MI:SS'), '0015849442017540000000155d4c6010', TO_DATE('2020-05-17 11:57:10', 'SYYYY-MM-DD HH24:MI:SS'));

-- ----------------------------
-- Table structure for SYS_CUS_FIELD_CATE
-- ----------------------------
CREATE TABLE "SYS_CUS_FIELD_CATE"
(
    "ID"        VARCHAR2(32) NOT NULL,
    "PARENT_ID" VARCHAR2(32)  DEFAULT NULL,
    "CODE"      VARCHAR2(30)  DEFAULT NULL,
    "NAME"      VARCHAR2(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for SYS_CUS_FIELD_CATE
-- ----------------------------
COMMENT ON COLUMN "SYS_CUS_FIELD_CATE"."ID" IS '主键';
COMMENT ON COLUMN "SYS_CUS_FIELD_CATE"."PARENT_ID" IS '父级ID';
COMMENT ON COLUMN "SYS_CUS_FIELD_CATE"."CODE" IS '唯一分类码';
COMMENT ON COLUMN "SYS_CUS_FIELD_CATE"."NAME" IS '分类名字';

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
    "ID"       VARCHAR2(32) NOT NULL,
    "FIELD_ID" VARCHAR2(32)  DEFAULT NULL,
    "VAL"      VARCHAR2(128) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for SYS_CUS_FIELD_VAL
-- ----------------------------
COMMENT ON COLUMN "SYS_CUS_FIELD_VAL"."ID" IS '主键ID';
COMMENT ON COLUMN "SYS_CUS_FIELD_VAL"."FIELD_ID" IS '字段ID';
COMMENT ON COLUMN "SYS_CUS_FIELD_VAL"."VAL" IS '字段值';

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
    "ID"          VARCHAR2(32) NOT NULL,
    "NAME"        VARCHAR2(255) DEFAULT NULL,
    "PARENT_CODE" NUMBER(11)    DEFAULT NULL,
    "CODE"        NUMBER(11)    DEFAULT NULL,
    "APP_TAG"     VARCHAR2(20)  DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for SYS_OP_LOG_MODULE
-- ----------------------------
COMMENT ON COLUMN "SYS_OP_LOG_MODULE"."ID" IS 'ID';
COMMENT ON COLUMN "SYS_OP_LOG_MODULE"."NAME" IS '模块名';
COMMENT ON COLUMN "SYS_OP_LOG_MODULE"."PARENT_CODE" IS '父级模块数字标识';
COMMENT ON COLUMN "SYS_OP_LOG_MODULE"."CODE" IS '模块数字标识';
COMMENT ON COLUMN "SYS_OP_LOG_MODULE"."APP_TAG" IS '所属应用标签';

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
    "ID"          VARCHAR2(32) NOT NULL,
    "SOURCE_ID"   VARCHAR2(32) DEFAULT NULL,
    "ACD_ID"      VARCHAR2(32) DEFAULT NULL,
    "CREATOR"     VARCHAR2(32) DEFAULT NULL,
    "EDITOR"      VARCHAR2(32) DEFAULT NULL,
    "CREATE_TIME" DATE         DEFAULT NULL,
    "EDIT_TIME"   DATE         DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for SYS_PLATFORM_ACD
-- ----------------------------
COMMENT ON COLUMN "SYS_PLATFORM_ACD"."ID" IS '主键';
COMMENT ON COLUMN "SYS_PLATFORM_ACD"."SOURCE_ID" IS '渠道来源主键';
COMMENT ON COLUMN "SYS_PLATFORM_ACD"."ACD_ID" IS '策略ID';
COMMENT ON COLUMN "SYS_PLATFORM_ACD"."CREATOR" IS '创建者';
COMMENT ON COLUMN "SYS_PLATFORM_ACD"."EDITOR" IS '编辑者';
COMMENT ON COLUMN "SYS_PLATFORM_ACD"."CREATE_TIME" IS '创建时间';
COMMENT ON COLUMN "SYS_PLATFORM_ACD"."EDIT_TIME" IS '编辑时间';

-- ----------------------------
-- Table structure for SYS_PLATFORM_DETAIL
-- ----------------------------
CREATE TABLE "SYS_PLATFORM_DETAIL"
(
    "ID"            VARCHAR2(32) NOT NULL,
    "PLATFORM_TAG"  VARCHAR2(100) DEFAULT NULL,
    "PLATFORM_NAME" VARCHAR2(100) DEFAULT NULL,
    "SPA_ID"        VARCHAR2(32)  DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for SYS_PLATFORM_DETAIL
-- ----------------------------
COMMENT ON COLUMN "SYS_PLATFORM_DETAIL"."ID" IS '主键';
COMMENT ON COLUMN "SYS_PLATFORM_DETAIL"."PLATFORM_TAG" IS '平台标签';
COMMENT ON COLUMN "SYS_PLATFORM_DETAIL"."PLATFORM_NAME" IS '平台名称';
COMMENT ON COLUMN "SYS_PLATFORM_DETAIL"."SPA_ID" IS '渠道应用策略主表ID';

-- ----------------------------
-- Table structure for SYS_PLATFORM_SOURCE
-- ----------------------------
CREATE TABLE "SYS_PLATFORM_SOURCE"
(
    "ID"            VARCHAR2(32) NOT NULL,
    "SOURCE_NAME"   VARCHAR2(100) DEFAULT NULL,
    "FIXED_CHANNEL" VARCHAR2(255) DEFAULT NULL,
    "EX1"           VARCHAR2(255) DEFAULT NULL,
    "EX2"           VARCHAR2(255) DEFAULT NULL,
    "EX3"           VARCHAR2(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for SYS_PLATFORM_SOURCE
-- ----------------------------
COMMENT ON COLUMN "SYS_PLATFORM_SOURCE"."ID" IS '主键';
COMMENT ON COLUMN "SYS_PLATFORM_SOURCE"."SOURCE_NAME" IS '渠道来源名称';
COMMENT ON COLUMN "SYS_PLATFORM_SOURCE"."FIXED_CHANNEL" IS '固定渠道';

-- ----------------------------
-- Records of SYS_PLATFORM_SOURCE
-- ----------------------------
INSERT INTO "SYS_PLATFORM_SOURCE" VALUES ('1', 'iBot-PRO', 'pro_', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for SYS_VISIT_ORIGIN
-- ----------------------------
CREATE TABLE "SYS_VISIT_ORIGIN"
(
    "ID"          VARCHAR2(32) NOT NULL,
    "TAG"         VARCHAR2(50)  DEFAULT NULL,
    "ORIGIN_NAME" VARCHAR2(255) DEFAULT NULL,
    PRIMARY KEY ("ID")
);

-- ----------------------------
-- comment for SYS_VISIT_ORIGIN
-- ----------------------------
COMMENT ON COLUMN "SYS_VISIT_ORIGIN"."ID" IS '主键';
COMMENT ON COLUMN "SYS_VISIT_ORIGIN"."TAG" IS '唯一标识';
COMMENT ON COLUMN "SYS_VISIT_ORIGIN"."ORIGIN_NAME" IS '访客渠道名';

-- ----------------------------
-- Records of SYS_VISIT_ORIGIN
-- ----------------------------
INSERT INTO "SYS_VISIT_ORIGIN" VALUES ('8e40b4cd2e9b4b0aaadb2905a17eb57a', 'weixin', '微信');
INSERT INTO "SYS_VISIT_ORIGIN" VALUES ('9a7fbe0bb5cc4302b997374101f04052', 'web', '网页');
