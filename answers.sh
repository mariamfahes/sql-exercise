1)
select *
from Students;

select *
from Students
where(Age > 30);

select id, Name
from students
where (Age >30 and  gender = "F");

select Points
from Students
where (name= "Alex");
INSERT INTO students VALUES (8, "mariam",  21, "F", 200);
 
UPDATE
 Students SET Points = Points +110
where name ="Basma";

UPDATE
 Students SET Points = Points -115
where name ="Alex";


2)
CREATE TABLE "graduates" (
"ID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
"Name" TEXT NOT NULL UNIQUE,
"Age" INTEGER,
"Gender" TEXT,
"Points" INTEGER,
"Graduation" TEXT
);


 INSERT INTO graduates (ID, Name, Age, Gender, Points)
 SELECT * 
 FROM students 
 WHERE Name = "Layal";

 UPDATE graduates 
SET Graduation = "08/09/2018" 
WHERE Name = "Layal";

DELETE FROM students  WHERE Name="Layal";

3)
CREATE TABLE details AS SELECT E.name, E.Company, c.Date 
 FROM  employees E , companies  c
 where E.Company = c.Name;

SELECT E.name 
FROM employees E ,companies  c
where  (c.Name = E.Company) and  (c.Date<2000);

select c.name
from Employees  E ,  Companies C
where(c.Name = E.Company) and  (E.Role= "Graphic Designer");

4)

select name, MAX(Points) 
from students;

select AVG(Points) 
from Students;

select count(points)
 FROM students WHERE Points=500;

 select name
  FROM students WHERE name like "%S%";
select name 
from students ORDER by  Points DESC;





