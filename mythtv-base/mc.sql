CREATE DATABASE IF NOT EXISTS mythconverg;
GRANT ALL ON mythconverg.* TO 'mythtv'@'%' IDENTIFIED BY "mythtv";
GRANT ALL ON mythconverg.* TO 'mythtv'@'mythtv' IDENTIFIED BY "mythtv";
GRANT ALL ON mythconverg.* TO 'mythtv'@'localhost' IDENTIFIED BY "mythtv";
FLUSH PRIVILEGES;
GRANT CREATE TEMPORARY TABLES ON mythconverg.* TO mythtv@localhost IDENTIFIED BY "mythtv";
FLUSH PRIVILEGES;
ALTER DATABASE mythconverg DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
