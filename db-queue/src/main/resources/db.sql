CREATE TABLE `db_queue_message` (
	`id` BIGINT(20) NOT NULL AUTO_INCREMENT,
	`topic` VARCHAR(50) NOT NULL,
	`message` VARCHAR(500) NOT NULL,
	`locker` VARCHAR(50) NULL DEFAULT NULL,
	`error_msg` VARCHAR(100) NULL DEFAULT NULL,
	`status` TINYINT(4) NOT NULL,
	`gmt_create` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`gmt_modified` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
)
COMMENT='基于数据库的队列表，里面存放的是message'
COLLATE='utf8_general_ci'
ENGINE=InnoDB