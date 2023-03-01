CREATE SCHEMA devsbets;

USE devsbets;

CREATE TABLE Users 
( 
 ID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,  
 name VARCHAR(100) NOT NULL,  
 login VARCHAR(50) NOT NULL,  
 password VARCHAR(16) NOT NULL,  
 status tinyint(1) unsigned default'1',  
 UNIQUE (login)
); 

CREATE TABLE Bets 
( 
 ID INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,  
 result_team_a smallint unsigned NOT NULL,  
 result_team_b smallint unsigned NOT NULL,  
 status tinyint(1) unsigned not null default'1',  
 idUsers INT unsigned not null,  
 idMatchs INT  unsigned not null
); 

CREATE TABLE Matchs 
( 
 ID INT UNSIGNED PRIMARY KEY auto_increment,  
 status INT,  
 result_team_b smallint unsigned NOT NULL,  
 result_team_a smallint unsigned NOT NULL,  
 hour DATE NOT NULL,  
 date DATE NOT NULL,  
 id_team_a INT unsigned not null,  
 id_team_b INT unsigned not null 
); 

CREATE TABLE Teams 
( 
 ID INT UNSIGNED PRIMARY KEY auto_increment,  
 team VARCHAR(50) NOT NULL,
 UNIQUE(team)
); 

ALTER TABLE Bets ADD FOREIGN KEY(idUsers) REFERENCES Users (ID);
ALTER TABLE Bets ADD FOREIGN KEY(idMatchs) REFERENCES Matchs (ID);
ALTER TABLE Matchs ADD FOREIGN KEY(id_team_a) REFERENCES Teams (ID);
ALTER TABLE Matchs ADD FOREIGN KEY(id_team_b) REFERENCES Teams (ID);
