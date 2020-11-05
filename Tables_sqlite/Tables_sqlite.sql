DROP TABLE IF EXISTS "Rent_tbl";
DROP TABLE IF EXISTS "Customers_tbl";
DROP TABLE IF EXISTS "Movies_tbl";
DROP TABLE IF EXISTS "Directors_tbl";


CREATE TABLE "Customers_tbl" (
	"id"	INT NOT NULL,
	"first_name"	TEXT,
	"last_name"	TEXT,
	"birthday"	INT,
	"email_address"	TEXT,
	"mobile_number"	TEXT,
	PRIMARY KEY("id")
);

INSERT INTO customers_tbl (id, first_name, last_name, birthday, email_address, mobile_number)
VALUES(1001, "Daniel", "Lopez", 1995, "daniel45@gmail.com", "01525355");

INSERT INTO customers_tbl (id, first_name, last_name, birthday, email_address, mobile_number)
VALUES(1002, "Jack", "Wilson", 1996, "jack532@yahoo.com", "01245455");

INSERT INTO customers_tbl (id, first_name, last_name, birthday, email_address, mobile_number)
VALUES(1003, "David", "Scott",1991, "david_94@gmail.com", "012545455");

INSERT INTO customers_tbl (id, first_name, last_name, birthday, email_address, mobile_number)
VALUES(1004, "Gabriel", "Davis", 1994, "gabriel_d3@gmail.com", "01245455");

INSERT INTO customers_tbl (id, first_name, last_name, birthday, email_address, mobile_number)
VALUES(1005, "Emma", "Taylor", 1992, "emma934@hotmail.com", "01245455");



CREATE TABLE "Directors_tbl"(
   "directors_id" INT NOT NULL,
   "first_name" TEXT,
   "last_name"  TEXT,
   PRIMARY KEY("directors_id")
);
INSERT INTO Directors_tbl (directors_id, first_name, last_name)
VALUES(1, "Frank", "Darabont");

INSERT INTO Directors_tbl (directors_id, first_name, last_name)
VALUES(2, "Francis Ford", "Coppola");

INSERT INTO Directors_tbl (directors_id, first_name, last_name)
VALUES(3, "Martin", "Scorsese");

INSERT INTO Directors_tbl (directors_id, first_name, last_name)
VALUES(4, "Christopher", "Nolan");

INSERT INTO Directors_tbl (directors_id, first_name, last_name)
VALUES(5, "Chan-wook", "Park");

INSERT INTO Directors_tbl (directors_id, first_name, last_name)
VALUES(6, "Rajkumar", "Hirani");

INSERT INTO Directors_tbl (directors_id, first_name, last_name)
VALUES(7, "Fernando", "Meirelles");



CREATE TABLE "Movies_tbl" (
	"id"	INT NOT NULL,
	"title"	TEXT,
	"genre"	TEXT,
	"director_id" INT NOT NULL,
	"year"	INT,
	"actors"	TEXT,
	"rating"	REAL,
	"number_copies"	INT,
	PRIMARY KEY("id"),
	FOREIGN KEY("director_id") REFERENCES Directors_tbl("directors_id")
);

INSERT INTO Movies_tbl (id, title, genre, director_id, year, actors, rating, number_copies)
VALUES(1001, "The Shawshank Redemption", "drama", 1,  1994, "Tim Robbins, Morgan Freeman, Bob Gunton", 9.2, 20);

INSERT INTO Movies_tbl (id, title, genre, director_id, year, actors, rating, number_copies)
VALUES(1002, "The Godfather", "crime", 2, 1972, "Marlon Brando, Al Pacino, James Caan", 9.1, 30);

INSERT INTO Movies_tbl (id, title, genre, director_id, year, actors, rating, number_copies)
VALUES(1003, "Goodfellas", "crime", 3, 1990, "Robert De Niro, Ray Liotta, Joe Pesci", 8.6, 50);

INSERT INTO Movies_tbl (id, title, genre, director_id, year, actors, rating, number_copies)
VALUES(1004, "The Dark Knight", "superhero", 4, 2008, "Christian Bale, Heath Ledger, Aaron Eckhart", 9.0, 50);
 
INSERT INTO Movies_tbl (id, title, genre, director_id, year, actors, rating, number_copies)
VALUES(1005, "Inception", "action", 4, 2010, "Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page", 8.7, 35);

INSERT INTO Movies_tbl (id, title, genre, director_id, year, actors, rating, number_copies)
VALUES(1006, "Oldboy", "action", 5, 2003, "Min-sik Choi, Ji-Tae Yoo, Hye-jeong Kang", 8.4, 25);

INSERT INTO Movies_tbl (id, title, genre, director_id, year, actors, rating, number_copies)
VALUES(1007, "3 Idiots", "comedy-drama", 6, 2009, "Aamir Khan, Madhavan, Mona Singh", 8.3, 40);

INSERT INTO Movies_tbl (id, title, genre, director_id, year, actors, rating, number_copies)
VALUES(1008, "City of God", "crime", 7, 2002, "Alexandre Rodrigues, Leandro Firmino, Matheus Nachtergaele", 8.6, 35);




CREATE TABLE "Rent_tbl" (
    "id"     INT NOT NULL ,
	"customers_id" INT NOT NULL,
    "movies_id" INT NOT NULL, 
	"total_pay" TEXT DEFAULT "5$",
	"rent_date" TEXT,
	"due_day" INT DEFAULT 5,
	"return_date" TEXT,	
	PRIMARY KEY("id"),
	FOREIGN KEY("customers_id") REFERENCES Customers_tbl("id"),
	FOREIGN KEY("movies_id") REFERENCES Movies_tbl("id")	
);
