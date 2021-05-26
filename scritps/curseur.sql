-- quelle est la liste de tout les prénoms de l'ensemble des élèves--

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