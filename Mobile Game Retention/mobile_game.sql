-- CREATE DATABASE
CREATE DATABASE IF NOT EXISTS retention_game;

-- ACTIVATE DATABASE
USE retention_game;

-- CREATING NECESSARY TABLES
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
-- LOAD DATA 
-- 'load data infile' is preferred to transfer data to tables quickly.
-- The file path may be different for you. You can continue by editing the file path 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\'.
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

-- Select database
USE retention_game;

-- Select all columns in the 'activity' table
SELECT
	*
FROM
	RETENTION_GAME.activity;

-- to list purchased products in table 'activity'
SELECT
	act.activity
FROM
	RETENTION_GAME.activity AS act
WHERE
	act.activity LIKE 'Product_%';

-- which user bought which product on which date?
SELECT
	act.user_id,
	act.activity_time,
	act.activity
FROM
	RETENTION_GAME.activity AS act
WHERE
	act.activity LIKE 'Product_%';
-- Which user bought which product on which date?
-- The date was arranged as year-month-day, and the purchased products were sorted by user name.
SELECT
	SUBSTR(act.activity_time, 1, 10) AS date,
	act.activity,
	act.user_id
FROM
	RETENTION_GAME.activity AS act
WHERE
	act.activity LIKE 'Product_%'
ORDER BY
	act.user_id;
-- purchases by day, listed by date 
SELECT
	SUBSTR(act.activity_time, 1, 10) AS date,
	COUNT(*) AS cnt
FROM
	RETENTION_GAME.activity AS act
WHERE
	act.activity LIKE 'Product_%'
GROUP BY
	date
ORDER BY
	date;
-- total number of purchases by users
SELECT
	act.user_id,
	COUNT(*) AS x_purch
FROM
	RETENTION_GAME.activity AS act
WHERE
	act.activity LIKE 'Product_%'
GROUP BY
	act.user_id
ORDER BY
	act.user_id;
-- total number of daily purchases by users
SELECT
	SUBSTR(act.activity_time, 1, 10) AS date,
	COUNT(*) AS x_purch ,
	act.user_id
FROM
	RETENTION_GAME.activity AS act
WHERE
	act.activity LIKE 'Product_%'
GROUP BY
	act.user_id,
	date
ORDER BY
	date,
	x_purch DESC,
	act.user_id;
-- number of daily purchases by user and product
SELECT
	SUBSTR(act.activity_time, 1, 10) AS date,
	act.user_id,
	act.activity,
	COUNT(*) AS x_purch
FROM
	RETENTION_GAME.activity AS act
WHERE
	act.activity LIKE 'Product_%'
GROUP BY
	act.user_id,
	date,
	act.activity
ORDER BY
	date,
	act.user_id,
	act.activity;
-- number of daily payment by user, product and price
SELECT
	SUBSTR(act.activity_time, 1, 10) AS date,
	act.user_id,
	act.activity,
	p_m.price,
	Count(*) AS x_purch,
	(
		p_m.price * Count(*)
	) AS payment
FROM
	RETENTION_GAME.activity AS act
JOIN(
		SELECT
			p.price ,
			CASE
				WHEN p.product_id = 1 THEN 'Product_Purchase_001'
				WHEN p.product_id = 2 THEN 'Product_Purchase_002'
				WHEN p.product_id = 3 THEN 'Product_Purchase_003'
			END AS activity
		FROM
			retention_game.product AS p
	) AS p_m ON
	act.activity = p_m.activity
WHERE
	act.activity LIKE 'Product_%'
GROUP BY
	act.user_id,
	date,
	act.activity,
	p_m.price
ORDER BY
	date,
	act.user_id,
	x_purch DESC;
-- all in one table
SELECT 
	SUBSTR(act.activity_time, 1, 10) AS date,
	act.user_id,
	acc_m.age_segment,
	acc_m.gender,
	act.activity,
	p_m.price,
	Count(*) AS x_purch,
	(
		p_m.price * Count(*)
	) AS payment
FROM
	RETENTION_GAME.activity AS act
JOIN(
		SELECT
			p.price ,
			CASE
				WHEN p.product_id = 1 THEN 'Product_Purchase_001'
				WHEN p.product_id = 2 THEN 'Product_Purchase_002'
				WHEN p.product_id = 3 THEN 'Product_Purchase_003'
			END AS activity
		FROM
			retention_game.product AS p
	) AS p_m ON
	act.activity = p_m.activity
JOIN(
		SELECT
			acc.user_id,
			acc.gender,
			CASE
				WHEN acc.age >= 0
					AND acc.age <= 18 THEN 'as_1'
					WHEN acc.age >= 19
					AND acc.age <= 24 THEN 'as_2'
					WHEN acc.age >= 25
					AND acc.age <= 30 THEN 'as_3'
					WHEN acc.age >= 31
					AND acc.age <= 40 THEN 'as_4'
					WHEN acc.age >= 41
					AND acc.age <= 55 THEN 'as_5'
					WHEN acc.age >= 56 THEN 'as_6'
				END AS age_segment
			FROM
				retention_game.account AS acc
	) AS acc_m ON
	act.user_id = acc_m.user_id
WHERE
	act.activity LIKE 'Product_%'
GROUP BY
	act.user_id,
	acc_m.age_segment,
	acc_m.gender,
	date,
	act.activity,
	p_m.price
ORDER BY
	date,
	act.user_id,
	x_purch ;
-- paying users
SELECT
	DISTINCT act.user_id AS paying_users
FROM
	retention_game.activity AS act
WHERE
	act.activity LIKE 'Product_%'
ORDER BY
	act.user_id;
-- paying users activity
SELECT
	act.user_id AS paying_users,
	SUBSTR(act.activity_time, 1, 10) AS date,
	count(act.activity_time) AS number_of_activity
FROM
	retention_game.activity AS act
WHERE
	act.user_id IN (
		SELECT
			DISTINCT act.user_id
		FROM
			retention_game.activity AS act
		WHERE
			act.activity LIKE 'Product_%'
	)
GROUP BY
	paying_users,
	date
ORDER BY
	date,
	paying_users;
-- paying users number of activity by day
SELECT
	SUBSTR(act.activity_time, 1, 10) AS date,
	count(act.activity_time) AS number_of_activity
FROM
	retention_game.activity AS act
WHERE
	act.user_id IN (
		SELECT
			DISTINCT act.user_id
		FROM
			retention_game.activity AS act
		WHERE
			act.activity LIKE 'Product_%'
	)
GROUP BY
	date
ORDER BY
	date,
	number_of_activity;
-- user login by day
SELECT cln.user_id, 
	MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-01' THEN 1 ELSE 0 END) AS '2022-11-01',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-02' THEN 1 ELSE 0 END) AS '2022-11-02',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-03' THEN 1 ELSE 0 END) AS '2022-11-03',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-04' THEN 1 ELSE 0 END) AS '2022-11-04',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-05' THEN 1 ELSE 0 END) AS '2022-11-05',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-06' THEN 1 ELSE 0 END) AS '2022-11-06',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-07' THEN 1 ELSE 0 END) AS '2022-11-07',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-08' THEN 1 ELSE 0 END) AS '2022-11-08',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-09' THEN 1 ELSE 0 END) AS '2022-11-09',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-11' THEN 1 ELSE 0 END) AS '2022-11-10',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-11' THEN 1 ELSE 0 END) AS '2022-11-11',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-12' THEN 1 ELSE 0 END) AS '2022-11-12',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-13' THEN 1 ELSE 0 END) AS '2022-11-13',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-14' THEN 1 ELSE 0 END) AS '2022-11-14',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-15' THEN 1 ELSE 0 END) AS '2022-11-15',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-16' THEN 1 ELSE 0 END) AS '2022-11-16',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-17' THEN 1 ELSE 0 END) AS '2022-11-17',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-18' THEN 1 ELSE 0 END) AS '2022-11-18',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-19' THEN 1 ELSE 0 END) AS '2022-11-19',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-20' THEN 1 ELSE 0 END) AS '2022-11-20',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-21' THEN 1 ELSE 0 END) AS '2022-11-21',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-22' THEN 1 ELSE 0 END) AS '2022-11-22',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-23' THEN 1 ELSE 0 END) AS '2022-11-23',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-24' THEN 1 ELSE 0 END) AS '2022-11-24',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-25' THEN 1 ELSE 0 END) AS '2022-11-25',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-26' THEN 1 ELSE 0 END) AS '2022-11-26',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-27' THEN 1 ELSE 0 END) AS '2022-11-27',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-28' THEN 1 ELSE 0 END) AS '2022-11-28',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-29' THEN 1 ELSE 0 END) AS '2022-11-29',
    MAX(CASE WHEN substr(cln.date,1,10)= '2022-11-30' THEN 1 ELSE 0 END) AS '2022-11-30'
FROM 
(
SELECT
	act.user_id,
	SUBSTR(act.activity_time, 1, 10) AS date
FROM
	retention_game.activity AS act
WHERE
	act.user_id IN (
		SELECT
			DISTINCT act.user_id
		FROM
			retention_game.activity AS act
		WHERE
			act.activity LIKE 'Product_%'
	)
GROUP BY
	act.user_id,
	date) AS cln
GROUP BY cln.user_id
ORDER BY cln.user_id;