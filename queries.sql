USE codeigniter_rob;
CREATE TABLE IF NOT EXISTS sessions (
	session_id varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
	ip_address varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
	user_agent varchar(120) COLLATE utf8_bin DEFAULT NULL,
	last_activity INT(10) unsigned NOT NULL DEFAULT '0',
	user_data text COLLATE utf8_bin NOT NULL,
	PRIMARY KEY (session_id),
	KEY last_activity_idx (last_activity)
);

CREATE TABLE IF NOT EXISTS users (
	id int(11) NOT NULL AUTO_INCREMENT,
	first_name varchar(125) NOT NULL,
	last_name varchar(125) NOT NULL,
	email varchar(255) NOT NULL,
	created_date int(11) NOT NULL COMMENT 'unix timestamp',
	is_active varchar(3) NOT NULL COMMENT 'yes or no',
	PRIMARY KEY (id)
);

INSERT INTO users(id, first_name, last_name, email, created_date, is_active)
	VALUES(5, 'First Name', 'Last Name', 'first@last.com', 0, '0');