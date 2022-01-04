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

insert into titulli (positionName, wage)
values ('Biblotekan', 270),
       ('Menaxher i personelit', 550),
       ('Teknik', 380),
       ('Ndihmes-bibliotekan', 350),
       ('Pergjegjes arkives', 600),
       ('Drejtor', 900),
       ('Zyrtari financave', 630);

insert into Zhanri(genreName)
values ('Roman'),
       ('Novele'),
       ('Fantashkence'),
       ('Aventure'),
       ('Poeme'),
       ('Mister'),
       ('Romance');


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

alter table
    Libri
    AUTO_INCREMENT = 60;

UPDATE Lexuesi
SET biblioteka.Lexuesi.FavGenre = (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1)
where 1 = 1;

-- when inserting a reader, triggers are run to make a new record in registration and payment table

INSERT INTO biblioteka.lexuesi (readerName, readerSurname, readerGender,
                                 readerEmail)
VALUES ('Adnit', 'Kamberi', 'M', 'adnitk01@gmail.com');

-- when borrowing a book, triggers are run to make a new record arkiva and update number of copies in book table




-- when a book is damaged, triggers are run to make a new record in payment

-- when a payment is made, triggers are run to update their respective fields,
-- for ex. when registration is paid regDate is set on current date and registration is set to active

UPDATE pagesa SET
    billTime = current_timestamp,
    workerID = (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1),
    billPrice = 2.5
    WHERE paymentID = 90;

-- or when u pay for a damaged book it updates the record for a damaged book to reference it's payment
