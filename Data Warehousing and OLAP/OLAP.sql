#Create a new Subscription_Types Dimension
CREATE TABLE subscription_types
SELECT DISTINCT Subscription_ID, Subscription_Type
FROM userbase
ORDER BY Subscription_ID ASC;

SELECT * FROM subscription_types;

#Create a new Device_Types Dimension
CREATE TABLE device_types
SELECT DISTINCT Device_ID, Device_Type
FROM userbase
ORDER BY Device_ID ASC;

SELECT * FROM device_types;

#Create a new Subscription_Types Dimension
CREATE TABLE countries
SELECT DISTINCT Country_code, Country
FROM userbase
ORDER BY Country_code;

SELECT * FROM countries;

#Drop the Device_Type column from the userbase table
ALTER TABLE userbase
DROP COLUMN Device_type;

#Drop the Subscription_Type column from the userbase table
ALTER TABLE userbase
DROP COLUMN Subscription_Type;

#Drop the Country column from the userbase table
ALTER TABLE userbase
DROP COLUMN Country;

#Create a new Show Types Dimension
CREATE TABLE show_types
SELECT DISTINCT Mapped_Type_ID, Show_Type
FROM shows_and_ratings
ORDER BY Mapped_Type_ID ASC;
 
 SET SQL_SAFE_UPDATES = 1;

DELETE FROM show_types
WHERE Mapped_Type_ID IS NULL;

SELECT * FROM show_types;

#Create a new Genres Dimension
CREATE TABLE genres
SELECT DISTINCT Mapped_Genre_ID, Main_Genre
FROM shows_and_ratings
ORDER BY Mapped_Genre_ID ASC;
 
 SET SQL_SAFE_UPDATES = 1;

SELECT * FROM genres;

#Drop the Show_Type column from the userbase table
ALTER TABLE shows_and_ratings
DROP COLUMN Show_Type;

#Drop the Genre and Main_Genre column from the userbase table
ALTER TABLE shows_and_ratings
DROP COLUMN Genre;

ALTER TABLE shows_and_ratings
DROP COLUMN Main_Genre;

SELECT * FROM shows_and_ratings;

SELECT * FROM countries;
SELECT * FROM genres;

#Remove duplicates from app_reviews
SELECT `Review ID`, COUNT(*)
FROM `netflix_db`.`app_reviews`
GROUP BY `Review ID`
HAVING COUNT(*) > 1;

 SET SQL_SAFE_UPDATES = 0;

CREATE TEMPORARY TABLE temp_duplicates AS
SELECT `Review ID`
FROM (
    SELECT `Review ID`, ROW_NUMBER() OVER (PARTITION BY `Review ID` ORDER BY `Review ID`) AS RowNum
    FROM `netflix_db`.`app_reviews`
) AS Subquery
WHERE RowNum > 1;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM `netflix_db`.`app_reviews`
WHERE `Review ID` IN (SELECT `Review ID` FROM temp_duplicates);

DROP TABLE temp_duplicates;

CREATE TEMPORARY TABLE temp_duplicates AS
SELECT `Mapped_Genre_ID`
FROM (
    SELECT `Mapped_Genre_ID`, ROW_NUMBER() OVER (PARTITION BY `Mapped_Genre_ID` ORDER BY `Mapped_Genre_ID`) AS RowNum
    FROM `netflix_db`.`genres`
) AS Subquery
WHERE RowNum > 1;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM `netflix_db`.`genres`
WHERE `Mapped_Genre_ID` IN (SELECT `Mapped_Genre_ID` FROM temp_duplicates);

DROP TABLE temp_duplicates;

CREATE TEMPORARY TABLE temp_duplicates AS
SELECT `Title`
FROM (
    SELECT `Title`, ROW_NUMBER() OVER (PARTITION BY `Title` ORDER BY `Title`) AS RowNum
    FROM `netflix_db`.`shows_and_ratings`
) AS Subquery
WHERE RowNum > 1;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM `netflix_db`.`shows_and_ratings`
WHERE `Title` IN (SELECT `Title` FROM temp_duplicates);

DELETE FROM shows_and_ratings
WHERE Mapped_Genre_ID NOT IN (SELECT Mapped_Genre_ID FROM genres);

DELETE FROM shows_and_ratings
WHERE Mapped_Type_ID NOT IN (SELECT Mapped_Type_ID FROM show_types);

SHOW INDEX FROM shows_and_ratings;

ALTER TABLE `shows_and_ratings`
DROP INDEX `Mapped_Genre_ID_idx`;

ALTER TABLE `shows_and_ratings`
DROP INDEX `Mapped_Type_ID_idx`;











