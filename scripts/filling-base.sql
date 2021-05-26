use Equipe7


INSERT INTO Institutions (name, title, creationDate, address, country, city, zipCode, phoneNumber)
VALUES('ynov', 'informatique', '19900901', 'quai des chartrons', 'france', 'bordeaux', '33000', '05578099099')

INSERT INTO Institutions (name, title, creationDate, address, country, city, zipCode, phoneNumber)
VALUES('formasup', 'commerce', '20000903', 'quai des chartrons', 'france', 'bordeaux', '33000', '0557798023')

INSERT INTO Institutions (name, title, creationDate, address, country, city, zipCode, phoneNumber)
VALUES('iseg', 'communication', '19900901', 'rue barrere', 'france', 'bordeaux', '33000', '0957231601')

INSERT INTO Institutions (name, title, creationDate, address, country, city, zipCode, phoneNumber)
VALUES('ogec', 'lycée', '19570901', 'cours balguerie stuttenberg', 'france', 'bordeaux', '33000', '0854687233')

INSERT INTO Institutions (name, title, creationDate, address, country, city, zipCode, phoneNumber)
VALUES('universite paris-sud', 'mathématique', '19000831', 'quai orsay', 'france', 'Paris', '75000', '0452471348')

INSERT INTO Institutions (name, title, creationDate, address, country, city, zipCode, phoneNumber)
VALUES('edhec', 'commerce', '19850906', 'rue de la paix', 'france', 'roubaix', '89000', '0233568916')

INSERT INTO Institutions (name, title, creationDate, address, country, city, zipCode, phoneNumber)
VALUES('universite de la sorbonne', 'sciences et ingenierie', '18690607', 'rue des martyrs', 'france', 'paris', '75000', '0912675309')

INSERT INTO Institutions (name, title, creationDate, address, country, city, zipCode, phoneNumber)
VALUES('essec', 'commerce', '19500831', 'rue des armes', 'france', 'cergy', '56000', '0746331074')

INSERT INTO Institutions (name, title, creationDate, address, country, city, zipCode, phoneNumber)
VALUES('centraleSupelec', 'informatique', '19700909', 'avenue sainte helene', 'france', 'gif-sur-yvette', '79000', '0883465700')

INSERT INTO Institutions (name, title, creationDate, address, country, city, zipCode, phoneNumber)
VALUES('mines paris tech', 'sciences de la terre', '19370831', 'avenue des vignerons', 'france', 'marseille', '13000', '0368334792')



INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('duvigneau', 'lea', '19960607', 'bachelor 2', 'rue pomme de cuivre', 'france', 'bordeaux', '33000', '0671365792', (SELECT institution_id FROM Institutions WHERE name = 'ynov' AND title = 'informatique'))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('daribau', 'mathieu', '19990201', 'bachelor 2', 'cite administrative du lac', 'france', 'cenon', '33800', '0623568709', (SELECT institution_id FROM Institutions WHERE name = 'ynov' AND title = 'informatique'))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('philippot', 'cyrian', '20000928', 'bachelor 2', 'rue du couvent', 'france', 'fargues sur ourbise', '47700', '0789925437', (SELECT institution_id FROM Institutions WHERE name = 'ynov' AND title = 'informatique'))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('bergez-Casalou', 'malory', '20011221', 'bachelor 2', 'avenue du sport', 'france', 'libourne', '33500', '0713310086', (SELECT institution_id FROM Institutions WHERE name = 'ynov' AND title = 'informatique'))



INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('lavignez', 'dimitri', '20030228', 'bachelor 3', 'rue sainte catherine', 'france', 'Lormont', '23900', '0269759075', (SELECT institution_id FROM Institutions WHERE institution_id=3))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('cantomont', 'pierre', '19911103', 'mastere 2', 'lieu dit saint martin', 'france', 'rouen', '67920', '0192656547', (SELECT institution_id FROM Institutions WHERE institution_id=3))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('matignez', 'maurice', '19930101', 'mastere 1', 'avenue des tords', 'france', 'strasbourg', '98220', '0764878631', (SELECT institution_id FROM Institutions WHERE institution_id=3))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('zambin', 'clarisse', '19890314', 'bachelor 1', 'rue des pepinieres', 'france', 'paris', '75000', '0845982169', (SELECT institution_id FROM Institutions WHERE institution_id=3))



INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('arnaudou', 'vincent', '19970802', 'bachelor 1', 'avenue des saints', 'france', 'perpignan', '24600', '0862926439', (SELECT institution_id FROM Institutions WHERE institution_id=4))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('badin', 'leo', '19860612', 'bachelor 3', 'rue du merite', 'france', 'marseille', '69000', '0812277635', (SELECT institution_id FROM Institutions WHERE institution_id=4))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('zambin', 'clarisse', '19890314', 'bachelor 1', 'rue des pepinieres', 'france', 'paris', '75000', '0852725382', (SELECT institution_id FROM Institutions WHERE institution_id=4))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('effage', 'marlene', '19880929', 'mastere 3', 'rue de la pepiniere', 'france', 'toulon', '90700', '0642857339', (SELECT institution_id FROM Institutions WHERE institution_id=4))



INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('alonso', 'katarina', '19980404', 'bachelor 3', 'plaza mayor', 'france', 'Madrid', '28001', '0781523351', (SELECT institution_id FROM Institutions WHERE institution_id=5))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('hanz', 'paul', '19910209', 'bachelor 1', 'rue du boucher', 'france', 'nantes', '53900', '0192656547', (SELECT institution_id FROM Institutions WHERE institution_id=5))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('yvotte', 'ginette', '19991129', 'mastere 1', 'avenue emile zola', 'france', 'toulouse', '69100', '0764878631', (SELECT institution_id FROM Institutions WHERE institution_id=5))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('poulin', 'brice', '19900714', 'bachelor 2', 'avenue de la misere', 'france', 'lyon', '52600', '0845982169', (SELECT institution_id FROM Institutions WHERE institution_id=5))



INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('pelet', 'jean', '19870718', 'mastere 2', 'rue du four', 'france', 'lorient', '71900', '0495289916', (SELECT institution_id FROM Institutions WHERE institution_id=6))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('lamoureux', 'charles', '19890913', 'mastere 1', 'rue jean jaures', 'france', 'rauzan', '33420', '0728635188', (SELECT institution_id FROM Institutions WHERE institution_id=6))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('antiloupe', 'martin', '19920215', 'bachelor 2', 'avenue de la republique', 'france', 'le taillan medoc', '59100', '05291634122', (SELECT institution_id FROM Institutions WHERE institution_id=6))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('dufour', 'lorie', '19961128', 'bachelor 1', 'lieu dit ferdinan nestor', 'france', 'lille', '41900', '0464417920', (SELECT institution_id FROM Institutions WHERE institution_id=6))



INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('manchot', 'marielle', '19851001', 'bachelor 3', 'avenue du plaisir', 'belgique', 'bruges', '89800', '0589927659', (SELECT institution_id FROM Institutions WHERE institution_id=7))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('petunia', 'beatrice', '19901112', 'bachelor 2', 'avenue du palais', 'france', 'roubaix', '68100', '0695144629', (SELECT institution_id FROM Institutions WHERE institution_id=7))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('brisou', 'damien', '19871225', 'mastere 2', 'rue du ricola', 'suisse', 'geneve', '68900', '0621977281', (SELECT institution_id FROM Institutions WHERE institution_id=7))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('guilleret', 'aude', '19900902', 'bachelor 2', 'rue de la girouette', 'france', 'casteljaloux', '79100', '0765136920', (SELECT institution_id FROM Institutions WHERE institution_id=7))



INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('patrick', 'sebastien', '19940711', 'mastere 2', 'rue de la pelouse verte', 'france', 'baseille', '19000', '04817253444', (SELECT institution_id FROM Institutions WHERE institution_id=8))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('dupont', 'pascal', '19991230', 'bachelor 3', 'rue des eventails', 'france', 'cocumont', '31800', '0917252316', (SELECT institution_id FROM Institutions WHERE institution_id=8))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('noctamide', 'leon', '19970809', 'bachelor 1', 'rue du miraille', 'france', 'villefranche', '12800', '09273514289', (SELECT institution_id FROM Institutions WHERE institution_id=8))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('hymount', 'hannah', '19891012', 'bachelor 3', 'rue des andes', 'france', 'eymet', '68600', '0726423178', (SELECT institution_id FROM Institutions WHERE institution_id=8))



INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('crivella', 'marcelo', '19890601', 'bachelor 3', 'rua de la puerte', 'bresil', 'rio de janero', '021', '06293652438', (SELECT institution_id FROM Institutions WHERE institution_id=9))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('kaminsj', 'zoulik', '19951025', 'bachelor 3', 'avenue verte', 'france', 'lansac', '61930 ', '0687931099', (SELECT institution_id FROM Institutions WHERE institution_id=9))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('patriga', 'esmeralda', '19970719', 'mastere 1', 'rua de la ventana', 'espagne', 'barcelone', '36900', '06243617354', (SELECT institution_id FROM Institutions WHERE institution_id=9))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('polanzouniski', 'david', '19980813', 'bachelor 1', 'rue medoc', 'france', 'pian sur medoc', '79300', '0692763555', (SELECT institution_id FROM Institutions WHERE institution_id=9))



INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('olanzapine', 'nisham', '19980102', 'mestere 2', 'rue christine', 'france', 'poussignac', '57200', '0653241718', (SELECT institution_id FROM Institutions WHERE institution_id=10))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('pielonzo', 'florence', '19901111', 'bachelor 3', 'rue carayou', 'portugal', 'lisbone', '79900', '0836541211', (SELECT institution_id FROM Institutions WHERE institution_id=10))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('montigue', 'joakim', '19930819', 'bachelor 2', 'rue de la police', 'france', 'bourg', '45670', '0557892618', (SELECT institution_id FROM Institutions WHERE institution_id=10))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('janet', 'marc', '19961105', 'bachelor 3', 'red street', 'pays-bas', 'amsterdam', '1000 AA', '0928263541', (SELECT institution_id FROM Institutions WHERE institution_id=10))



INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('fardon', 'guillaume', '20011119', 'bachelor 2', 'rue du beurre', 'france', 'moulon', '56890', '0687999821', (SELECT institution_id FROM Institutions WHERE institution_id=2))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('saduc', 'yvan', '20031209', 'bachelor 1', 'rue du moulin', 'france', 'perpignan', '32010', '0472826146', (SELECT institution_id FROM Institutions WHERE institution_id=2))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('bertignouf', 'clement', '19910522', 'bachelor 3', 'rue de la maree', 'france', 'brieux', '12420', '0588283627', (SELECT institution_id FROM Institutions WHERE institution_id=2))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('jarnidieu', 'carine', '20011108', 'bachelor 1', 'rue du mais', 'france', 'pessac', '57830', '0887654278', (SELECT institution_id FROM Institutions WHERE institution_id=2))



INSERT INTO Teachers (lastname, firstname, birthdate, hiredate, salary, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('gendron', 'alain', '19641207', '19900907', 28000, 'rue des pommiers', 'france', 'bordeaux', '33000', '0863652819', (SELECT institution_id FROM Institutions WHERE institution_id=1))

INSERT INTO Teachers (lastname, firstname, birthdate, hiredate, firedate, salary, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('ortigue', 'laura', '19581127', '19751002','20210218', 45000, 'rue du parasol', 'france', 'bordeaux', '33500', '0423133257', (SELECT institution_id FROM Institutions WHERE institution_id=1))

INSERT INTO Teachers (lastname, firstname, birthdate, hiredate, salary, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('spartin', 'phoebe', '19600315', '19780402', 33000, 'rue du troubadour', 'france', 'toulouse', '47000', '0975421672', (SELECT institution_id FROM Institutions WHERE institution_id=3))

INSERT INTO Teachers (lastname, firstname, birthdate, hiredate, salary, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('cailloux', 'sam', '19580310', '19840330', 29000, 'rue de la ferme', 'france', 'bordeaux', '59120', '0357197244', (SELECT institution_id FROM Institutions WHERE institution_id=4))

INSERT INTO Teachers (lastname, firstname, birthdate, hiredate, salary, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('berard', 'dean', '19690309', '20000108', 25000, 'rue des rochers', 'france', 'paris', '45690', '0418265412', (SELECT institution_id FROM Institutions WHERE institution_id=5))

INSERT INTO Teachers (lastname, firstname, birthdate, hiredate, salary, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('antillet', 'philippe', '19601106', '19800707', 36000, 'rue des meutes', 'france', 'roubaix', '36710', '0418162651', (SELECT institution_id FROM Institutions WHERE institution_id=6))

INSERT INTO Teachers (lastname, firstname, birthdate, hiredate, salary, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('lablis', 'caroline', '19690826', '20050305', 23000, 'rue du louvre', 'france', 'paris', '53190', '0247199361', (SELECT institution_id FROM Institutions WHERE institution_id=7))

INSERT INTO Teachers (lastname, firstname, birthdate, hiredate, salary, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('pyostacine', 'berengere', '19580531', '19790602', 41000, 'rue des deux rives', 'france', 'toulon', '56820', '0263881727', (SELECT institution_id FROM Institutions WHERE institution_id=8))

INSERT INTO Teachers (lastname, firstname, birthdate, hiredate, salary, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('riviere', 'mathilde', '19690412', '19920520', 34000, 'rue de la jupette', 'france', 'roubaix', '56800', '0561827251', (SELECT institution_id FROM Institutions WHERE institution_id=9))

INSERT INTO Teachers (lastname, firstname, birthdate, hiredate, salary, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('parpaing', 'gladys', '19880319', '20100204', 27000, 'rue des maisons rouges', 'france', 'lille', '68590', '0643152789', (SELECT institution_id FROM Institutions WHERE institution_id=10))

INSERT INTO Teachers (lastname, firstname, birthdate, hiredate, salary, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('gandalf', 'samuel', '19960706', '20200801', 24000, 'rue de la loutre', 'france', 'angers', '24560', '0477526819', (SELECT institution_id FROM Institutions WHERE institution_id=2))



INSERT INTO Subjects (name) VALUES ('sql');

INSERT INTO Subjects (name) VALUES ('mathématiques');

INSERT INTO Subjects (name) VALUES ('français');

INSERT INTO Subjects (name) VALUES ('responsive design');

INSERT INTO Subjects (name) VALUES ('svt');

INSERT INTO Subjects (name) VALUES ('physique');

INSERT INTO Subjects (name) VALUES ('chimie');

INSERT INTO Subjects (name) VALUES ('python');

INSERT INTO Subjects (name) VALUES ('espagnol');

INSERT INTO Subjects (name) VALUES ('histoire');

INSERT INTO Subjects (name) VALUES ('botanique');

INSERT INTO Subjects (name) VALUES ('ergonomie');

INSERT INTO Subjects (name) VALUES ('economie');

INSERT INTO Subjects (name) VALUES ('theatre');

INSERT INTO Subjects (name) VALUES ('communication');

INSERT INTO Subjects (name) VALUES ('sociologie');



INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('gallerie 1', 25, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('gallerie 2', 30, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('gallerie 3', 35, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('b3', 25, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('b1', 28, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('b2', 30, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('bibliotheque 1', 40, 'bibliotheque')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('bibliotheque 2', 40, 'bibliotheque')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('bibliotheque 3', 40, 'bibliotheque')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('bibliotheque 4', 40, 'bibliotheque')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('a1', 25, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('a2', 30, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('a3', 40, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('laboratoire 2', 40, 'laboratoire')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('laboratoire 3', 45, 'laboratoire')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('laboratoire 4', 30, 'laboratoire')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('amphitheatre 1', 150, 'amphitheatre')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('amphitheatre 2', 250, 'amphitheatre')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('amphitheatre 3', 550, 'amphitheatre')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('amphitheatre 4', 1500, 'amphitheatre')



INSERT INTO Teaching_details (teacher_id, subject_id)
	VALUES((SELECT teacher_id from Teachers where lastname='gendron'), (SELECT subject_id from Subjects where name='svt'))



INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (1, 1);	
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (1, 16);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (1, 3);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (1, 13);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (2, 4);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (2, 8);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (2, 15);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (2, 7);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (3, 2);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (3, 16);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (3, 14);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (3, 4);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (4, 2);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (4, 9);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (4, 14);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (4, 1);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (5, 13);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (5, 11);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (5, 1);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (5, 10);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (5, 8);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (6, 1);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (6, 3);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (6, 4);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (6, 8);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (7, 8);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (7, 7);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (7, 10);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (7, 16);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (7, 1);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (8, 1);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (8, 15);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (8, 11);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (8, 6);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (8, 2);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (9, 2);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (9, 12);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (9, 14);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (9, 8);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (10, 1);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (10, 4);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (10, 2);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (10, 13);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (10, 11);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (10, 10);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (11, 10);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (11, 16);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (11, 7);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (11, 9);
INSERT INTO Teaching_details(teacher_id, subject_id)
VALUES (11, 4);



INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(1, 1, 1, '20210524 05:30:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(1, 16, 1, '20210524 10:00:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(2, 3, 1, '20210524 09:00:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(3, 13, 1, '20210524 07:30:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(20, 1, 1, '20210524 01:00:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(3, 4, 2, '20210524 04:00:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(12, 8, 2, '20210524 02:30:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(10, 15, 2, '20210524 11:30:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(14, 7, 2, '20210524 09:00:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(4, 2, 3, '20210524 08:00:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(19, 16, 3, '20210524 05:00:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(18, 14, 3, '20210524 06:00:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(5, 4, 3, '20210524 04:30:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(6, 2, 4, '20210524 01:30:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(11, 9, 4, '20210524 02:00:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(17, 14, 4, '20210524 09:30:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(12, 1, 4, '20210524 11:00:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(9, 13, 5, '20210524 10:00:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(8, 11, 5, '20210524 08:00:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(1, 1, 5, '20210524 03:30:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(10, 10, 5, '20210524 05:30:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(2, 8, 5, '20210524 06:00:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(3, 1, 6, '20210524 02:00:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(4, 3, 6, '20210524 10:00:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(11, 4, 6, '20210524 09:30:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(5, 8, 6, '20210524 07:30:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(5, 8, 7, '20210524 03:00:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(14, 7, 7, '20210524 04:00:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(8, 10, 7, '20210524 10:00:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(7, 16, 7, '20210524 07:00:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(6, 1, 7, '20210524 01:30:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(6, 1, 8, '20210524 09:30:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(18, 15, 8, '20210524 04:30:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(16, 11, 8, '20210524 05:00:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(17, 6, 8, '20210524 02:30:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(13, 2, 8, '20210524 11:00:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(12, 2, 9, '20210524 10:30:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(12, 12, 9, '20210524 04:00:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(20, 14, 9, '20210524 03:00:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(11, 8, 9, '20210524 09:00:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(1, 1, 10, '20210524 02:00:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(1, 4, 10, '20210524 07:00:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(6, 2, 10, '20210524 11:00:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(12, 13, 10, '20210524 07:30:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(15, 11, 10, '20210524 03:00:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(10, 10, 10, '20210524 02:00:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(8, 10, 11, '20210524 05:00:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(19, 16, 11, '20210524 09:00:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(14, 7, 11, '20210524 04:00:00 PM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(1, 9, 11, '20210524 10:00:00 AM')
INSERT INTO classes (classroom_id, subject_id, teacher_id, date)
VALUES(3, 4, 11, '20210524 08:00:00 AM')



INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES ('iliade','george','20000101','bachelor 3','rue des nems', 'france', 'bordeaux', '33000','0682735189',(SELECT t.institution_id from teachers t inner join institutions i ON i.institution_id=t.institution_id where teacher_id=1))



UPDATE Students 
SET institution_id = (SELECT t.institution_id from teachers t inner join institutions i ON i.institution_id=t.institution_id where teacher_id=1)
Where student_id<11

UPDATE Students 
SET institution_id = (SELECT t.institution_id from teachers t inner join institutions i ON i.institution_id=t.institution_id where teacher_id=2)
Where student_id<21 AND student_id>10

UPDATE Students 
SET institution_id = (SELECT t.institution_id from teachers t inner join institutions i ON i.institution_id=t.institution_id where teacher_id=3)
Where student_id<31 AND student_id>20

UPDATE Students 
SET institution_id = (SELECT t.institution_id from teachers t inner join institutions i ON i.institution_id=t.institution_id where teacher_id=4)
Where student_id<41 AND student_id>30

UPDATE Students 
SET institution_id = (SELECT t.institution_id from teachers t inner join institutions i ON i.institution_id=t.institution_id where teacher_id=5)
Where student_id<51 AND student_id>40

UPDATE Students 
SET institution_id = (SELECT t.institution_id from teachers t inner join institutions i ON i.institution_id=t.institution_id where teacher_id=6)
Where student_id<61 AND student_id>50

UPDATE Students 
SET institution_id = (SELECT t.institution_id from teachers t inner join institutions i ON i.institution_id=t.institution_id where teacher_id=7)
Where student_id<71 AND student_id>60

UPDATE Students 
SET institution_id = (SELECT t.institution_id from teachers t inner join institutions i ON i.institution_id=t.institution_id where teacher_id=8)
Where student_id<81 AND student_id>70

UPDATE Students 
SET institution_id = (SELECT t.institution_id from teachers t inner join institutions i ON i.institution_id=t.institution_id where teacher_id=9)
Where student_id<91 AND student_id>80

UPDATE Students 
SET institution_id = (SELECT t.institution_id from teachers t inner join institutions i ON i.institution_id=t.institution_id where teacher_id=10)
Where student_id<101 AND student_id>90

UPDATE Students 
SET institution_id = (SELECT t.institution_id from teachers t inner join institutions i ON i.institution_id=t.institution_id where teacher_id=11)
Where student_id<111 AND student_id>100



INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('duc de lormont', 'aristote', '19970507', 'bachelor 1', 'rue meridien', 'france', 'limons', '57800', '0468815527', (SELECT institution_id FROM Institutions WHERE institution_id=1))
INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('grimont', 'george', '19980310', 'bachelor 2', 'cite administrative de theresa', 'france', 'rimons', '47800', '0678915277', (SELECT institution_id FROM Institutions WHERE institution_id=1))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('patrick', 'jeremy', '20031028', 'bachelor 1', 'rue des feves', 'france', 'frimont', '47900', '0468367725', (SELECT institution_id FROM Institutions WHERE institution_id=1))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('beret', 'clothilde', '20050121', 'bachelor 1', 'avenue du ponton', 'france', 'libourne', '33500', '05678265778', (SELECT institution_id FROM Institutions WHERE institution_id=1))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('laroche', 'cloe', '20020222', 'bachelor 3', 'rue sainte françoise', 'france', 'Lormont', '23900', '0579186352', (SELECT institution_id FROM Institutions WHERE institution_id=3))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('cataflouche', 'pierrick', '19921203', 'mastere 2', 'lieu dit saint george', 'france', 'rouen', '67920', '0478927532', (SELECT institution_id FROM Institutions WHERE institution_id=3))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('mourton', 'marie', '19920202', 'mastere 1', 'avenue des pieds', 'france', 'strasbourg', '98220', '0747898628', (SELECT institution_id FROM Institutions WHERE institution_id=3))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('zalbini', 'karine', '19880413', 'bachelor 1', 'rue des pepins', 'france', 'paris', '75000', '0868665243', (SELECT institution_id FROM Institutions WHERE institution_id=3))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('armand', 'thierry', '19970902', 'bachelor 1', 'avenue des verts', 'france', 'perpignan', '24600', '0845895398', (SELECT institution_id FROM Institutions WHERE institution_id=4))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('britz', 'lila', '19870712', 'bachelor 3', 'rue du manioc', 'france', 'marseille', '69000', '0835683578', (SELECT institution_id FROM Institutions WHERE institution_id=4))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('maniac', 'pauline', '19880714', 'bachelor 1', 'rue des clementines', 'france', 'paris', '75000', '0688862434', (SELECT institution_id FROM Institutions WHERE institution_id=4))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('frimont', 'melanie', '19870929', 'mastere 2', 'rue de la fraise', 'france', 'toulon', '90700', '0645231811', (SELECT institution_id FROM Institutions WHERE institution_id=4))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('alfonzo', 'benoit', '19970504', 'bachelor 3', 'plaza vino', 'france', 'Madrid', '28001', '0784565678', (SELECT institution_id FROM Institutions WHERE institution_id=5))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('hernest', 'cole', '19900109', 'bachelor 1', 'rue du plancher', 'france', 'nantes', '53900', '0349776426', (SELECT institution_id FROM Institutions WHERE institution_id=5))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('ymiot', 'linette', '19981229', 'mastere 1', 'avenue pascale', 'france', 'toulouse', '69100', '0745234319', (SELECT institution_id FROM Institutions WHERE institution_id=5))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('poussette', 'britanie', '19910714', 'bachelor 2', 'avenue de la pomme', 'france', 'lyon', '52600', '0845652976', (SELECT institution_id FROM Institutions WHERE institution_id=5))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('peremier', 'jules', '19880818', 'mastere 2', 'rue de la tonelle', 'france', 'lorient', '71900', '0456874655', (SELECT institution_id FROM Institutions WHERE institution_id=6))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('lamanche', 'gilles', '19990813', 'mastere 1', 'rue judaique', 'france', 'rauzan', '33420', '0756442689', (SELECT institution_id FROM Institutions WHERE institution_id=6))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('arthur', 'leonie', '19910215', 'bachelor 2', 'avenue de lisiere', 'france', 'le taillan medoc', '59100', '0556566578', (SELECT institution_id FROM Institutions WHERE institution_id=6))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('darrante', 'laure', '19951128', 'bachelor 1', 'lieu dit michel', 'france', 'lille', '41900', '0467452578', (SELECT institution_id FROM Institutions WHERE institution_id=6))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('melanie', 'philippe', '19841001', 'bachelor 3', 'avenue du clerge', 'belgique', 'bruges', '89800', '0468896154', (SELECT institution_id FROM Institutions WHERE institution_id=7))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('prunel', 'felix', '19911112', 'bachelor 2', 'avenue du paradis', 'france', 'roubaix', '68100', '0645879829', (SELECT institution_id FROM Institutions WHERE institution_id=7))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('brison', 'prune', '19861225', 'mastere 2', 'rue du miel', 'suisse', 'geneve', '68900', '0656324764', (SELECT institution_id FROM Institutions WHERE institution_id=7))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('guidon', 'amel', '19980902', 'bachelor 2', 'rue de la girouette', 'france', 'casteljaloux', '79100', '0756345678', (SELECT institution_id FROM Institutions WHERE institution_id=7))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('pavaula', 'serge', '19950711', 'mastere 2', 'rue de la pensee', 'france', 'baseille', '19000', '0456786724', (SELECT institution_id FROM Institutions WHERE institution_id=8))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('dufournau', 'paul', '19931230', 'bachelor 3', 'rue des morts', 'france', 'cocumont', '31800', '0945233291', (SELECT institution_id FROM Institutions WHERE institution_id=8))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('noctanbule', 'luc', '19960809', 'bachelor 1', 'rue du marechal', 'france', 'villefranche', '12800', '01235742132', (SELECT institution_id FROM Institutions WHERE institution_id=8))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('hyman', 'lea', '19881012', 'bachelor 3', 'rue des flutes', 'france', 'eymet', '68600', '0726426790', (SELECT institution_id FROM Institutions WHERE institution_id=8))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('collin', 'brice', '19880601', 'bachelor 3', 'rua de la ponte', 'bresil', 'rio de janero', '021', '06293652347', (SELECT institution_id FROM Institutions WHERE institution_id=9))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('kems', 'adam', '19941025', 'bachelor 3', 'avenue grise', 'france', 'lansac', '61930 ', '0687935689', (SELECT institution_id FROM Institutions WHERE institution_id=9))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('palunski', 'berenice', '19990719', 'mastere 1', 'rua mesa', 'espagne', 'barcelone', '36900', '0624361767', (SELECT institution_id FROM Institutions WHERE institution_id=9))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('clerge', 'george', '19970813', 'bachelor 1', 'rue meillan', 'france', 'pian sur medoc', '79300', '0692763689', (SELECT institution_id FROM Institutions WHERE institution_id=9))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('opine', 'myriam', '19920102', 'mestere 2', 'rue claire', 'france', 'poussignac', '57200', '0653246782', (SELECT institution_id FROM Institutions WHERE institution_id=10))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('piemonski', 'floe', '19911111', 'bachelor 3', 'rue cardinale', 'portugal', 'lisbone', '79900', '0836541578', (SELECT institution_id FROM Institutions WHERE institution_id=10))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('mafleche', 'joakim', '19920819', 'bachelor 2', 'rue de la gendarmerie', 'france', 'bourg', '45670', '0557892788', (SELECT institution_id FROM Institutions WHERE institution_id=10))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('monvoisin', 'marc', '19951105', 'bachelor 3', 'grey street', 'pays-bas', 'amsterdam', '1000 AA', '0928263701', (SELECT institution_id FROM Institutions WHERE institution_id=10))



INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('grossein', 'guillaume', '20031119', 'bachelor 2', 'rue du moule', 'france', 'moulon', '56890', '0687999201', (SELECT institution_id FROM Institutions WHERE institution_id=2))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('sachet', 'bertrand', '20021209', 'bachelor 1', 'rue du vent', 'france', 'perpignan', '32010', '0472567789', (SELECT institution_id FROM Institutions WHERE institution_id=2))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('bertrand', 'guillaume', '19900522', 'bachelor 3', 'rue de la mer', 'france', 'brieux', '12420', '0588283453', (SELECT institution_id FROM Institutions WHERE institution_id=2))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('farce', 'gui', '20021119', 'bachelor 2', 'rue de la colline', 'france', 'moulon', '56890', '0687999001', (SELECT institution_id FROM Institutions WHERE institution_id=2))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('simont', 'laura', '20021209', 'bachelor 1', 'rue du verdet', 'france', 'perpignan', '32010', '0472823480', (SELECT institution_id FROM Institutions WHERE institution_id=2))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('graham', 'maddy', '19900522', 'bachelor 3', 'rue de la maire', 'france', 'brieux', '12420', '0588283570', (SELECT institution_id FROM Institutions WHERE institution_id=2))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('fourmie', 'gauthier', '20001119', 'bachelor 2', 'rue du pain', 'france', 'moulon', '56890', '0687999867', (SELECT institution_id FROM Institutions WHERE institution_id=2))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('michon', 'roger', '20021209', 'bachelor 1', 'rue du boulanger', 'france', 'perpignan', '32010', '0472828906', (SELECT institution_id FROM Institutions WHERE institution_id=2))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('perrez', 'antiony', '19900522', 'bachelor 3', 'rue de la cote', 'france', 'brieux', '12420', '0588283809', (SELECT institution_id FROM Institutions WHERE institution_id=2))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('jardinier', 'noelle', '20001108', 'bachelor 1', 'rue du champs', 'france', 'pessac', '57830', '0887654346', (SELECT institution_id FROM Institutions WHERE institution_id=2))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('duverger', 'luna', '19970607', 'bachelor 2', 'rue du pellet', 'france', 'bordeaux', '33000', '0671365890', (SELECT institution_id FROM Institutions WHERE institution_id=1))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('daribelle', 'mathilde', '19921201', 'bachelor 2', 'cite administrative du auchan', 'france', 'cenon', '33800', '0623569089', (SELECT institution_id FROM Institutions WHERE institution_id=1))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('philippette', 'gabriel', '20010928', 'bachelor 2', 'rue du couteau', 'france', 'fargues sur ourbise', '47700', '0789954327', (SELECT institution_id FROM Institutions WHERE institution_id=1))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('berger', 'gabrielle', '20021221', 'bachelor 2', 'avenue du regiment', 'france', 'libourne', '33500', '0713310458', (SELECT institution_id FROM Institutions WHERE institution_id=1))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('lavigne', 'raphaelle', '20020228', 'bachelor 3', 'rue saint marc', 'france', 'Lormont', '23900', '0269756535', (SELECT institution_id FROM Institutions WHERE institution_id=3))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('cantine', 'pauline', '19901103', 'mastere 2', 'lieu dit saint pierre', 'france', 'rouen', '67920', '0192656579', (SELECT institution_id FROM Institutions WHERE institution_id=3))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('monticule', 'raphael', '19930101', 'mastere 1', 'avenue des judas', 'france', 'strasbourg', '98220', '0764865331', (SELECT institution_id FROM Institutions WHERE institution_id=3))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('zoe', 'elodie', '19870314', 'bachelor 1', 'rue des raisins', 'france', 'paris', '75000', '0845982789', (SELECT institution_id FROM Institutions WHERE institution_id=3))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('arridieu', 'dorian', '19960802', 'bachelor 1', 'avenue des jolies dames', 'france', 'perpignan', '24600', '0862926234', (SELECT institution_id FROM Institutions WHERE institution_id=4))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('boulanger', 'justin', '19880612', 'bachelor 3', 'rue du paysan', 'france', 'marseille', '69000', '0812277895', (SELECT institution_id FROM Institutions WHERE institution_id=4))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('fargues', 'floe', '19880314', 'bachelor 1', 'rue des fleurs', 'france', 'paris', '75000', '0852725345', (SELECT institution_id FROM Institutions WHERE institution_id=4))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('lilas', 'marlene', '19890929', 'mastere 3', 'rue du pecule', 'france', 'toulon', '90700', '0642857445', (SELECT institution_id FROM Institutions WHERE institution_id=4))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('albert', 'alicia', '19990404', 'bachelor 3', 'plaza del cielo', 'france', 'Madrid', '28001', '0781521249', (SELECT institution_id FROM Institutions WHERE institution_id=5))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('hondou', 'fernant', '19900209', 'bachelor 1', 'rue du pied', 'france', 'nantes', '53900', '0192656654', (SELECT institution_id FROM Institutions WHERE institution_id=5))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('yertz', 'gilles', '19981129', 'mastere 1', 'avenue emilie', 'france', 'toulouse', '69100', '0764878600', (SELECT institution_id FROM Institutions WHERE institution_id=5))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('pontique', 'amecourt', '19910714', 'bachelor 2', 'avenue de la mere', 'france', 'lyon', '52600', '0845986789', (SELECT institution_id FROM Institutions WHERE institution_id=5))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('galadriel', 'richard', '19870718', 'mastere 2', 'rue du achar', 'france', 'lorient', '71900', '0495289916', (SELECT institution_id FROM Institutions WHERE institution_id=6))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('jesuis', 'michel', '19890913', 'mastere 1', 'rue lebour', 'france', 'rauzan', '33420', '0728635188', (SELECT institution_id FROM Institutions WHERE institution_id=6))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('estier', 'bernard', '19920215', 'bachelor 2', 'avenue carre rouge', 'france', 'le taillan medoc', '59100', '05291634122', (SELECT institution_id FROM Institutions WHERE institution_id=6))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('berrin', 'diego', '19961128', 'bachelor 1', 'lieu dit lansade', 'france', 'lille', '41900', '0464417920', (SELECT institution_id FROM Institutions WHERE institution_id=6))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('jean', 'ilda', '19851001', 'bachelor 3', 'avenue du petrin', 'belgique', 'bruges', '89800', '0589926789', (SELECT institution_id FROM Institutions WHERE institution_id=7))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('merile', 'clodette', '19901112', 'bachelor 2', 'avenue du juste', 'france', 'roubaix', '68100', '0695144629', (SELECT institution_id FROM Institutions WHERE institution_id=7))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('blanc', 'maxime', '19871225', 'mastere 2', 'rue du motre dame', 'suisse', 'geneve', '68900', '0621977281', (SELECT institution_id FROM Institutions WHERE institution_id=7))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('foix', 'christopher', '19900902', 'bachelor 2', 'rue armand', 'france', 'casteljaloux', '79100', '0765136920', (SELECT institution_id FROM Institutions WHERE institution_id=7))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('dupont', 'antoine', '19940711', 'mastere 2', 'rue de lois', 'france', 'baseille', '19000', '04817253444', (SELECT institution_id FROM Institutions WHERE institution_id=8))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('dumont', 'pascale', '19991230', 'bachelor 3', 'rue des tekorie', 'france', 'cocumont', '31800', '0917252316', (SELECT institution_id FROM Institutions WHERE institution_id=8))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('dechamps', 'louise', '19970809', 'bachelor 1', 'rue du mansard', 'france', 'villefranche', '12800', '0927351289', (SELECT institution_id FROM Institutions WHERE institution_id=8))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('campand', 'timothe', '19891012', 'bachelor 3', 'rue salinieres', 'france', 'eymet', '68600', '0726423178', (SELECT institution_id FROM Institutions WHERE institution_id=8))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('bleutre', 'marcelle', '19890601', 'bachelor 3', 'rua larua', 'bresil', 'rio de janero', '021', '0629365438', (SELECT institution_id FROM Institutions WHERE institution_id=9))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('douillet', 'mathilda', '19951025', 'bachelor 3', 'avenue rose', 'france', 'lansac', '61930 ', '0687931099', (SELECT institution_id FROM Institutions WHERE institution_id=9))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('poret', 'eva', '19970719', 'mastere 1', 'rua bruma', 'espagne', 'barcelone', '36900', '06243617354', (SELECT institution_id FROM Institutions WHERE institution_id=9))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('bichet', 'ninon', '19980813', 'bachelor 1', 'rue rouge', 'france', 'pian sur medoc', '79300', '0692763555', (SELECT institution_id FROM Institutions WHERE institution_id=9))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('poulin', 'thomas', '19980102', 'mestere 2', 'rue jules verne', 'france', 'poussignac', '57200', '0653241718', (SELECT institution_id FROM Institutions WHERE institution_id=10))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('salie', 'gertrude', '19901111', 'bachelor 3', 'rue fleur', 'portugal', 'lisbone', '79900', '0836541211', (SELECT institution_id FROM Institutions WHERE institution_id=10))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('radia', 'marjolene', '19930819', 'bachelor 2', 'rue poignet', 'france', 'bourg', '45670', '0557892618', (SELECT institution_id FROM Institutions WHERE institution_id=10))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('perrin', 'justine', '19961105', 'bachelor 3', 'viellet street', 'pays-bas', 'amsterdam', '1000 AA', '0928263541', (SELECT institution_id FROM Institutions WHERE institution_id=10))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('boisie', 'maya', '20011119', 'bachelor 2', 'rue fox', 'france', 'moulon', '56890', '0687999821', (SELECT institution_id FROM Institutions WHERE institution_id=2))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('plantard', 'morgane', '20031209', 'bachelor 1', 'rue touz', 'france', 'perpignan', '32010', '0472826146', (SELECT institution_id FROM Institutions WHERE institution_id=2))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('potau', 'janine', '19910522', 'bachelor 3', 'rue de la mal au dent', 'france', 'brieux', '12420', '0588283627', (SELECT institution_id FROM Institutions WHERE institution_id=2))

INSERT INTO Students (lastname, firstname, birthdate, grade, address, country, city, zipCode, phoneNumber, institution_id)
VALUES('secrier', 'fatila', '20011108', 'bachelor 1', 'rue du malheur', 'france', 'pessac', '57830', '0887654278', (SELECT institution_id FROM Institutions WHERE institution_id=2))



ALTER TABLE Classrooms ADD institution_id INT NULL

ALTER TABLE Classrooms ADD CONSTRAINT FK_classrooms_institutions FOREIGN KEY (institution_id) REFERENCES Institutions(institution_id);

UPDATE Classrooms 
SET institution_id = 1
WHERE classroom_id = 1 OR classroom_id = 4 OR classroom_id = 7 OR classroom_id = 14

UPDATE Classrooms 
SET institution_id = 2
WHERE classroom_id = 2 OR classroom_id = 5 OR classroom_id = 8 OR classroom_id = 15

UPDATE Classrooms 
SET institution_id = 3
WHERE classroom_id = 3 OR classroom_id = 6 OR classroom_id = 9 OR classroom_id = 16

UPDATE Classrooms 
SET institution_id = 4
WHERE classroom_id = 11 OR classroom_id = 10 OR classroom_id = 20 

UPDATE Classrooms 
SET institution_id = 5
WHERE classroom_id = 12 OR classroom_id = 17 

UPDATE Classrooms 
SET institution_id = 6
WHERE classroom_id = 13 OR classroom_id = 18 OR classroom_id = 19 



INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('gallerie 4', 25, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('laboratoire 1', 30, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('amphitheatre 5', 1035, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('b1', 25, 'salle de classe')



INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('laboratoire 2', 30, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('amphitheatre 1', 1035, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('b3', 28, 'salle de classe')



INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('gallerie 3', 25, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('laboratoire 3', 15, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('amphitheatre 2', 2500, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('b1', 25, 'salle de classe')


INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('laboratoire 4', 30, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('amphitheatre 3', 1035, 'salle de classe')

INSERT INTO Classrooms (name, capacity, roomtype) VALUES ('gallerie 1', 28, 'salle de classe')



UPDATE Classrooms 
SET institution_id = 7
WHERE classroom_id = 1002 OR classroom_id = 1003 OR classroom_id = 1004 OR classroom_id = 1005

UPDATE Classrooms 
SET institution_id = 8
WHERE classroom_id = 1006 OR classroom_id = 1007 OR classroom_id = 1008 

UPDATE Classrooms 
SET institution_id = 9
WHERE classroom_id = 1009 OR classroom_id = 1010 OR classroom_id = 1011 OR classroom_id = 1012

UPDATE Classrooms 
SET institution_id = 10
WHERE classroom_id = 1013 OR classroom_id = 1014 OR classroom_id = 1015



SELECT * FROM Classes
UPDATE Classes
SET classroom_id = 4
where class_id=4

UPDATE Classes
SET classroom_id = 4
where class_id=7

UPDATE Classes
SET classroom_id = 4
where class_id=14

UPDATE Classes
SET classroom_id = 4
where class_id=8

UPDATE Classes
SET classroom_id = 7
where class_id=9

UPDATE Classes
SET classroom_id = 14
where class_id=10

UPDATE Classes
SET classroom_id = 3
where class_id=11

UPDATE Classes
SET classroom_id = 6
where class_id=12

UPDATE Classes
SET classroom_id = 9
where class_id=13

UPDATE Classes
SET classroom_id = 16
where class_id=14

UPDATE Classes
SET classroom_id = 10
where class_id=15

UPDATE Classes
SET classroom_id = 11
where class_id=17

UPDATE Classes
SET classroom_id = 20
where class_id=18

UPDATE Classes
SET classroom_id = 12
where class_id=19

UPDATE Classes
SET classroom_id = 12
where class_id=20

UPDATE Classes
SET classroom_id = 17
where class_id=21

UPDATE Classes
SET classroom_id = 17
where class_id=22

UPDATE Classes
SET classroom_id = 12
where class_id=23

UPDATE Classes
SET classroom_id = 18
where class_id=24

UPDATE Classes
SET classroom_id = 13
where class_id=25

UPDATE Classes
SET classroom_id = 18
where class_id=26

UPDATE Classes
SET classroom_id = 19
where class_id=27

select * from Classrooms

UPDATE Classes
SET classroom_id = 20
where class_id=28

UPDATE Classes
SET classroom_id = 21
where class_id=29

UPDATE Classes
SET classroom_id = 22
where class_id=30

UPDATE Classes
SET classroom_id = 23
where class_id=31

UPDATE Classes
SET classroom_id = 24
where class_id=32

UPDATE Classes
SET classroom_id = 25
where class_id=33

UPDATE Classes
SET classroom_id = 26
where class_id=34

UPDATE Classes
SET classroom_id = 27
where class_id=35

UPDATE Classes
SET classroom_id = 28
where class_id=36

UPDATE Classes
SET classroom_id = 29
where class_id=37

UPDATE Classes
SET classroom_id = 30
where class_id=38

UPDATE Classes
SET classroom_id = 31
where class_id=39

UPDATE Classes
SET classroom_id = 32
where class_id=40

UPDATE Classes
SET classroom_id = 33
where class_id=41

UPDATE Classes
SET classroom_id = 34
where class_id=42



DECLARE @studentid int
Declare id CURSOR FOR (SELECT student_id from students)
OPEN id 
FETCH id into @studentid
WHILE @@FETCH_STATUS=0
BEGIN
	IF @studentid < 6
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (2,@studentid)
	END
	ELSE IF @studentid > 5 AND @studentid<11
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (6,@studentid)
	END
	ELSE IF @studentid > 10 AND @studentid<16
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (10,@studentid)
	END
	ELSE IF @studentid > 15 AND @studentid<21
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (9,@studentid)
	END
	ELSE IF @studentid > 1070 AND @studentid<1077
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (48,@studentid)
	END
	ELSE IF @studentid > 1076 AND @studentid<1081
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (49,@studentid)
	END
	ELSE IF @studentid > 1080 AND @studentid<1085
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (51,@studentid)
	END
	ELSE IF @studentid > 1084 AND @studentid<1089
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (52,@studentid)
	END
	ELSE IF @studentid > 20 AND @studentid<26
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (11,@studentid)
	END
	ELSE IF @studentid > 25 AND @studentid<31
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (13,@studentid)
	END
	ELSE IF @studentid > 30 AND @studentid<37
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (15,@studentid)
	END
	ELSE IF @studentid > 36 AND @studentid<45
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (19,@studentid)
	END
	ELSE IF @studentid > 1001 AND @studentid<1011
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (26,@studentid)
	END
	ELSE IF @studentid > 1011 AND @studentid<1031
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (32,@studentid)
	END
	ELSE IF @studentid > 1030 AND @studentid<1051
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (37,@studentid)
	END
	ELSE IF @studentid > 1050 AND @studentid<1061
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (40,@studentid)
	END
	ELSE IF @studentid > 1060 AND @studentid<1071
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (53,@studentid)
	END
	FETCH NEXT FROM id INTO @studentid
END
CLOSE id
DEALLOCATE id



DECLARE @studentid int
Declare id CURSOR FOR (SELECT student_id from students)
OPEN id 
FETCH id into @studentid
WHILE @@FETCH_STATUS=0
BEGIN
	IF @studentid < 21
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (3,@studentid)
	END
	ELSE IF @studentid > 1070 AND @studentid<1089
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (49,@studentid)
	END
	ELSE IF @studentid > 20 AND @studentid<31
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (12,@studentid)
	END
	ELSE IF @studentid > 30 AND @studentid<37
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (16,@studentid)
	END
	ELSE IF @studentid > 36 AND @studentid<45
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (20,@studentid)
	END
	ELSE IF @studentid > 1001 AND @studentid<1011
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (27,@studentid)
	END
	ELSE IF @studentid > 1011 AND @studentid<1031
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (31,@studentid)
	END
	ELSE IF @studentid > 1030 AND @studentid<1051
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (36,@studentid)
	END
	ELSE IF @studentid > 1050 AND @studentid<1061
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (41,@studentid)
	END
	ELSE IF @studentid > 1060 AND @studentid<1071
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (47,@studentid)
	END
	FETCH NEXT FROM id INTO @studentid
END
CLOSE id
DEALLOCATE id



DECLARE @studentid int
Declare id CURSOR FOR (SELECT student_id from students)
OPEN id 
FETCH id into @studentid
WHILE @@FETCH_STATUS=0
BEGIN
	IF @studentid < 21
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (4,@studentid)
	END
	ELSE IF @studentid > 1070 AND @studentid<1089
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (50,@studentid)
	END
	ELSE IF @studentid > 20 AND @studentid<31
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (13,@studentid)
	END
	ELSE IF @studentid > 30 AND @studentid<37
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (17,@studentid)
	END
	ELSE IF @studentid > 36 AND @studentid<45
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (21,@studentid)
	END
	ELSE IF @studentid > 1001 AND @studentid<1011
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (25,@studentid)
	END
	ELSE IF @studentid > 1011 AND @studentid<1031
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (30,@studentid)
	END
	ELSE IF @studentid > 1030 AND @studentid<1051
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (35,@studentid)
	END
	ELSE IF @studentid > 1050 AND @studentid<1061
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (39,@studentid)
	END
	ELSE IF @studentid > 1060 AND @studentid<1071
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (46,@studentid)
	END
	FETCH NEXT FROM id INTO @studentid
END
CLOSE id
DEALLOCATE id



DECLARE @studentid int
Declare id CURSOR FOR (SELECT student_id from students)
OPEN id 
FETCH id into @studentid
WHILE @@FETCH_STATUS=0
BEGIN
	IF @studentid < 21
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (5,@studentid)
	END
	ELSE IF @studentid > 1070 AND @studentid<1089
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (51,@studentid)
	END
	ELSE IF @studentid > 20 AND @studentid<31
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (14,@studentid)
	END
	ELSE IF @studentid > 30 AND @studentid<37
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (18,@studentid)
	END
	ELSE IF @studentid > 36 AND @studentid<45
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (22,@studentid)
	END
	ELSE IF @studentid > 1001 AND @studentid<1011
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (26,@studentid)
	END
	ELSE IF @studentid > 1011 AND @studentid<1031
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (28,@studentid)
	END
	ELSE IF @studentid > 1030 AND @studentid<1051
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (33,@studentid)
	END
	ELSE IF @studentid > 1050 AND @studentid<1061
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (38,@studentid)
	END
	ELSE IF @studentid > 1060 AND @studentid<1071
	BEGIN
		INSERT INTO Student_classes (class_id, student_id)
		VALUES (44,@studentid)
	END
	FETCH NEXT FROM id INTO @studentid
END
CLOSE id
DEALLOCATE id

