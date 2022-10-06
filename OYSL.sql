DROP DATABASE IF EXISTS OYSL_DB;
CREATE DATABASE OYSL_DB;

USE OYSL_DB;

CREATE TABLE user(
	ID INT NOT NULL AUTO_INCREMENT,
	username VARCHAR(60),
	Password VARCHAR(60),
	wins INT NOT NULL,
	PRIMARY KEY (ID)
)ENGINE=InnoDB;

CREATE TABLE Game(
	ID INT NOT NULL AUTO_INCREMENT,
	date VARCHAR(10),	/*YYYY-MM-DD*/
	hour VARCHAR(10),	/*HH: MM: SS*/
	duration INT,		/*Time in minutes*/
	winner VARCHAR(60),
	PRIMARY KEY (ID)
)ENGINE=InnoDB;

CREATE TABLE Games(
	ID_U INT,
	ID_G INT,
	score INT,
	FOREIGN KEY (ID_U) REFERENCES user(ID),
	FOREIGN KEY (ID_G) REFERENCES Game(ID)
)ENGINE=InnoDB;

INSERT INTO user(username, Password, wins) VALUES ('VittoelGanso','12',2); 
INSERT INTO user(username, Password, wins) VALUES ('Mario','34',2);
INSERT INTO user(username, Password, wins) VALUES ('Nil','56',10);
INSERT INTO user(username, Password, wins) VALUES ('Miguel','78',0);
INSERT INTO user(username, Password, wins) VALUES ('Eda','51',2);
INSERT INTO user(username, Password, wins) VALUES ('Pablo','88',0);
INSERT INTO user(username, Password, wins) VALUES ('Aitana','98',1);
INSERT INTO user(username, Password, wins) VALUES ('Aida','345',0);

INSERT INTO Game(date, hour, duration, winner) VALUES ('2008-07-01','00: 01: 59',120,'VittoelGanso');
INSERT INTO Game(date, hour, duration, winner) VALUES ('2010-08-22','10: 59: 59',60,'Mario');
INSERT INTO Game(date, hour, duration, winner) VALUES ('2005-05-05','22: 30: 15',14,'VittoelGanso');
INSERT INTO Game(date, hour, duration, winner) VALUES ('2020-07-01','00: 17: 00',40,'Mario');
INSERT INTO Game(date, hour, duration, winner) VALUES ('2008-07-15','08: 00: 00',120,'Eda');
INSERT INTO Game(date, hour, duration, winner) VALUES ('2009-01-01','20: 00: 00',120,'Jordi');

INSERT INTO Games(ID_U, ID_G, score) VALUES (5,1,11);
INSERT INTO Games(ID_U, ID_G, score) VALUES (1,1,25);
INSERT INTO Games(ID_U, ID_G, score) VALUES (7,2,60);
INSERT INTO Games(ID_U, ID_G, score) VALUES (2,2,59);
INSERT INTO Games(ID_U, ID_G, score) VALUES (1,3,14);
INSERT INTO Games(ID_U, ID_G, score) VALUES (8,3,12);
INSERT INTO Games(ID_U, ID_G, score) VALUES (3,4,40);
INSERT INTO Games(ID_U, ID_G, score) VALUES (7,4,35);
INSERT INTO Games(ID_U, ID_G, score) VALUES (7,5,11);
INSERT INTO Games(ID_U, ID_G, score) VALUES (5,5,12);
INSERT INTO Games(ID_U, ID_G, score) VALUES (2,6,11);
INSERT INTO Games(ID_U, ID_G, score) VALUES (6,6,5);