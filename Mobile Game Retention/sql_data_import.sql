CREATE DATABASE IF NOT EXISTS retention_game;

USE retention_game;

CREATE TABLE IF NOT EXISTS  RETENTION_GAME.event (
	user_id varchar(50) NULL,
	device_id varchar(50) NULL,
	event_name varchar(50) NULL,
	event_time varchar(50) NULL
);

CREATE TABLE IF NOT EXISTS RETENTION_GAME.product (
	product_id int2 NULL,
	price int8 NULL,
	skin_color varchar(50) NULL
);

CREATE TABLE IF NOT EXISTS RETENTION_GAME.age_segment (
	id int2 NULL,
	age_min int2 NULL,
	age_max int2 NULL
);

CREATE TABLE IF NOT EXISTS RETENTION_GAME.account (
	user_id varchar(50) NULL,
	device_id varchar(50) NULL,
	age int4 NULL,
	gender varchar(50) NULL
);

-- load data 'account'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\RETENTION_GAME\\account.csv' 
INTO TABLE RETENTION_GAME.account 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- load data 'event'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\RETENTION_GAME\\event.csv' 
INTO TABLE RETENTION_GAME.event 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- load data 'age_segment'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\RETENTION_GAME\\age_segment.csv' 
INTO TABLE RETENTION_GAME.age_segment 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- load data 'product'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\RETENTION_GAME\\product.csv' 
INTO TABLE RETENTION_GAME.product 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
