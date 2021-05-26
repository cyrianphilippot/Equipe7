/*
IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'Equipe7')
  BEGIN
    CREATE DATABASE Equipe7
    END

GO
    USE "Equipe7"
GO
*/


CREATE TABLE Students (
	student_id INT NOT NULL IDENTITY(1,1),
	lastname VARCHAR(100) NOT NULL,
  firstname VARCHAR(100) NOT NULL,
  birthdate DATE NOT NULL,
  grade VARCHAR(100) NOT NULL,
  address VARCHAR(128) NULL,
  country VARCHAR(100) NULL,
  city VARCHAR(100) NULL,
  zipcode VARCHAR(30) NULL,
  phoneNumber VARCHAR(15) NULL,
  institution_id INT NOT NULL
	)

ALTER TABLE Students ADD CONSTRAINT PK_students PRIMARY KEY (student_id);

CREATE TABLE Institutions (
	institution_id INT NOT NULL IDENTITY(1,1),
	name VARCHAR(100) NOT NULL,
  title VARCHAR(100) NOT NULL,
  creationDate DATE NOT NULL,
  address VARCHAR(128) NULL,
  country VARCHAR(100) NULL,
  city VARCHAR(100) NULL,
  zipcode VARCHAR(30) NULL,
  phoneNumber VARCHAR(15) NULL
	)

ALTER TABLE Institutions ADD CONSTRAINT PK_institutions PRIMARY KEY (institution_id);

CREATE TABLE Teachers (
	teacher_id INT NOT NULL IDENTITY(1,1),
	lastname VARCHAR(100) NOT NULL,
  firstname VARCHAR(100) NOT NULL,
  birthdate DATE NOT NULL,
  hireDate DATE NOT NULL,
  fireDate DATE NULL,
  salary money NULL,
  address VARCHAR(128) NULL,
  country VARCHAR(100) NULL,
  city VARCHAR(100) NULL,
  zipcode VARCHAR(30) NULL,
  phoneNumber VARCHAR(15) NULL,
  institution_id INT NOT NULL
	)

ALTER TABLE Teachers ADD CONSTRAINT PK_teachers PRIMARY KEY (teacher_id);

CREATE TABLE Teaching_details (
	teachingDetail_id INT NOT NULL IDENTITY(1,1),
	teacher_id INT NOT NULL,
	subject_id INT NOT NULL
	)


CREATE TABLE Subjects (
  subject_id INT NOT NULL IDENTITY(1,1),
  name VARCHAR(100) NOT NULL
  )

ALTER TABLE Subjects ADD CONSTRAINT PK_subjects PRIMARY KEY (subject_id);

CREATE TABLE Classrooms (
	classroom_id INT NOT NULL IDENTITY(1,1),
  name VARCHAR(100) NOT NULL,
  capacity int NOT NULL,
  roomtype VARCHAR(100) NOT NULL
	)

ALTER TABLE Classrooms ADD CONSTRAINT PK_classrooms PRIMARY KEY (classroom_id);

CREATE TABLE Classes (
	class_id INT NOT NULL IDENTITY(1,1),
  classroom_id INT NOT NULL,
  subject_id INT NOT NULL,
  teacher_id INT NOT NULL,
  date DATETIME NOT NULL
	)

ALTER TABLE Classes ADD CONSTRAINT PK_classes PRIMARY KEY (class_id);

CREATE TABLE Student_classes (
	studentClass_id INT NOT NULL IDENTITY(1,1),
	class_id INT NOT NULL,
	student_id INT NOT NULL
	)
  
ALTER TABLE Student_classes ADD CONSTRAINT PK_studentClass PRIMARY KEY (studentClass_id);



	
ALTER TABLE Students ADD CONSTRAINT FK_students_institutions FOREIGN KEY (institution_id) REFERENCES Institutions(institution_id);

ALTER TABLE Teachers ADD CONSTRAINT FK_teachers_institutions FOREIGN KEY (institution_id) REFERENCES Institutions(institution_id);

ALTER TABLE Teaching_details ADD CONSTRAINT FK_teachingDetails_teachers FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id);

ALTER TABLE Teaching_details ADD CONSTRAINT FK_teachingDetails_subjects FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id);

ALTER TABLE Classes ADD CONSTRAINT FK_classes_classrooms FOREIGN KEY (classroom_id) REFERENCES Classrooms(classroom_id);

ALTER TABLE Classes ADD CONSTRAINT FK_classes_subjects FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id);

ALTER TABLE Classes ADD CONSTRAINT FK_classes_teachers FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id);

ALTER TABLE Student_classes ADD CONSTRAINT FK_studentClasses_classes FOREIGN KEY (class_id) REFERENCES Classes(class_id);

ALTER TABLE Student_classes ADD CONSTRAINT FK_studentClasses_students FOREIGN KEY (student_id) REFERENCES Students(student_id);