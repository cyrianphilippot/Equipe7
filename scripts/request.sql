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



------------------------------- Requêtes compréhension BDD 5/5 -------------------------------
-- 1 combien y a t'il d'écoles dans la bdd ?
SELECT institution_id, name FROM Institutions


-- 2 combien y a t'il d'eleves dans la bdd ?
SELECT COUNT(student_id) AS 'Nombre d eleves dans la bdd' FROM Students


-- 3 combien y a t'il de professeurs dans la bdd ?
SELECT COUNT(teacher_id) AS 'Nombre de professeurs dans la bdd' FROM Teachers

-- 4 a quelles années les écoles ont elles étés crées ?
SELECT institution_id, name, creationDate FROM Institutions
ORDER BY creationDate ASC


-- 1 requete de concat / fonction de groupe
-- 5 combien y a t'il de classes dans chaque école ?
SELECT CONCAT(COUNT(cr.classroom_id), ' à ', i.name) AS 'nombre de classes par ecoles' FROM Classrooms cr
INNER JOIN Classes c ON c.classroom_id = cr.classroom_id
INNER JOIN Student_classes sc ON sc.class_id = c.class_id
INNER JOIN Students s ON s.student_id = sc.student_id
INNER JOIN Institutions i ON i.institution_id = s.institution_id
GROUP BY i.name
ORDER BY 'nombre de classes par ecoles' DESC



------------------------------- TRIGGERS 4/4 -------------------------------

--Update la date d'aujourd'hui à la hiredate() lorsqu'on veut insert un professeur
CREATE OR ALTER TRIGGER Updatefire
ON Teachers
AFTER INSERT
AS
BEGIN
    UPDATE Teachers SET
        hireDate = GETDATE()
            WHERE teacher_id = (SELECT i.teacher_id FROM INSERTED i)
END


--A la place de supprimer un professeur, met a jour sa firedate à la date du jour
CREATE OR ALTER TRIGGER DeleteTeacher ON Teachers
INSTEAD OF DELETE
AS
BEGIN
    UPDATE Teachers SET
    fireDate = GETDATE()
        WHERE teacher_id = (SELECT d.teacher_id FROM DELETED d)
END


--Renvoie une erreur si on créer un cours avec un prof qui n'enseigne pas la matiere
CREATE OR ALTER TRIGGER classes_teacher
ON Classes
INSTEAD OF INSERT
AS
BEGIN
    IF NOT EXISTS(SELECT i.subject_id, i.teacher_id from INSERTED i INTERSECT SELECT subject_id, teacher_id FROM Teaching_Details)
    BEGIN
        RAISERROR('Est-ce une matiere enseignée par le professeur ?', 16, 1)
    END
END


--Renvoie une erreur si on ajoute plus de 30 eleves dans une même classe
CREATE OR ALTER TRIGGER max_eleve_par_classe
ON Student_classes
INSTEAD OF INSERT
AS
BEGIN
    IF (SELECT COUNT(student_id) from Student_classes where class_id=(select i.class_id from INSERTED i)) >= 30
    BEGIN
        RAISERROR('Tu ne peux pas ajouter plus de 30 élèves par classe', 16, 1)
    END
END



------------------------------- FONCTIONS 0/2 -------------------------------



------------------------------- PROCEDURE STOCKEES 0/2 -------------------------------



------------------------------- CURSOR 1/1 -------------------------------
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



------------------------------- CONVERTION / CONCAT / SOUS-REQUETE / FONCTION DE GROUPE 0/1 -------------------------------



------------------------------- AUTRE -------------------------------
-- Top 10 des noms des élèves les plus longs.
SELECT TOP 10 (LEN(lastname)) AS '+ letters/name', lastname, student_id
FROM Students 
ORDER BY LEN(lastname) DESC

-- Y'a t-il des cours qui n'ont pas de salle de classe ?
SELECT subject_id, name AS 'name of classe' 
FROM Classes, Classrooms 
WHERE lower(name) LIKE 'null'
