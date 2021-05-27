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

/*ALTER TABLE Teachers ALTER COLUMN hireDate date NULL*/



------------------------------- Requêtes compréhension BDD 5/5 -------------------------------
--1 Quelles sont les écoles dans la bdd ?
SELECT institution_id, name FROM Institutions


--2 Combien y a t'il d'élèves dans la bdd ?
SELECT COUNT(student_id) AS 'Number of students in the bdd' FROM Students


--3 Combien y a t'il de professeurs dans la bdd ?
SELECT COUNT(teacher_id) AS 'Number of professors in the database' FROM Teachers

--4 A quelles années les écoles ont elles étés créés ?
SELECT institution_id, name, creationDate FROM Institutions
ORDER BY creationDate ASC


--1 requete de concat / fonction de groupe / convertion
--5 Combien y a t'il de classes dans chaque école ?
SELECT CONCAT(COUNT(cr.classroom_id), ' at ', i.name) AS 'Number of classes per school' FROM Classrooms cr
INNER JOIN Classes c ON c.classroom_id = cr.classroom_id
INNER JOIN Student_classes sc ON sc.class_id = c.class_id
INNER JOIN Students s ON s.student_id = sc.student_id
INNER JOIN Institutions i ON i.institution_id = s.institution_id
GROUP BY i.name
ORDER BY 'Number of classes per school' DESC



------------------------------- TRIGGERS 4/4 -------------------------------
--1 Update la date d'aujourd'hui à la hiredate() lorsqu'on veut insert un professeur
CREATE OR ALTER TRIGGER Updatefire
ON Teachers
AFTER INSERT
AS
BEGIN
    UPDATE Teachers SET
        hireDate = GETDATE()
            WHERE teacher_id = (SELECT i.teacher_id FROM INSERTED i)
END


--2 A la place de supprimer un professeur, met à jour sa firedate à la date du jour
CREATE OR ALTER TRIGGER DeleteTeacher ON Teachers
INSTEAD OF DELETE
AS
BEGIN
    UPDATE Teachers SET
    fireDate = GETDATE()
        WHERE teacher_id = (SELECT d.teacher_id FROM DELETED d)
END


--3 Renvoie une erreur si on crée un cours avec un prof qui n'enseigne pas la matière
CREATE OR ALTER TRIGGER classes_teacher
ON Classes
INSTEAD OF INSERT
AS
BEGIN
    IF NOT EXISTS(SELECT i.subject_id, i.teacher_id from INSERTED i INTERSECT SELECT subject_id, teacher_id FROM Teaching_Details)
    BEGIN
        RAISERROR('Is it a subject taught by the teacher?', 16, 1)
    END
END


--4 Renvoie une erreur si on ajoute plus de 30 élèves dans une même classe
CREATE OR ALTER TRIGGER max_eleve_par_classe
ON Student_classes
INSTEAD OF INSERT
AS
BEGIN
    IF (SELECT COUNT(student_id) from Student_classes where class_id=(select i.class_id from INSERTED i)) >= 30
    BEGIN
        RAISERROR('You cannot add more than 30 students per class', 16, 1)
    END
END



------------------------------- FONCTIONS 3/2 -------------------------------
--1 Créer une fonction qui te donne les salles de cours d'un étudiant
CREATE OR ALTER FUNCTION FindClassrooms(@student_id INT)
    RETURNS Table
    AS
    RETURN 
        Select cl.name, c.class_id from classes c
        INNER JOIN Student_classes sc ON c.class_id=sc.class_id
        INNER JOIN Classrooms cl ON cl.classroom_id=c.classroom_id
        where sc.student_id=@student_id

SELECT * from FindClassrooms(2)


--2 Créer une fonction qui te donne les noms des profs d'un étudiant
CREATE OR ALTER FUNCTION FindTeachers(@student_id INT)
    RETURNS Table
    AS
    RETURN 
        Select CONCAT(t.firstname, ' ', t.lastname) AS 'Name of the teachers' FROM Teachers t
        INNER JOIN classes c ON t.teacher_id=c.teacher_id
        INNER JOIN Student_classes sc ON c.class_id=sc.class_id
        INNER JOIN Classrooms cl ON cl.classroom_id=c.classroom_id
        where sc.student_id= @student_id
        group by t.firstname, t.lastname
        

SELECT * from FindTeachers(1)


--3 Créer une fonction qui te donne tous les noms des étudiants d'un seul prof
CREATE OR ALTER FUNCTION FindStudents(@teacher_id INT)
    RETURNS Table
    AS
    RETURN 
        Select CONCAT(s.firstname, ' ', s.lastname) AS 'Name of the students' FROM Students s
        INNER JOIN Student_classes sc ON s.student_id=sc.student_id
        INNER JOIN classes c ON sc.class_id=c.class_id
        INNER JOIN Teachers t ON c.teacher_id=t.teacher_id
        where t.teacher_id=1
        group by s.firstname, s.lastname
        

SELECT * from FindStudents(1)


------------------------------- PROCEDURES STOCKEES 2/2 -------------------------------
--1 Créer une procédure qui affiche le nombre d'eleves qui particpent aux cours d'un professeur donnée
CREATE OR ALTER PROCEDURE NumberStudentsPerClassesForATeacher(@teacher_id INT)
AS
BEGIN
    SELECT CONCAT(t.lastname ,' ',t.firstname) AS 'Name', cl.subject_id, count(st.student_id) AS 'number of students'
    FROM classes cl 
    INNER JOIN Student_classes st ON cl.class_id=st.class_id
    INNER JOIN Teachers t ON cl.teacher_id=t.teacher_id
    WHERE cl.teacher_id=@teacher_id
    GROUP BY cl.subject_id, t.lastname, t.firstname
END

EXEC NumberStudentsPerClassesForATeacher @teacher_id =3


--2 Créer une procédure qui affiche le nombre de matières enseignées pour un élève données
CREATE OR ALTER PROCEDURE NumberSubjectsPerStudents(@student_id INT)
AS
BEGIN
    SELECT s.name FROM Subjects s 
	INNER JOIN Classes c ON c.subject_id = s.subject_id
	INNER JOIN Student_classes sc ON c.class_id = sc.class_id
	WHERE student_id = @student_id

END;

EXEC NumberSubjectsPerStudents @student_id = 30



------------------------------- CURSEUR 1/1 -------------------------------
--1 Quelle est la liste de tous les prénoms de l'ensemble des élèves ?
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



------------------------------- CONVERTION / CONCAT / SOUS-REQUETE / FONCTION DE GROUPE 1/1 -------------------------------
--1 Calculer la part du salaire de chaque professeur par rapport à la masse salariale
SELECT t.lastname, t.salary, (t.salary / t2.Masse) * 100 AS '%' FROM Teachers t,
(SELECT SUM(salary) as 'Masse' FROM Teachers) t2
ORDER BY t.salary DESC



------------------------------- AUTRE -------------------------------
--1 Top 10 des noms des élèves les plus longs.
SELECT TOP 10 (LEN(lastname)) AS '+ letters/name', lastname, student_id
FROM Students 
ORDER BY LEN(lastname) DESC


--2 Y'a t-il des cours qui n'ont pas de salle de classe ?
SELECT subject_id, name AS 'name of classe' 
FROM Classes, Classrooms 
WHERE lower(name) LIKE 'null'


--3 Créer une fonction vérifie si y'a plus ou moins de 30 elèves par classe
DECLARE @class_id INT = 1
DECLARE @subjectname VARCHAR(128)
DECLARE @institutionname VARCHAR(128)
WHILE @class_id <= (SELECT MAX(class_id) FROM Classes)
    BEGIN
    IF (SELECT COUNT(student_id) FROM Student_classes where class_id = @class_id) >=30
        BEGIN
        SET @subjectname =(SELECT s.name FROM Subjects s
                            INNER JOIN Classes c ON s.subject_id = c.subject_id
                            where class_id=@class_id)
        SET @institutionname = (SELECT i.name FROM institutions i 
                                INNER JOIN Classrooms cl ON i.institution_id=cl.institution_id
                                INNER JOIN Classes c ON cl.classroom_id=c.classroom_id
                                WHERE cl.classroom_id = c.classroom_id AND c.class_id=@class_id)
        PRINT 'Il y a plus de 30 élèves dans la classe de ' + @subjectname + ' de ' + @institutionname
        END
    ELSE
        BEGIN
            SET @subjectname =(SELECT s.name FROM Subjects s
                            INNER JOIN Classes c ON s.subject_id = c.subject_id
                            where class_id=@class_id)
            SET @institutionname = (SELECT i.name FROM institutions i 
                                INNER JOIN Classrooms cl ON i.institution_id=cl.institution_id
                                INNER JOIN Classes c ON cl.classroom_id=c.classroom_id
                                WHERE cl.classroom_id = c.classroom_id AND c.class_id=@class_id)
            PRINT 'Il y a moins de 30 élèves dans la classe de ' + @subjectname + ' de ' + @institutionname
        END
    SET @class_id +=1
    END