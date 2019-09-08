SELECT `movieinfo`.`movieinfo_id`,
    `movieinfo`.`Title`,
    `movieinfo`.`MPAARating`,
    `movieinfo`.`Rating`,
    `movieinfo`.`RATINGLONGDESC`,
    `movieinfo`.`REASON`,
    `movieinfo`.`DISTRIBUTOR`
FROM `dbmovierating`.`movieinfo`;

CREATE TABLE `movieinfo` (
  `movieinfo_id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `MPAARating` varchar(5) DEFAULT NULL,
  `Rating` varchar(45) DEFAULT NULL,
  `RATINGLONGDESC` varchar(255) DEFAULT NULL,
  `REASON` varchar(255) DEFAULT NULL,
  `DISTRIBUTOR` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`movieinfo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT `personinfo`.`personinfo_id`,
    `personinfo`.`FirstName`,
    `personinfo`.`Age`,
    `personinfo`.`Sex`
FROM `dbmovierating`.`personinfo`;

CREATE TABLE `personinfo` (
  `personinfo_id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(12) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Sex` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`personinfo_id`),
  KEY `Age_index` (`Age`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT `personrating`.`personrating_id`,
    `personrating`.`Title`,
    `personrating`.`RaterName`,
    `personrating`.`Rating`
FROM `dbmovierating`.`personrating`;

CREATE TABLE `personrating` (
  `personrating_id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) DEFAULT NULL,
  `RaterName` varchar(12) DEFAULT NULL,
  `Rating` int(11) NOT NULL,
  PRIMARY KEY (`personrating_id`),
  KEY `Rating_index` (`Rating`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT `ratingdef`.`ratingdef_id`,
    `ratingdef`.`Ratingdef`
FROM `dbmovierating`.`ratingdef`;

CREATE TABLE `ratingdef` (
  `ratingdef_id` int(11) NOT NULL AUTO_INCREMENT,
  `Ratingdef` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ratingdef_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;









