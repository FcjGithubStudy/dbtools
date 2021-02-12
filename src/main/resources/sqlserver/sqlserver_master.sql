-- ----------------------------
-- Table structure for AUTH_ROLE
-- ----------------------------
CREATE TABLE "AUTH_ROLE"
(
    "ID"          NVARCHAR(32) NOT NULL,
    "ROLE_NAME"   NVARCHAR(255) DEFAULT NULL,
    "CREATE_TIME" DATE          DEFAULT NULL,
    "UPDATE_TIME" DATE          DEFAULT NULL,
    "OP_USERNAME" NVARCHAR(255) DEFAULT NULL,
    "AUTH_MODE"   INT           DEFAULT NULL,
    PRIMARY KEY ("ID")
);
-- ----------------------------
-- Records of AUTH_ROLE
-- ----------------------------
INSERT INTO "AUTH_ROLE" VALUES ('001592803923157000000000000001ar', '管理员', '2020-06-01 12:00:00', '2020-06-01 12:00:00', 'admin', 1234);
