insert into Komuna
values
(1, 'Prishtine'),
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

insert into Lexuesi
values
(1, 'Art', 'Tmava', 'Selim', 'M', '2002-02-11', 'William Walker', '1', '38349123456', 'atmava@gmail.com', 'Student'),
(2, 'Era', 'Hajdari', 'Ismajl', 'F', '2000-04-03', 'Bill Klinton', '3', '38344321546', 'eahajda@gmail.com', 'Mesuese'),
(3, 'Dren', 'Shehu', 'Safet', 'M', '2001-01-17', 'Ismail Kodra', '5', '38346768143', 'drensh1@gmail.com', 'Student'),
(4, 'Dimal', 'Kryeziu', 'Smajl', 'M', '2000-11-05', 'Sami Frasheri', '7', '38345879687', 'dkryeziu13@gmail.com', 'Student'),
(5, 'Fjolla', 'Korenica', 'Hamez', 'F', '2004-07-30', '4 Llullat', '9', '38349871220', 'fjollak@gmail.com', 'Nxenese'),
(6, 'Aulona', 'Berisha', 'Kadri', 'F', '2003-05-04', 'Aleksandri i Madh', '11', '38344657881', 'aulonab32@gmail.com', 'Nxenese'),
(7, 'Drenusha', 'Selimi', 'Selman', 'F', '2002-10-22', 'Bekim Isma', '13', '38349555342', 'ds11@gmail.com', 'Studente'),
(8, 'Melos', 'Elshani', 'Xhevdet', 'M', '1995-12-05', 'Ukshin Hoti', '15', '38346332123', 'eoselshani@gmail.com', 'Profesor'),
(9, 'Klea', 'Dina', 'Albin', 'F', '1990-04-04', 'Isa Boletini', '17', '38349678555', 'dinaklea@gmail.com', 'Mjeke'),
(10, 'Anjeza', 'Plakolli', 'Arif', 'F', '1994-06-25', 'Bajram Curri', '19', '38343889787', 'anjezap32@gmail.com', 'Edukatore'),
(11, 'Artan', 'Meha', 'Pajtim', 'M', '1992-11-11', 'Zahir Pajaziti', '12', '38349999567', 'mehaartan92@gmail.com', 'Inxhinier'),
(12, 'Ensar', 'Hoti', 'Armend', 'M', '1998-09-09', 'Deshmoret e Lirise', '6', '38349677655', 'ensarhh@gmail.com', 'Avokat');


-- workerID integer, workerName varchar(50), workerSurname varchar(50), workerPosition varchar(50), workerAddress varchar(100),
-- workerMunicipality integer, workerPhone varchar(20) unique, workerEmail varchar(50) unique, workerWage real not null,


insert into Punetori
values
(101, 'Albina', 'Hoti', 'Bibliotekane', 'Mbreteresha Teute', '1', '38344768493', 'albinahoti@gmail.com', '400'),
(201, 'Blearta', 'Hajdini', 'Menaxhere e personelit', 'Bill Klinton', '2', '38345876954', 'enahajda@gmail.com', '550'),
(301, 'Gentrit', 'Kabashi', 'Teknik', 'Deshmoret e Kombit ', '5', '38349089019', 'gkabashi@gmail.com', '380'),
(401, 'Besarta', 'Kurtaj', 'Ndihmes-bibliotekane', 'Sami Frasheri ', '3', '38349100200', 'bkurtaj12@gmail.com', '350'),
(501, 'Fiona', 'Hodolli', 'Zyrtare e financave', 'Skenderbeu', '6', '38343521680', 'hodollifiona@gmail.com', '630'),
(601, 'Aurora', 'Veseli', 'Pergjegjese e arkives', 'Aferdita Ukshini', '7', '38346153609', 'aurorav@gmail.com', '600'),
(701, 'Artilon', 'Spahiu', 'Zyrtar i financave', 'Xhelal Hajda-Toni', '5', '38349678504', 'artispahiu@gmail.com', '630'),
(801, 'Melos', 'Shala', 'Bibliotekan', 'Ukshin Hoti', '8', '38345001002', 'mshala1@gmail.com', '400'),
(901, 'Suela', 'Rexha', 'Ndihmes-bibliotekane', 'Adem Jashari', '4', '38344087089', 'rexhas@gmail.com', '350'),
(110, 'Ardit', 'Stublla', 'Teknik', 'Robert Doll', '17', '38349102103', 'arditstublla@gmail.com', '380'),
(111, 'Almedin', 'Ejupi', 'Pergjegjes i arkives', 'Hillary Klinton', '19', '38344204205', 'allmedin3@gmail.com', '600'),
(112, 'Bleron', 'Gashi', 'Drejtor', 'Fan Noli', '2', '38345087086', 'gashibleron@gmail.com', '850');

insert into Autori
values
(601, 'Khaled Hossein', '1965-03-04', 'Afganistan', NULL, '3', ''),
(602, 'Sandra Brown', '1948-03-12', 'ShBA', NULL, '4', ''),
(603, 'George Orwell', '1903-06-25', 'Indi', '1950-01-21', '7', ''),
(604, 'Ismail Kadare', '1936-01-28', 'Shqiperi', NULL, '3', ''),
(605, 'Harper Lee', '1926-04-28', 'ShBA', '2016-02-19', '5', ''),
(606, 'Dan Brown', '1964-06-22', 'ShBA', NULL, '7', ''),
(607, 'Paulo Coelho', '1947-09-24', 'Brazil', NULL, '8', ''),
(608, 'Kristy Moseley', '1985-10-22', 'Angli', NULL, '8', ''),
(609, 'Brunilda Zllami', '1976-05-09', 'Shqiperi', NULL, '11', ''),
(610, 'Nazmi Rrahmani', '1941-11-03', 'Kosove', NULL, '2', ''),
(611, 'Jeronim De Rada', '1814-11-19', 'Itali', '1903-02-28', '15', '');

insert into Zhanri
values
(1, 'Roman'),
(2, 'Novele'),
(3, 'Fantashkence'),
(4, 'Aventure'),
(5, 'Poeme'),
(6, 'Mister'),
(7, 'Romance');


insert into Seksionet
values
(101, '1', 'Femije', '123', '101', '1', 'A'),
(102, '3', 'Te rritur', '542', '201', '1', 'B'),
(103, '4', 'Adoleshente', '221', '301', '1', 'C'),
(201, '1', 'Femije', '43', '401', '2', 'A'),
(202, '3', 'Te rritur', '13', '501', '2', 'B'),
(203, '4', 'Adoleshente', '54', '601', '2', 'C'),
(301, '1', 'Femije', '41', '701', '3', 'A'),
(302, '3', 'Te rritur', '64', '801', '3', 'B'),
(303, '4', 'Adoleshente', '49', '901', '3', 'C'),
(401, '1', 'Femije', '56', '110', '4', 'A'),
(402, '3', 'Te rritur', '29', '111', '4', 'B'),
(403, '4', 'Adoleshente', '13', '112', '4', 'C');



insert into Libri
values
(100, 'Nje mije diej vezullues', 601, '2', '34', '2011-10-31', 101, 'E re', '101'),
(200, 'Mendafshi francez', 602, '7', '22', '2011-04-20', '110', 'E perdorur', '401'),
(300, '1984', 603, '3', '14', '2012-03-12', '112', 'E re', '202'),
(400, 'Prilli i thyer', 604, '2', '15', '2012-06-09', '201', 'E re', 403),
(500, 'Te vrasesh zogun perqeshes', 605, '2', '4', '2013-03-19', '301', 'E perdorur', '101'),
(600, 'Engjej dhe djaj', '606', '6', '3', '2015-07-23', '401', 'E demtuar', '401'),
(700, 'Kodi i Da Vincit', 606, '6', '5', '2014-09-08', '111', 'E re', '202'),
(800, 'Alkimisti', 607, '3', '30', '2014-11-10', '701', 'E perdorur', '201'),
(900, 'Me ty do te prek qiellin', 608, '7', '20', '2015-12-30', '801', 'E re', '101'),
(1000, 'Nuk jam engjell', 609, '1', '17', '2016-09-22', '801', 'E demtuar', '401'),
(1100, 'Malesorja', 610, '1', '12', '2017-10-24', '901', 'E demtuar', '203'),
(1200, 'Kenget e Milosaos', 611, '5', '8', '2013-02-03', '501', 'E perdorur', '101');


insert into Huazimi
values
(210, '100', '1','2020-12-01', '2020-12-16', '101', ''),
(211, '300', '1','2017-10-12', '2017-12-20',  '801', ''),
(212, '1200', '1', '2016-08-15', '2016-09-01', '901', ''),
(213, '200', '1','2019-11-09', '2019-11-26', '401', ''),
(214, '500','1', '2015-12-11', '2015-12-16', '801', ''),
(215, '400','1', '2020-04-23', '2020-05-10', '101', ''),
(216, '800','1', '2017-08-06', '2017-08-21', '901', ''),
(217, '900','1', '2020-05-19', '2020-05-25', '401', ''),
(218, '600','1', '2019-03-21', '2019-03-04', '401', ''),
(219, '1200','1', '2014-01-26', '2014-01-10', '801', ''),
(220, '700','1', '2015-02-13', '2015-02-28', '901', ''),
(221, '1100','1', '2011-07-18', '2011-08-03', '101', '');

insert into arkiva (bookID, readerID, borrowID)
values
('100', '2', '210'),
('300', '3', '211'),
('1200', '1', '212'),
('200', '7', '213'),
('500', '4', '214'),
('400', '10', '215'),
('800', '5', '216'),
('900', '8', '217'),
('600', '6', '218'),
('1200', '11', '219'),
('700', '9', '221'),
('1100', '12', '221');

insert into pagesa (readerID, workerID, billPrice, typeOfPayment)
values
(1, 101, 0.5, 1),
(3, 901, 0.5, 2);

insert into libratdemtuar (bookID, bookRegistrationDate, workerID, billID, damagedRegNotes)
values
('300', '2012-05-12', '801', 1, 'Pakujdesi'),
('600', '2016-01-10', '401', 1, 'Lageshtia'),
('1000', '2018-04-03', '401', 2, 'Pakujdesi'),
('1100', '2019-02-10', '801', 2, 'I humbur');





insert into regjistrimi (registrationDate, billID, registrationLengthDays, registrationActive, typeOfRegistration)
values
('2020-01-20', 1, 365, false, 1),
('2021-03-13', 1, 365, true, 1),
('2015-04-05', 1, 365, true, 2),
('2019-11-12', 1, 365, false, 1),
('2020-12-25', 1, 365, false, 2),
('2014-09-18', 1, 365, false, 1),
('2011-10-12', 1, 365, true, 1),
('2013-07-09', 1, 365, true, 2),
('2019-10-12', 1, 365, false, 1),
('2018-11-23', 1, 365, true, 2),
('2017-06-12', 1, 365, false, 1),
('2013-05-24', 1, 365, true, 1);


insert into dhurimilibrit(bookID, workerID, donationDate)
values
('300', '101', '2014-10-12'),
('600', '401', '2016-07-24'),
('900', '801', '2019-06-08'),
('1200', '901', '2020-12-10');

insert into Vleresimi(bookReviewed, reviewer, reviewLevel)
values
('100', '1', '5.00'),
('200', '2', '4.50'),
('300', '3', '4.00'),
('400', '4', '4.00'),
('500', '5', '5.00'),
('600', '6', '4.70'),
('700', '7', '3.85'),
('800', '8', '3.75'),
('900', '9', '5.00'),
('1000', '10', '4.00'),
('1100', '11', '3.00'),
('1200', '12', '5.00');