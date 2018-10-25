CREATE TABLE account(
    uid INTEGER NOT NULL auto_increment,
    username VARCHAR (64),
    password VARCHAR(64),
    email VARCHAR(128),
    PRIMARY KEY (uid),
    UNIQUE KEY email(email)
);

CREATE TABLE role(
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET latin5 NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=2
ROW_FORMAT=COMPACT
;

CREATE TABLE permission(
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`permission`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=3
ROW_FORMAT=COMPACT
;

CREATE TABLE user_role(
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`user_id`  int(11) NULL DEFAULT NULL ,
`role_id`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=2
ROW_FORMAT=COMPACT
;


CREATE TABLE role_permission(
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`role_id`  int(11) NULL DEFAULT NULL ,
`permission_id`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=3
ROW_FORMAT=COMPACT
;