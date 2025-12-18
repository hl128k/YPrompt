/*
 Navicat Premium Dump SQL

 Source Server         : 顶顶顶顶
 Source Server Type    : SQLite
 Source Server Version : 3045000 (3.45.0)
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3045000 (3.45.0)
 File Encoding         : 65001

 Date: 18/12/2025 12:50:32
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "users";
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  
  -- Linux.do OAuth字段
  linux_do_id VARCHAR(64) DEFAULT NULL,
  linux_do_username VARCHAR(100) DEFAULT NULL,
  
  -- 本地认证字段
  username VARCHAR(50) DEFAULT NULL,
  password_hash VARCHAR(255) DEFAULT NULL,
  
  -- 通用字段
  name VARCHAR(100) NOT NULL,
  avatar VARCHAR(500) DEFAULT NULL,
  email VARCHAR(100) DEFAULT NULL,
  auth_type VARCHAR(10) NOT NULL DEFAULT 'linux_do',
  is_active INTEGER NOT NULL DEFAULT 1,
  is_admin INTEGER NOT NULL DEFAULT 0,
  
  last_login_time DATETIME DEFAULT NULL,
  create_time DATETIME DEFAULT CURRENT_TIMESTAMP,
  update_time DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (1, NULL, NULL, 'demo', '$2b$12$EojyLhSyPgvw.GsDL6MBOeCDt9bS21SQmGOr8egPGPsADbLJ42jPS', '管理员', NULL, NULL, 'local', 1, 1, '2025-12-18 11:46:43', '2025-12-17 12:13:18', '2025-12-18 03:46:43');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (2, '78620', 'JesseChenZhiWei', NULL, NULL, 'Jesse', 'https://linux.do/user_avatar/linux.do/jessechenzhiwei/288/638802_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 20:30:32', '2025-12-17 12:30:32', '2025-12-17 12:30:32');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (3, '189406', '24suibaigei', NULL, NULL, '24岁是白给', 'https://linux.do/letter_avatar/24suibaigei/288/5_c16b2ee14fe83ed9a59fc65fbec00f85.png', NULL, 'linux_do', 1, 0, '2025-12-17 20:34:41', '2025-12-17 12:34:41', '2025-12-17 12:34:41');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (4, '226909', 'fordt', NULL, NULL, 'fordt', 'https://linux.do/letter_avatar/fordt/288/5_c16b2ee14fe83ed9a59fc65fbec00f85.png', NULL, 'linux_do', 1, 0, '2025-12-17 20:35:15', '2025-12-17 12:35:15', '2025-12-18 03:58:46');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (5, '31705', 'Alexei', NULL, NULL, 'Alexei Leery', 'https://linux.do/user_avatar/linux.do/alexei/288/1181228_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 20:35:45', '2025-12-17 12:35:45', '2025-12-17 12:35:45');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (6, '108740', 'baiqiu45', NULL, NULL, 'Baiqiu45', 'https://linux.do/user_avatar/linux.do/baiqiu45/288/497826_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 20:41:01', '2025-12-17 12:41:01', '2025-12-17 12:41:01');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (7, '145038', 'newwangshaofeng', NULL, NULL, 'Shaofeng Wang', 'https://linux.do/user_avatar/linux.do/newwangshaofeng/288/751016_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 20:45:55', '2025-12-17 12:45:55', '2025-12-17 12:45:55');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (8, '214481', 'haiping_ma', NULL, NULL, 'haiping ma', 'https://linux.do/user_avatar/linux.do/haiping_ma/288/312919_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 20:47:18', '2025-12-17 12:47:18', '2025-12-17 12:47:18');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (9, '243217', 'yuda_huo', NULL, NULL, 'yuda huo', 'https://linux.do/user_avatar/linux.do/yuda_huo/288/364687_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 20:51:15', '2025-12-17 12:51:15', '2025-12-17 12:51:15');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (10, '133274', 'fish2018', NULL, NULL, 'fish2018', 'https://linux.do/user_avatar/linux.do/fish2018/288/912214_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 22:16:22', '2025-12-17 12:54:53', '2025-12-18 03:58:46');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (11, '139581', 'ztm_tech', NULL, NULL, 'sawachiwa', 'https://linux.do/user_avatar/linux.do/ztm_tech/288/320678_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 21:04:36', '2025-12-17 13:04:36', '2025-12-17 13:04:36');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (12, '256657', 'S.TAR', NULL, NULL, 'S.TAR. ', 'https://linux.do/user_avatar/linux.do/s.tar/288/364869_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 21:09:30', '2025-12-17 13:09:30', '2025-12-17 13:09:30');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (13, '245737', 'benben2025', NULL, NULL, 'benben2025', 'https://linux.do/letter_avatar/benben2025/288/5_c16b2ee14fe83ed9a59fc65fbec00f85.png', NULL, 'linux_do', 1, 0, '2025-12-17 21:10:10', '2025-12-17 13:10:10', '2025-12-18 03:58:46');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (14, '7337', 'youyashuai', NULL, NULL, 'Vercel', 'https://linux.do/user_avatar/linux.do/youyashuai/288/10055_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 21:12:57', '2025-12-17 13:12:57', '2025-12-17 13:12:57');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (15, '138654', 'kevin273945', NULL, NULL, 'kevin273945', 'https://linux.do/user_avatar/linux.do/kevin273945/288/703799_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 21:39:25', '2025-12-17 13:39:25', '2025-12-18 03:58:46');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (16, '180456', 'seool', NULL, NULL, 'seool', 'https://linux.do/user_avatar/linux.do/seool/288/901232_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 21:39:48', '2025-12-17 13:39:48', '2025-12-18 03:58:46');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (17, '97589', 'vip6245', NULL, NULL, '秦王绕柱', 'https://linux.do/letter_avatar/vip6245/288/5_c16b2ee14fe83ed9a59fc65fbec00f85.png', NULL, 'linux_do', 1, 0, '2025-12-17 21:45:05', '2025-12-17 13:45:05', '2025-12-17 13:45:05');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (18, '4224', 'YASUAKI', NULL, NULL, '平沢唯', 'https://linux.do/user_avatar/linux.do/yasuaki/288/611299_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 21:49:08', '2025-12-17 13:49:08', '2025-12-17 13:49:08');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (19, '63570', 'xsc', NULL, NULL, 'xsc', 'https://linux.do/user_avatar/linux.do/xsc/288/1241796_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 21:56:16', '2025-12-17 13:56:16', '2025-12-18 03:58:46');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (20, '213966', 'user2580', NULL, NULL, 'GGboy', 'https://linux.do/user_avatar/linux.do/user2580/288/1264410_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 21:57:46', '2025-12-17 13:57:46', '2025-12-17 13:57:46');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (21, '138662', 'Dc0115', NULL, NULL, 'Dc0115', 'https://linux.do/letter_avatar/dc0115/288/5_c16b2ee14fe83ed9a59fc65fbec00f85.png', NULL, 'linux_do', 1, 0, '2025-12-17 22:00:03', '2025-12-17 14:00:03', '2025-12-18 03:58:46');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (22, '65912', 'St4rry', NULL, NULL, 'St4rry', 'https://linux.do/user_avatar/linux.do/st4rry/288/787446_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 22:00:38', '2025-12-17 14:00:38', '2025-12-18 03:58:46');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (23, '11798', 'away', NULL, NULL, 'away', 'https://linux.do/user_avatar/linux.do/away/288/353139_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 22:20:49', '2025-12-17 14:20:49', '2025-12-17 14:20:49');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (24, '35189', 'uniqueww', NULL, NULL, 'uniqueww', 'https://linux.do/user_avatar/linux.do/uniqueww/288/316643_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 22:21:40', '2025-12-17 14:21:40', '2025-12-17 14:21:40');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (25, '147836', 'xfxf233', NULL, NULL, 'Xander', 'https://linux.do/user_avatar/linux.do/xfxf233/288/985929_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 22:47:12', '2025-12-17 14:47:12', '2025-12-17 14:47:12');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (26, '29792', 'JLWY', NULL, NULL, 'JLWY', 'https://linux.do/user_avatar/linux.do/jlwy/288/1157509_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 23:18:10', '2025-12-17 15:18:10', '2025-12-17 15:18:10');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (27, '54045', 'Raymind', NULL, NULL, '叽里呱啦', 'https://linux.do/user_avatar/linux.do/raymind/288/229459_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 23:26:06', '2025-12-17 15:26:06', '2025-12-17 15:26:06');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (28, '3652', 'EDWINCHENC', NULL, NULL, 'CHEN', 'https://linux.do/user_avatar/linux.do/edwinchenc/288/892703_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 23:27:47', '2025-12-17 15:27:47', '2025-12-17 15:27:47');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (29, '9303', 'acrr521', NULL, NULL, '林景德', 'https://linux.do/user_avatar/linux.do/acrr521/288/610798_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 23:32:49', '2025-12-17 15:32:49', '2025-12-17 15:32:49');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (30, '112304', 'xymoryn', NULL, NULL, 'xymoryn', 'https://linux.do/user_avatar/linux.do/xymoryn/288/513800_2.png', NULL, 'linux_do', 1, 0, '2025-12-17 23:47:01', '2025-12-17 15:47:01', '2025-12-17 15:47:01');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (31, '57771', 'ChicaChan', NULL, NULL, '搓澡巾', 'https://linux.do/user_avatar/linux.do/chicachan/288/845508_2.png', NULL, 'linux_do', 1, 0, '2025-12-18 00:05:18', '2025-12-17 16:05:18', '2025-12-17 16:05:18');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (32, '107623', 'xiaoheizi666', NULL, NULL, '小Q', 'https://linux.do/user_avatar/linux.do/xiaoheizi666/288/545361_2.png', NULL, 'linux_do', 1, 0, '2025-12-18 00:28:07', '2025-12-17 16:28:07', '2025-12-17 16:28:07');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (33, '193416', 'startrail', NULL, NULL, 'startrail', 'https://linux.do/user_avatar/linux.do/startrail/288/1242461_2.png', NULL, 'linux_do', 1, 0, '2025-12-18 04:31:37', '2025-12-17 20:31:37', '2025-12-17 20:31:37');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (34, '269108', 'DanteVincent', NULL, NULL, 'Vincent Chen', 'https://linux.do/user_avatar/linux.do/dantevincent/288/1202111_2.png', NULL, 'linux_do', 1, 0, '2025-12-18 08:31:17', '2025-12-18 00:04:20', '2025-12-18 00:31:17');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (35, '31267', 'Jochen', NULL, NULL, 'Jochen', 'https://linux.do/user_avatar/linux.do/jochen/288/96335_2.png', NULL, 'linux_do', 1, 0, '2025-12-18 08:37:01', '2025-12-18 00:37:01', '2025-12-18 00:37:01');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (36, '20767', 'gopher404', NULL, NULL, 'admin404', 'https://linux.do/user_avatar/linux.do/gopher404/288/300445_2.png', NULL, 'linux_do', 1, 0, '2025-12-18 10:50:47', '2025-12-18 02:50:47', '2025-12-18 02:50:47');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (37, '122481', 'qbter', NULL, NULL, '行云', 'https://linux.do/user_avatar/linux.do/qbter/288/671395_2.png', NULL, 'linux_do', 1, 0, '2025-12-18 11:07:32', '2025-12-18 03:07:32', '2025-12-18 03:07:32');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (38, '205213', 'mx999160', NULL, NULL, 'Alive', 'https://linux.do/letter_avatar/mx999160/288/5_c16b2ee14fe83ed9a59fc65fbec00f85.png', NULL, 'linux_do', 1, 0, '2025-12-18 11:15:06', '2025-12-18 03:15:06', '2025-12-18 03:15:06');
INSERT INTO "users" ("id", "linux_do_id", "linux_do_username", "username", "password_hash", "name", "avatar", "email", "auth_type", "is_active", "is_admin", "last_login_time", "create_time", "update_time") VALUES (39, '59672', 'cwpcyy', NULL, NULL, 'cwpcyy', 'https://linux.do/user_avatar/linux.do/cwpcyy/288/931336_2.png', NULL, 'linux_do', 1, 0, '2025-12-18 11:46:28', '2025-12-18 03:46:28', '2025-12-18 03:46:28');
COMMIT;

-- ----------------------------
-- Auto increment value for users
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 39 WHERE name = 'users';

-- ----------------------------
-- Indexes structure for table users
-- ----------------------------
CREATE INDEX "main"."idx_auth_type"
ON "users" (
  "auth_type" ASC
);
CREATE INDEX "main"."idx_is_active"
ON "users" (
  "is_active" ASC
);
CREATE UNIQUE INDEX "main"."uk_linux_do_id"
ON "users" (
  "linux_do_id" ASC
);
CREATE UNIQUE INDEX "main"."uk_username"
ON "users" (
  "username" ASC
);

-- ----------------------------
-- Triggers structure for table users
-- ----------------------------
CREATE TRIGGER "main"."update_users_timestamp"
AFTER UPDATE
ON "users"
FOR EACH ROW
BEGIN
  UPDATE users SET update_time = CURRENT_TIMESTAMP WHERE id = OLD.id;
END;

PRAGMA foreign_keys = true;
