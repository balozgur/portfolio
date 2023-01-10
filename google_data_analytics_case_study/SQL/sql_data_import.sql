-- create database 'google_cs'
CREATE DATABASE google_cs;

-- activate 'google_cs'
USE google_cs;

-- 2020 data
-- create table `divvy_trips_2020_q1` 
CREATE TABLE IF NOT EXISTS `divvy_trips_2020_q1` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_2020_Q1.csv'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Divvy_Trips_2020_Q1.csv' 
INTO TABLE google_cs.divvy_trips_2020_q1 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202004`
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202004` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202004'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202004-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202004 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202005`
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202005` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202005'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202005-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202005 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202006`
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202006` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202006'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202006-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202006 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202007`
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202007` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202007'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202007-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202007 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202008`
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202008` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202008'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202008-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202005 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202009`
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202009` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202009'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202009-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202009 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202010`
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202010` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202010'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202010-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202005 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202011`
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202011` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202011'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202011-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202011 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202012`
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202012` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202012'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202012-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202012 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- 2021 data
-- create table `Divvy_Trips_202101` 
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202101` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202101'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202101-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202101 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202102` 
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202102` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202102'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202102-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202102 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202103` 
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202103` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202103'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202103-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202103 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202104` 
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202104` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202104'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202104-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202104 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202105` 
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202105` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202105'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202105-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202105 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202106` 
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202106` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202106'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202106-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202106 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_2021047 
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202107` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202107'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202107-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202107
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202108` 
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202108` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202108'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202108-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202108 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202109` 
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202109` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202109'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202109-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202109 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202110` 
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202110` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202110'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202110-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202110 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202111` 
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202111` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202111'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202111-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202111 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- create table `Divvy_Trips_202112` 
CREATE TABLE IF NOT EXISTS `Divvy_Trips_202112` (
  `ride_id` text,
  `rideable_type` text,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `start_station_name` text,
  `start_station_id` text,
  `end_station_name` text,
  `end_station_id` text,
  `start_lat` text,
  `start_lng` text,
  `end_lat` text,
  `end_lng` text,
  `member_casual` text
);

-- load data 'Divvy_Trips_202112'
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202112-divvy-tripdata.csv' 
INTO TABLE google_cs.Divvy_Trips_202112 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;