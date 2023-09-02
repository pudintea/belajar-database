--
-- NAJZMI PUDINTEA
--
-- SUMBER : https://stackoverflow.com/questions/18747853/mysql-select-upcoming-birthdays
--

CREATE TABLE persons 
	(
     user int, 
     birthday datetime
    );

INSERT INTO persons 
VALUES
(1, "1984-1-19"),
(1, "2005-1-20"),
(1, "2010-9-19"),
(1, "2010-9-18");

--
--
--

SELECT * 
FROM  persons 
WHERE  DATE_ADD(birthday, 
                INTERVAL YEAR(CURDATE())-YEAR(birthday)
                         + IF(DAYOFYEAR(CURDATE()) > DAYOFYEAR(birthday),1,0)
                YEAR)  
            BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);

SELECT * 
FROM  persons 
WHERE  DATE_ADD(birthday, 
                INTERVAL YEAR(CURDATE())-YEAR(birthday)
                         + IF(DAYOFYEAR(CURDATE()) >= DAYOFYEAR(birthday),1,0)
                YEAR)  
            BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);

-- same as above 
SELECT * 
FROM  persons 
WHERE  DATE_ADD(birthday, 
                INTERVAL YEAR(CURDATE())-YEAR(birthday)
                         + IF(DAYOFYEAR(CURDATE()) > DAYOFYEAR(birthday),1,0)
                YEAR) 
            BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY)
       AND DATE_ADD(birthday, INTERVAL YEAR(CURDATE())-YEAR(birthday) YEAR)  <> CURDATE();


-- Same as above query with another way to exclude today's birthdays 
SELECT * 
FROM  persons 
WHERE  DATE_ADD(birthday, 
                INTERVAL YEAR(CURDATE())-YEAR(birthday)
                         + IF(DAYOFYEAR(CURDATE()) > DAYOFYEAR(birthday),1,0)
                YEAR) 
            BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY)
       AND (MONTH(birthday) <> MONTH(CURDATE()) OR DAY(birthday) <> DAY(CURDATE()));



--
-- END NAJZMI PUDINTEA
--
