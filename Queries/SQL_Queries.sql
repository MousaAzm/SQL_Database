

-- vissa alla filmer till kund
SELECT * FROM Movies_tbl;

--vissa alla actions filmer
SELECT *
FROM Movies_tbl
WHERE genre like "action";


-- låna ut film till kund 
DELETE FROM Rent_tbl
  WHERE id=1;
INSERT INTO Rent_tbl (id, customers_id, movies_id, rent_date, return_date)
VALUES(1001,1003, 1004, "4/2", "4/7");
SELECT * FROM Rent_tbl;
-- kunden ångrade sig och vill byta filmen
UPDATE Rent_tbl
  SET movies_id = 1005, customers_id = 1003 
  WHERE id=1;
SELECT * FROM Rent_tbl;


-- kollar hur många kopia filmer finns 

SELECT id,title, genre, number_copies
  FROM Movies_tbl;
-- ändra antal kopia för den filmen som har lånat ut  
UPDATE Movies_tbl
  SET number_copies = 34
  WHERE id=1005;
SELECT id,title, genre, number_copies
 FROM Movies_tbl;

-- ändra columns namn 
ALTER TABLE Movies_tbl RENAME COLUMN number_copies to copies;
SELECT id,title, copies
FROM Movies_tbl;

-- vissa alla filmer med rating mellan 8.0 - 9.0
SELECT * 
 FROM Movies_tbl
WHERE rating BETWEEN 8.0 AND 9.0;


-- vissa filmers namn som börjar med T
SELECT title 
FROM Movies_tbl
WHERE title LIKE 'T%';





