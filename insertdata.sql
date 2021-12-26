insert into Komuna
values (1, 'Prishtine'),
       (2, 'Mitrovice'),
       (3, 'Peje'),
       (4, 'Prizren'),
       (5, 'Ferizaj'),
       (6, 'Gjilan'),
       (7, 'Gjakove'),
       (8, 'Podujeve'),
       (9, 'Lipjan'),
       (10, 'Decan'),
       (11, 'Rahovec'),
       (12, 'Istog'),
       (13, 'Fushe Kosove'),
       (14, 'Vushtrri'),
       (15, 'Suhareke'),
       (16, 'Kline'),
       (17, 'Malisheve'),
       (18, 'Obiliq'),
       (19, 'Viti'),
       (20, 'Skenderaj');

--

insert into titulli (positionName, wage)
values ('Biblotekan', 270),
       ('Menaxher i personelit', 550),
       ('Teknik', 380),
       ('Ndihmes-bibliotekan', 350),
       ('Pergjegjes arkives', 600),
       ('Drejtor', 900),
       ('Zyrtari financave', 630);


insert into punetori (workerName, workerSurname, workerAddress, workerMunicipality, workerPhone, workerEmail,
                      workerPosition)
values ('Albina', 'Hoti', 'Mbreteresha Teute', '1', '38344768493', 'albinahoti@gmail.com', 1),
       ('Blearta', 'Hajdini', 'Bill Klinton', '2', '38345876954', 'enahajda@gmail.com', 2),
       ('Gentrit', 'Kabashi', 'Deshmoret e Kombit ', '5', '38349089019', 'gkabashi@gmail.com', 3),
       ('Besarta', 'Kurtaj', 'Sami Frasheri ', '3', '38349100200', 'bkurtaj12@gmail.com', 4),
       ('Fiona', 'Hodolli', 'Skenderbeu', '6', '38343521680', 'hodollifiona@gmail.com', 7),
       ('Aurora', 'Veseli', 'Aferdita Ukshini', '7', '38346153609', 'aurorav@gmail.com', 5),
       ('Artilon', 'Spahiu', 'Xhelal Hajda-Toni', '5', '38349678504', 'artispahiu@gmail.com', 7),
       ('Melos', 'Shala', 'Ukshin Hoti', '8', '38345001002', 'mshala1@gmail.com', 1),
       ('Suela', 'Rexha', 'Adem Jashari', '4', '38344087089', 'rexhas@gmail.com', 4),
       ('Ardit', 'Stublla', 'Robert Doll', '17', '38349102103', 'arditstublla@gmail.com', 3),
       ('Almedin', 'Ejupi', 'Hillary Klinton', '19', '38344204205', 'allmedin3@gmail.com', 5),
       ('Bleron', 'Gashi', 'Fan Noli', '2', '38345087086', 'gashibleron@gmail.com', 6),
       ('Adnit', 'Gashi', 'Fan Noli', '2', '38345087085', 'adnitgashi@gmail.com', 3);


INSERT INTO biblioteka.pagesa (paymentID, workerID, billPrice, typeOfPayment) VALUES (90, 20, 0.5, 'Registration');
INSERT INTO biblioteka.pagesa (paymentID, workerID, billPrice, typeOfPayment) VALUES (91, 21, 0.5, 'Registration');
INSERT INTO biblioteka.pagesa (paymentID, workerID, billPrice, typeOfPayment) VALUES (92, 22, 0.5, 'Registration');
INSERT INTO biblioteka.pagesa (paymentID, workerID, billPrice, typeOfPayment) VALUES (93, 23, 0.5, 'Registration');
INSERT INTO biblioteka.pagesa (paymentID, workerID, billPrice, typeOfPayment) VALUES (94, 24, 0.5, 'Registration');
INSERT INTO biblioteka.pagesa (paymentID, workerID, billPrice, typeOfPayment) VALUES (95, 25, 0.5, 'Registration');
INSERT INTO biblioteka.pagesa (paymentID, workerID, billPrice, typeOfPayment) VALUES (96, 21, 0.5, 'Registration');
INSERT INTO biblioteka.pagesa (paymentID, workerID, billPrice, typeOfPayment) VALUES (97, 27, 0.5, 'Registration');
INSERT INTO biblioteka.pagesa (paymentID, workerID, billPrice, typeOfPayment) VALUES (98, 25, 0.5, 'Registration');
INSERT INTO biblioteka.pagesa (paymentID, workerID, billPrice, typeOfPayment) VALUES (99, 29, 0.5, 'Registration');
INSERT INTO biblioteka.pagesa (paymentID, workerID, billPrice, typeOfPayment) VALUES (100, 30, 0.5, 'Registration');
INSERT INTO biblioteka.pagesa (paymentID, workerID, billPrice, typeOfPayment) VALUES (101, 28, 0.5, 'Registration');

INSERT INTO biblioteka.regjistrimi (registrationID, registrationDate, billID, registrationLengthDays, registrationActive, typeOfRegistration) VALUES (110, '2020-12-26', 90, 365, 1, 'Anetare');
INSERT INTO biblioteka.regjistrimi (registrationID, registrationDate, billID, registrationLengthDays, registrationActive, typeOfRegistration) VALUES (111, '2019-11-22', 91, 365, 1, 'Anetare');
INSERT INTO biblioteka.regjistrimi (registrationID, registrationDate, billID, registrationLengthDays, registrationActive, typeOfRegistration) VALUES (112, '2019-05-06', 92, 365, 1, 'Anetare');
INSERT INTO biblioteka.regjistrimi (registrationID, registrationDate, billID, registrationLengthDays, registrationActive, typeOfRegistration) VALUES (113, '2021-12-26', 93, 365, 1, 'Anetare');
INSERT INTO biblioteka.regjistrimi (registrationID, registrationDate, billID, registrationLengthDays, registrationActive, typeOfRegistration) VALUES (114, '2021-12-26', 94, 365, 1, 'Anetare');
INSERT INTO biblioteka.regjistrimi (registrationID, registrationDate, billID, registrationLengthDays, registrationActive, typeOfRegistration) VALUES (115, '2021-12-26', 95, 365, 1, 'Anetare');
INSERT INTO biblioteka.regjistrimi (registrationID, registrationDate, billID, registrationLengthDays, registrationActive, typeOfRegistration) VALUES (116, '2021-12-26', 96, 365, 1, 'Anetare');
INSERT INTO biblioteka.regjistrimi (registrationID, registrationDate, billID, registrationLengthDays, registrationActive, typeOfRegistration) VALUES (117, '2021-12-26', 97, 365, 1, 'Anetare');
INSERT INTO biblioteka.regjistrimi (registrationID, registrationDate, billID, registrationLengthDays, registrationActive, typeOfRegistration) VALUES (118, '2021-12-26', 98, 365, 1, 'Anetare');
INSERT INTO biblioteka.regjistrimi (registrationID, registrationDate, billID, registrationLengthDays, registrationActive, typeOfRegistration) VALUES (119, '2021-12-26', 99, 365, 1, 'Anetare');
INSERT INTO biblioteka.regjistrimi (registrationID, registrationDate, billID, registrationLengthDays, registrationActive, typeOfRegistration) VALUES (120, '2021-12-26', 100, 365, 1, 'Anetare');
INSERT INTO biblioteka.regjistrimi (registrationID, registrationDate, billID, registrationLengthDays, registrationActive, typeOfRegistration) VALUES (121, '2021-12-26', 101, 365, 1, 'Anetare');

INSERT INTO biblioteka.lexuesi (readerID, readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress, readerMunicipality, readerPhone, readerEmail, readerOccupation, readerRegistration) VALUES (10, 'Art', 'Tmava', 'Selim', 'M', '2002-02-11', 'William Walker', 1, '38349123456', 'atmava@gmail.com', 'Student', 110);
INSERT INTO biblioteka.lexuesi (readerID, readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress, readerMunicipality, readerPhone, readerEmail, readerOccupation, readerRegistration) VALUES (11, 'Era', 'Hajdari', 'Ismajl', 'F', '2000-04-03', 'Bill Klinton', 1, '38344321546', 'eahajda@gmail.com', 'Mesuese', 111);
INSERT INTO biblioteka.lexuesi (readerID, readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress, readerMunicipality, readerPhone, readerEmail, readerOccupation, readerRegistration) VALUES (12, 'Dren', 'Shehu', 'Safet', 'M', '2001-01-17', 'Ismail Kodra', 5, '38346768143', 'drensh1@gmail.com', 'Student', 112);
INSERT INTO biblioteka.lexuesi (readerID, readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress, readerMunicipality, readerPhone, readerEmail, readerOccupation, readerRegistration) VALUES (13, 'Dimal', 'Kryeziu', 'Smajl', 'M', '2000-11-05', 'Sami Frasheri', 7, '38345879687', 'dkryeziu13@gmail.com', 'Student', 113);
INSERT INTO biblioteka.lexuesi (readerID, readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress, readerMunicipality, readerPhone, readerEmail, readerOccupation, readerRegistration) VALUES (14, 'Fjolla', 'Korenica', 'Hamez', 'F', '2004-07-30', '4 Llullat', 9, '38349871220', 'fjollak@gmail.com', 'Nxenese', 114);
INSERT INTO biblioteka.lexuesi (readerID, readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress, readerMunicipality, readerPhone, readerEmail, readerOccupation, readerRegistration) VALUES (15, 'Aulona', 'Berisha', 'Kadri', 'F', '2003-05-04', 'Aleksandri i Madh', 11, '38344657881', 'aulonab32@gmail.com', 'Nxenese', 115);
INSERT INTO biblioteka.lexuesi (readerID, readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress, readerMunicipality, readerPhone, readerEmail, readerOccupation, readerRegistration) VALUES (16, 'Drenusha', 'Selimi', 'Selman', 'F', '2002-10-22', 'Bekim Isma', 13, '38349555342', 'ds11@gmail.com', 'Studente', 116);
INSERT INTO biblioteka.lexuesi (readerID, readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress, readerMunicipality, readerPhone, readerEmail, readerOccupation, readerRegistration) VALUES (17, 'Melos', 'Elshani', 'Xhevdet', 'M', '1995-12-05', 'Ukshin Hoti', 15, '38346332123', 'eoselshani@gmail.com', 'Profesor', 117);
INSERT INTO biblioteka.lexuesi (readerID, readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress, readerMunicipality, readerPhone, readerEmail, readerOccupation, readerRegistration) VALUES (18, 'Klea', 'Dina', 'Albin', 'F', '1990-04-04', 'Isa Boletini', 17, '38349678555', 'dinaklea@gmail.com', 'Mjeke', 118);
INSERT INTO biblioteka.lexuesi (readerID, readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress, readerMunicipality, readerPhone, readerEmail, readerOccupation, readerRegistration) VALUES (19, 'Anjeza', 'Plakolli', 'Arif', 'F', '1994-06-25', 'Bajram Curri', 19, '38343889787', 'anjezap32@gmail.com', 'Edukatore', 119);
INSERT INTO biblioteka.lexuesi (readerID, readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress, readerMunicipality, readerPhone, readerEmail, readerOccupation, readerRegistration) VALUES (20, 'Artan', 'Meha', 'Pajtim', 'M', '1992-11-11', 'Zahir Pajaziti', 12, '38349999567', 'mehaartan92@gmail.com', 'Inxhinier', 120);
INSERT INTO biblioteka.lexuesi (readerID, readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress, readerMunicipality, readerPhone, readerEmail, readerOccupation, readerRegistration) VALUES (21, 'Ensar', 'Hoti', 'Armend', 'M', '1998-09-09', 'Deshmoret e Lirise', 6, '38349677655', 'ensarhh@gmail.com', 'Avokat', 121);

insert into autori (authorName, authorDoB, authorPoB, authorDoD, authorNumOfWorks, authorWorkEra)
values ('Khaled Hossein', '1965-03-04', 'Afganistan', NULL, '3', ''),
       ('Sandra Brown', '1948-03-12', 'ShBA', NULL, '4', ''),
       ('George Orwell', '1903-06-25', 'Indi', '1950-01-21', '7', ''),
       ('Ismail Kadare', '1936-01-28', 'Shqiperi', NULL, '3', ''),
       ('Harper Lee', '1926-04-28', 'ShBA', '2016-02-19', '5', ''),
       ('Dan Brown', '1964-06-22', 'ShBA', NULL, '7', ''),
       ('Paulo Coelho', '1947-09-24', 'Brazil', NULL, '8', ''),
       ('Kristy Moseley', '1985-10-22', 'Angli', NULL, '8', ''),
       ('Brunilda Zllami', '1976-05-09', 'Shqiperi', NULL, '11', ''),
       ('Nazmi Rrahmani', '1941-11-03', 'Kosove', NULL, '2', ''),
       ('Jeronim De Rada', '1814-11-19', 'Itali', '1903-02-28', '15', '');

insert into Zhanri(genreName)
values ('Roman'),
       ('Novele'),
       ('Fantashkence'),
       ('Aventure'),
       ('Poeme'),
       ('Mister'),
       ('Romance');

insert into seksionet (genreID, sectionAgeGroup, sectionNumOfCopies, sectionWorker, sectionFloor, sectionName)
values (41, 'Femije', '123', 20, '1', 'A'),
       (42, 'Te rritur', '542', 21, '1', 'B'),
       (44, 'Adoleshente', '221', 22, '1', 'C'),
       (43, 'Femije', '43', 30, '2', 'A'),
       (46, 'Te rritur', '13', 29, '2', 'B'),
       (41, 'Adoleshente', '54', 23, '2', 'C'),
       (45, 'Femije', '41', 24, '3', 'A'),
       (40, 'Te rritur', '64', 28, '3', 'B'),
       (40, 'Adoleshente', '49', 27, '3', 'C'),
       (43, 'Femije', '56', 29, '4', 'A'),
       (41, 'Te rritur', '29', 20, '4', 'B'),
       (41, 'Adoleshente', '13', 26, '4', 'C');


insert into libri (bookTitle, bookAuthor, bookGenre, bookNumOfCopies, bookAcceptanceDate, bookAcceptedByWorker,
                   bookCondition, bookSection)
values ('Nje mije diej vezullues', 30, 41, '34', '2011-10-31', 20, 'E re', 50),
       ('Mendafshi francez', 31, 46, '22', '2011-04-20', 21, 'E perdorur', 51),
       ('1984', 32, 42, '14', '2012-03-12', 22, 'E re', 52),
       ('Prilli i thyer', 33, 41, '15', '2012-06-09', 23, 'E re', 53),
       ('Te vrasesh zogun perqeshes', 34, 41, '4', '2013-03-19', 24, 'E perdorur', 54),
       ('Engjej dhe djaj', 35, 45, '3', '2015-07-23', 25, 'E demtuar', 55),
       ('Kodi i Da Vincit', 35, 45, '5', '2014-09-08', 26, 'E re', 56),
       ('Alkimisti', 36, 42, '30', '2014-11-10', 27, 'E perdorur', 57),
       ('Me ty do te prek qiellin', 37, 46, '20', '2015-12-30', 28, 'E re', 58),
       ('Nuk jam engjell', 38, 40, '17', '2016-09-22', 29, 'E demtuar', 59),
       ('Malesorja', 39, 40, '12', '2017-10-24', 30, 'E demtuar', 60),
       ('Kenget e Milosaos', 40, 44, '8', '2013-02-03', 31, 'E perdorur', 61);

insert into huazimi (borrowedBookID, readerID, borrowDate, returnDate, workerID, borrowNotes)
values ('61', '10', '2021-12-01', '2021-12-16', '27', ''),
       ('62', '11', '2021-10-3', '2021-12-16', '22 ', ''),
       ('64', '11', '2021-10-4', '2021-12-16', '22 ', ''),
       ('63', '11', '2021-10-12', '2021-12-20', '22 ', ''),
       ('65', '13', '2016-08-15', '2016-09-01', '21', ''),
       ('67', '14', '2019-11-09', '2019-11-26', '21', ''),
       ('69', '16', '2021-12-11', '2021-12-16', '23', ''),
       ('66', '14', '2021-10-09', '2021-10-15', '21', ''),
       ('63', '14', '2021-10-09', '2021-10-15', '21', ''),
       ('61', '21', '2020-04-23', '2020-05-10', '21', ''),
       ('60', '19', '2017-08-06', '2017-08-21', '26', ''),
       ('70', '12', '2020-05-19', '2020-05-25', '27', '');

insert into arkiva (bookID, readerID, borrowID)
values (61, '10', '70'),
       (62, '11', '71'),
       (64, '11', '72'),
       (63, '11', '73'),
       (65, '13', '74'),
       (67, '14', '75'),
       (69, '16', '76'),
       (66, '14', '77'),
       (63, '14', '78'),
       (61, '21', '79'),
       (60, '19', '80'),
       (70, '12', '81');

insert into libratdemtuar (bookID, bookRegistrationDate, workerID, billID, damagedRegNotes)
values ('60', '2012-05-12', '21', 91, 'Pakujdesi'),
       ('61', '2016-01-10', '22', 91, 'Lageshtia'),
       ('70', '2018-04-03', '25', 90, 'Pakujdesi'),
       ('64', '2019-02-10', '24', 90, 'I humbur');


insert into dhurimilibrit(bookID, workerID, donationDate)
values ('60', '21', '2014-10-12'),
       ('61', '24', '2016-07-24'),
       ('69', '28', '2019-06-08'),
       ('62', '29', '2020-12-10');

insert into Vleresimi(bookReviewed, reviewer, reviewLevel)
values ('61', '10', '5.00'),
       ('62', '12', '4.50'),
       ('63', '13', '4.00'),
       ('64', '14', '4.00'),
       ('65', '15', '5.00'),
       ('66', '16', '4.70'),
       ('67', '17', '3.85'),
       ('68', '18', '3.75'),
       ('69', '19', '5.00'),
       ('70', '10', '4.00'),
       ('71', '11', '3.00'),
       ('66', '12', '5.00');

