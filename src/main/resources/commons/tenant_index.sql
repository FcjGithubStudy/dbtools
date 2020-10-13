-- -------------------------------------------------
-- 【开头说明】
-- 此文件记录【创建索引】sql，采用通用写法，兼容所有数据库
-- 所有加索引的【字段名】前后,均用【开始占位符@】和【结束占位符#】标记，在运行时会更根据数据库动态替换成【`】或【"】或其他数据库专用转义符号。
-- 索引名命名规范：【前缀】+【表名首字母简写大写】+【列名首字母简写大写】，采用下划线_分隔，名字不能重复
-- 前缀说明：【N_】表示Normal(普通索引)，【U_】表示Unique(唯一索引)
-- 命名举例：CREATE INDEX N_OTFG_TI ON ORDER_TEMPLATE_FIELD_GROUP (TEMPLATE_ID);
-- oracle中规定：索引名不能超过30个字符，且不得重复，命名时请注意一下此问题
-- -------------------------------------------------

CREATE INDEX N_CCC_SS ON CRM_CUSTOMER_COL (@SHOW_SYS#);
CREATE UNIQUE INDEX U_CC_F_M ON CRM_CONFIG (@FIELD_NAME#, @MODULE#);
CREATE UNIQUE INDEX U_CC_P_S ON CRM_CUSTOMER (@PHONE#, @SOURCE#);
CREATE UNIQUE INDEX U_CCD_PS ON CRM_CUSTOMER_DATA (@PHONE#, @SOURCE#);
CREATE INDEX N_CCD_VI ON CRM_CUSTOMER_DATA (@VISIT_ID#);
CREATE UNIQUE INDEX U_CM_B ON CRM_MENU (@BH#);
CREATE INDEX N_CRM_R ON CRM_ROLE_MENU (@ROLE_ID#);
CREATE INDEX N_CRM_M ON CRM_ROLE_MENU (@MENU_ID#);
CREATE INDEX N_OT_S ON ORDER_TEMPLATE (@STATUS#);
CREATE INDEX N_OT_UT ON ORDER_TEMPLATE (@UPDATE_TIME#);
CREATE INDEX N_OTF_GI ON ORDER_TEMPLATE_FIELD (@GROUP_ID#);
CREATE INDEX N_OTFG_TI ON ORDER_TEMPLATE_FIELD_GROUP (@TEMPLATE_ID#);








-- -------------------------------------------------
-- 【结尾再次说明，方便查看】
-- 此文件记录【创建索引】sql，采用通用写法，兼容所有数据库
-- 所有加索引的【字段名】前后,均用【开始占位符@】和【结束占位符#】标记，在运行时会更根据数据库动态替换成【`】或【"】或其他数据库专用转义符号。
-- 索引名命名规范：【前缀】+【表名首字母简写大写】+【列名首字母简写大写】，采用下划线_分隔，名字不能重复
-- 前缀说明：【N_】表示Normal(普通索引)，【U_】表示Unique(唯一索引)
-- 命名举例：CREATE INDEX N_OTFG_TI ON ORDER_TEMPLATE_FIELD_GROUP (TEMPLATE_ID);
-- oracle中规定：索引名不能超过30个字符，且不得重复，命名时请注意一下此问题
-- -------------------------------------------------
