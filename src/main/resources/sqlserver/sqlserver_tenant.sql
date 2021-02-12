-- ----------------------------
-- Table structure for AUTH_ROLE
-- ----------------------------
CREATE TABLE "AUTH_ROLE"
(
    "ID"          NVARCHAR(32) NOT NULL,
    "ROLE_NAME"   NVARCHAR(128)  DEFAULT NULL,
    "ROLE_TYPE"   INT            DEFAULT NULL,
    "DESCRIPTION" NVARCHAR(1500) DEFAULT NULL,
    "CREATOR"     NVARCHAR(32)   DEFAULT NULL,
    "CREATE_TIME" DATE           DEFAULT NULL,
    "EDITOR"      NVARCHAR(32)   DEFAULT NULL,
    "EDIT_TIME"   DATE           DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Records of AUTH_ROLE
-- ----------------------------
INSERT INTO "AUTH_ROLE" VALUES ('27e55a01b74342189b00000adminrole', '管理员', 1, '管理员', '27e55a01b74342189b000000000admin', '2020-09-30 18:25:10.000', NULL, '2020-09-30 18:25:10.000');

