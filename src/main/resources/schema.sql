CREATE TABLE sys_user
(
    id            BIGINT NOT NULL AUTO_INCREMENT COMMENT '用户 ID',
    user_name     VARCHAR(50) COMMENT '用户名',
    user_password VARCHAR(50) COMMENT '密码',
    user_email    VARCHAR(50) COMMENT '邮箱',
    head_img      BLOB COMMENT '头像',
    create_time   DATETIME COMMENT '创建时间',
    PRIMARY KEY (id)
);
ALTER TABLE sys_user
    COMMENT '用户表';

CREATE TABLE sys_role
(
    id          BIGINT NOT NULL AUTO_INCREMENT COMMENT '角色 ID',
    role_name   VARCHAR(50) COMMENT '角色名',
    enabled     INT COMMENT '有效标志',
    create_by   BIGINT COMMENT '创建人',
    create_time DATETIME COMMENT '创建时间',
    PRIMARY KEY (id)
);
ALTER TABLE sys_role
    COMMENT '角色表';

CREATE TABLE sys_privilege
(
    id             BIGINT NOT NULL AUTO_INCREMENT COMMENT '权限 ID',
    privilege_name VARCHAR(50) COMMENT '权限名称',
    privilege_url  VARCHAR(200) COMMENT '权限 URL',
    PRIMARY KEY (id)
);
ALTER TABLE sys_privilege
    COMMENT '权限表';

CREATE TABLE sys_user_role
(
    user_id BIGINT COMMENT '用户 ID',
    role_id BIGINT COMMENT '角色 ID'
);
ALTER TABLE sys_user_role
    COMMENT '用户角色关联表';

CREATE TABLE sys_role_privilege
(
    role_id      BIGINT COMMENT '角色 ID',
    privilege_id BIGINT COMMENT '权限 ID'
);
ALTER TABLE sys_role_privilege
    COMMENT '角色权限关联表';
