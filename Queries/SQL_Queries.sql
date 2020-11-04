

-- vissa alla filmer till kund
SELECT * FROM Movies_tbl;

--vissa alla actions filmer
SELECT id,title,genre 
FROM Movies_tbl
WHERE genre like "action";


-- låna ut film till kund 
DELETE FROM Rent_tbl
  WHERE id=1;
INSERT INTO Rent_tbl (id, customers_id, movies_id, rent_date, return_date)
VALUES(1,1003, 1004, "4/2", "4/7");
SELECT * FROM Rent_tbl
-- kunden ångrade sig och vill byta filmen
UPDATE Rent_tbl
  SET movies_id = 1005, customers_id = 1003 
  WHERE id=1;
SELECT * FROM Rent_tbl

-- 
