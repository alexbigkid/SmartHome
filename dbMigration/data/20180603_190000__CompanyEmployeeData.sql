LOCK TABLES `Company` WRITE;
INSERT INTO `Company` (`CompanyName`, `Address1`, `Address2`, `Building`, `City`, `StateId`, `ZipCode`, `CountryId`, `Phone`, `LastUpdated`)
VALUES
	('ABKphoto','12568 Golden Eye Ln.,','','','Poway',5,92064,229,8584809898,CURDATE()),
	('SmartHome','12568 Golden Eye Ln.,','','','Poway',5,92064,229,8584809898,CURDATE());

LOCK TABLES `Employees` WRITE;
INSERT INTO `Employees` (`FirstName`, `MiddleName`, `LastName`, `JobDescription`, `Email`, `SkypeName`, `CellPhone`, `CellPhoneCountryPrefix`, `CompanyId`, `DateStarted`, `DateTerminated`, `Active`, `LastUpdated`)
VALUES
	('Alex','','Berger','Photographer','abk.photo@abkcompany.com','alexbigkid',8584809898,1,1,'2014-01-14',NULL,b'1',CURDATE()),
	('Alex','','Berger','Director of Engineering / Owner','Info.SmartHome@abkcompany.com','alexbigkid',8584809898,1,2,'2018-06-08',NULL,b'1',CURDATE()),
	('Andrea','Maria','Duque','Director of Marketing and Sales','Sales.SmartHome@abkcompany.com','',8583537568,1,2,'2018-06-08',NULL,b'1',CURDATE());

UNLOCK TABLES;
