use Equipe7

/*
SELECT * FROM Teachers

SELECT * FROM Teaching_details

SELECT * FROM Subjects

SELECT * FROM Institutions

SELECT * FROM Classes

SELECT * FROM Classrooms

SELECT * FROM Student_classes

SELECT * FROM Students
*/

------------------------------- CURSOR -------------------------------
-- Quelle est la liste de tout les prénoms de l'ensemble des élèves
BEGIN TRAN

DECLARE @firstname varchar(10)

DECLARE curseur_students CURSOR FOR (SELECT firstname FROM Students)
OPEN curseur_students
FETCH curseur_students INTO @firstname

WHILE @@FETCH_STATUS = 0

BEGIN 
	PRINT @firstname
	FETCH NEXT FROM curseur_students INTO @firstname
END
CLOSE curseur_students
DEALLOCATE curseur_students 

ROLLBACK TRAN



------------------------------- AUTRE -------------------------------
-- Top 10 des noms des élèves les plus longs.
SELECT TOP 10 (LEN(lastname)) AS '+ letters/name', lastname, student_id
FROM Students 
ORDER BY LEN(lastname) DESC


-- Y'a t-il des cours qui n'ont pas de salle de classe ?
SELECT subject_id, name AS 'name of classe' 
FROM Classes, Classrooms 
WHERE lower(name) LIKE 'null'
