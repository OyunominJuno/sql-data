USE world;
/*Question 1. Duplicated primary key because already ID = 1 exists.*/
INSERT city
VALUES (1, 'foo', 'ABW', 'Whee', 100000);

/*Question 2. We cannot add new country here without adding it to a country table.*/
INSERT countrylanguage
VALUES ('ZZZ', 'Zebraese', 'T', 34.2);

/*Question 3.PK is connected to the city and language table, so without deleting 
associated rows from the children tables, cannot delete */
DELETE FROM country
WHERE Code = 'ABW';

/*Question 4. Continent row data type is enumarated and there is no Minionland in that. 
Unless it is from the 7 continent it won't let you update it.*/
UPDATE country
SET Continent = 'Minionland'
WHERE Code = 'ABW';

/*Question 5. Population column is non-null or cannot be null */
INSERT city
VALUES (DEFAULT, 'Whoville', 'ABW', 'DistrictX', NULL);

/*Question 6.*/
INSERT country
(Code, Name, Continent, Region, SurfaceArea, Population, LocalName, GovernmentForm, Code2)
VALUES 
('TX', 'Texas', 'South America', 'South Central', 268596.46, 28304596, 'The Lone Star', 'Democratic', 'TX');
INSERT city
(ID, Name, CountryCode, District, Population)
VALUES (DEFAULT, 'Impact', 'TX', 'Impact Dr', 43);

/*Question 7.*/
DELETE FROM city 
WHERE CountryCode = 'TX';

/*Question 8.*/
INSERT city
VALUES (DEFAULT, 'Impact', 'TX', 'Impact Dr', 43);

/*Question 9.*/
UPDATE city
SET Population = 44
WHERE ID = 4082;

/*Question 10.*/
UPDATE city
SET Population = Population + 1
WHERE ID = 4082;

/*Question 12. MSRP		           = Unsigned MEDIUMINT(5)*/
/*Question 13. Estimated MPG, City = Unsigned SMALLINT(2)*/
/*Question 14. Consumer Rating     = DECIMAl(2,1) BETWEEN 0.0 AND 5.0*/
/*Question 15. Sold                = ENUM('T', 'F')*/
/*Question 16. Brand 		       = VARCHAR(50)*/
/*Question 17. Color               = ENUM('White', 'Silver', 'Black', 'Yellow', 'Red', 'Green', 'Blue')*/
/*Question 18. Options 		       = SET('Stereo Upgrade', 'Roof Rack', 'Mud Guards', 'Wheel Upgrade', 'Nav System')*/
/*Question 19. Sales Ratio         = FLOAT(3,1)*/
/*Question 20. Purchase Date       = DATE*/
