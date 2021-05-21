/*
IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'Equipe7')
  BEGIN
    CREATE DATABASE Equipe7
    END

GO
    USE "Equipe7"
GO
*/


CREATE TABLE Payment (
	PaymentID int PRIMARY KEY NOT NULL,
	PaymentMethod varchar (24) NOT NULL,
	Salary money NULL,
	Wording varchar (255) NULL,
	Description varchar (255) NULL,
	Discount int NULL

);

CREATE TABLE Institution (
	TerritoryID int IDENTITY (1, 1) PRIMARY KEY NOT NULL,
	TerritoryName varchar (40) NOT NULL,
	RegionID int NOT NULL,
	RegionName varchar (24) NULL,
	PostalCode varchar (10) NULL,
	Address varchar (128) NULL,
	City varchar (128) NULL,
	Country varchar (15) NULL,
	EmployeeID int NOT NULL,
	StudentID int NOT NULL,
	PaymentID int NOT NULL, 
	FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID)
);

CREATE TABLE Employees (
	EmployeeID int IDENTITY (1, 1) PRIMARY KEY NOT NULL,
	LastName varchar (30) NOT NULL,
	FirstName varchar (30) NOT NULL,
	Title varchar (30) NULL,
	TitleOfCourtesy varchar (5) NULL,
	BirthDate datetime NULL,
	Phone int NULL,
	Photo varchar (255) NULL,
	Salary money NULL,
	Mail varchar (255),
	TerritoryId int NOT NULL, 
	FOREIGN KEY (TerritoryId) REFERENCES Institution(TerritoryId),
	PaymentID int NOT NULL, 
	FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID)
);

CREATE TABLE Class (
	ClassID int IDENTITY (1, 1) PRIMARY KEY NOT NULL,
	Level varchar (10) NOT NULL,
	ClassName varchar (128) NOT NULL,

);

CREATE TABLE Students (
	StudentID int IDENTITY (1, 1) PRIMARY KEY NOT NULL,
	LastName varchar (30) NOT NULL,
	FirstName varchar (30) NOT NULL,
	Title varchar (30) NULL,
	TitleOfCourtesy varchar (5) NULL,
	BirthDate datetime NULL,
	ContactName varchar (30) NULL,
	ContactTitle varchar (30) NULL,
	Address varchar (60) NULL,
	City varchar (15) NULL,
	Region varchar (15) NULL,
	PostalCode varchar (10) NULL,
	Country varchar (15) NULL,
	Phone int NULL,
	Mail varchar (255),
	TerritoryId int NOT NULL, 
	FOREIGN KEY (TerritoryId) REFERENCES Institution(TerritoryId),
	ClassID int NOT NULL, 
	FOREIGN KEY (ClassID) REFERENCES Class(ClassID)

);

CREATE TABLE Teachers (
	TeacherID int IDENTITY (1, 1) PRIMARY KEY NOT NULL,
	LastName varchar (30) NOT NULL,
	FirstName varchar (30) NOT NULL,
	Title varchar (30) NULL,
	TitleOfCourtesy varchar (5) NULL,
	BirthDate datetime NULL,
	HireDate datetime NULL,
	Address varchar (60) NULL,
	City varchar (15) NULL,
	Region varchar (15) NULL,
	PostalCode varchar (10) NULL,
	Country varchar (15) NULL,
	Phone varchar (24) NULL,
	Mail varchar (255),
	Salary money NULL,
	TerritoryId int NOT NULL, 
	FOREIGN KEY (TerritoryId) REFERENCES Institution(TerritoryId),
	PaymentID int NOT NULL, 
	FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID)
);

