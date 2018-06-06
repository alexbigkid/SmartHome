LOCK TABLES `FootballWorldCup` WRITE;
INSERT INTO `FootballWorldCup` (`year`, `HostCountry1Id`, `HostCountry2Id`, `HostCountry3Id`, `1stPlacedCountryId`, `2ndPlacedCountryId`, `3rdPlacedCountryId`, `4thPlacedCountryId`, `1stPlacedLastGameScore`, `2ndPlacedLastGameScore`, `3rdPlacedLastGameScore`, `4thPlacedLastGameScore`, `numberOfTeams`)
VALUES
	(1930, 230 ,NULL ,NULL ,230 ,10  ,229 ,241 ,4 ,2 ,0 ,0 ,13),
	(1934 ,102 ,NULL ,NULL ,102 ,242 ,78  ,14  ,2 ,1 ,3 ,2 ,16),
    (1938 ,73  ,NULL ,NULL ,102 ,93  ,29  ,208 ,4 ,2 ,4 ,2 ,16),
    (1950 ,29  ,NULL ,NULL ,230 ,29  ,208 ,202 ,2 ,1 ,0 ,0 ,16),
    (1954 ,209 ,NULL ,NULL ,78  ,93  ,14  ,230 ,3 ,2 ,3 ,1 ,16),
    (1958 ,208 ,NULL ,NULL ,29  ,208 ,73  ,78  ,5 ,2 ,6 ,3 ,16),
    (1962 ,43  ,NULL ,NULL ,29  ,242 ,43  ,241 ,3 ,1 ,1 ,0 ,16),
    (1966 ,243 ,NULL ,NULL ,243 ,78  ,170 ,176 ,4 ,2 ,2 ,1 ,16),
    (1970 ,135 ,NULL ,NULL ,29  ,102 ,78  ,230 ,4 ,1 ,1 ,0 ,16),
    (1974 ,78  ,NULL ,NULL ,78  ,148 ,169 ,29  ,2 ,1 ,1 ,0 ,16),
    (1978 ,10  ,NULL ,NULL ,10  ,148 ,29  ,102 ,3 ,1 ,2 ,1 ,16),
    (1982 ,202 ,NULL ,NULL ,102 ,78  ,169 ,73  ,3 ,1 ,3 ,2 ,24),
    (1986 ,135 ,NULL ,NULL ,10  ,78  ,73  ,21  ,3 ,2 ,4 ,2 ,24),
    (1990 ,102 ,NULL ,NULL ,78  ,10  ,102 ,243 ,1 ,0 ,2 ,1 ,24),
    (1994 ,229 ,NULL ,NULL ,29  ,102 ,208 ,33  ,3 ,2 ,4 ,0 ,24),
    (1998 ,73  ,NULL ,NULL ,73  ,29  ,51  ,148 ,3 ,0 ,2 ,1 ,32),
	(2002 ,200 ,105  ,NULL ,29  ,78  ,220 ,200 ,2 ,0 ,3 ,2 ,32),
    (2006 ,78  ,NULL ,NULL ,102 ,73  ,78  ,170 ,5 ,3 ,3 ,1 ,32),
    (2010 ,199 ,NULL ,NULL ,202 ,148 ,78  ,230 ,1 ,0 ,3 ,2 ,32),
    (2014 ,29  ,NULL ,NULL ,78  ,10  ,148 ,29  ,1 ,0 ,3 ,0 ,32);

UNLOCK TABLES;
