/**
SQL
**/

CREATE TABLE People (id INTEGER PRIMARY KEY, name TEXT);
CREATE TABLE Friends (id INTEGER, friend INTEGER);

INSERT INTO People VALUES (1, "Amy");
INSERT INTO People VALUES (2, "Alice");
INSERT INTO People VALUES (3, "Bob");
INSERT INTO People VALUES (4, "Charlie");
INSERT INTO People VALUES (5, "Doug");

INSERT INTO Friends VALUES (1,2);
INSERT INTO Friends VALUES (1,3);
INSERT INTO Friends VALUES (4,5);
INSERT INTO Friends VALUES (2,1);
INSERT INTO Friends VALUES (2,3);
INSERT INTO Friends VALUES (2,5);
INSERT INTO Friends VALUES (3,1);

/** Part A **/
SELECT DISTINCT name FROM People 
LEFT OUTER JOIN Friends AS colm1 ON colm1.id = People.id
INNER JOIN Friends AS colm2 ON colm2.friend = People.id
WHERE colm2.id IN (SELECT id FROM People WHERE name = "Alice") OR colm1.friend IN (SELECT id FROM People WHERE name = "Alice");


/** Part B **/
SELECT DISTINCT name FROM People 
EXCEPT
SELECT DISTINCT name FROM People 
LEFT OUTER JOIN Friends AS colm1 ON colm1.id = People.id
INNER JOIN Friends AS colm2 ON colm2.friend = People.id
WHERE colm2.id IN (SELECT id FROM People WHERE name = "Alice") OR colm1.friend IN (SELECT id FROM People WHERE name = "Alice") OR People.name = "Alice";

