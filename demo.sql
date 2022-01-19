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
values ('Albina', 'Hoti', 'Mbreteresha Teute', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38344768493', 'albinahoti@gmail.com', (SELECT positionID FROM titulli ORDER BY RAND() LIMIT 0,1)),
       ('Blearta', 'Hajdini', 'Bill Klinton', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38345876954', 'enahajda@gmail.com', (SELECT positionID FROM titulli ORDER BY RAND() LIMIT 0,1)),
       ('Gentrit', 'Kabashi', 'Deshmoret e Kombit ', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38349089019', 'gkabashi@gmail.com', (SELECT positionID FROM titulli ORDER BY RAND() LIMIT 0,1)),
       ('Besarta', 'Kurtaj', 'Sami Frasheri ', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38349100200', 'bkurtaj12@gmail.com', (SELECT positionID FROM titulli ORDER BY RAND() LIMIT 0,1)),
       ('Fiona', 'Hodolli', 'Skenderbeu', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38343521680', 'hodollifiona@gmail.com', (SELECT positionID FROM titulli ORDER BY RAND() LIMIT 0,1)),
       ('Aurora', 'Veseli', 'Aferdita Ukshini', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38346153609', 'aurorav@gmail.com', (SELECT positionID FROM titulli ORDER BY RAND() LIMIT 0,1)),
       ('Artilon', 'Spahiu', 'Xhelal Hajda-Toni', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38349678504', 'artispahiu@gmail.com', (SELECT positionID FROM titulli ORDER BY RAND() LIMIT 0,1)),
       ('Melos', 'Shala', 'Ukshin Hoti', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38345001002', 'mshala1@gmail.com', (SELECT positionID FROM titulli ORDER BY RAND() LIMIT 0,1)),
       ('Suela', 'Rexha', 'Adem Jashari', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38344087089', 'rexhas@gmail.com', (SELECT positionID FROM titulli ORDER BY RAND() LIMIT 0,1)),
       ('Ardit', 'Stublla', 'Robert Doll', '17', '38349102103', 'arditstublla@gmail.com', (SELECT positionID FROM titulli ORDER BY RAND() LIMIT 0,1)),
       ('Almedin', 'Ejupi', 'Hillary Klinton', '19', '38344204205', 'allmedin3@gmail.com', (SELECT positionID FROM titulli ORDER BY RAND() LIMIT 0,1)),
       ('Bleron', 'Gashi', 'Fan Noli', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38345087086', 'gashibleron@gmail.com', (SELECT positionID FROM titulli ORDER BY RAND() LIMIT 0,1)),
       ('Adnit', 'Gashi', 'Fan Noli', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38345087085', 'adnitgashi@gmail.com', (SELECT positionID FROM titulli ORDER BY RAND() LIMIT 0,1));

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

insert into lexuesi (readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress, readerMunicipality, readerPhone, readerEmail, readerOccupation, FavGenre)
values  ('Art', 'Tmava', 'Selim', 'M', '2002-02-11', 'William Walker', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38349123456', 'atmava@gmail.com', 'Student', (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1)),
        ('Era', 'Hajdari', 'Ismajl', 'F', '2000-04-03', 'Bill Klinton', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38344321546', 'eahajda@gmail.com', 'Mesuese', (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1)),
        ('Dren', 'Shehu', 'Safet', 'M', '2001-01-17', 'Ismail Kodra', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38346768143', 'drensh1@gmail.com', 'Student', (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1)),
        ('Dimal', 'Kryeziu', 'Smajl', 'M', '2000-11-05', 'Sami Frasheri', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38345879687', 'dkryeziu13@gmail.com', 'Student', (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1)),
        ('Fjolla', 'Korenica', 'Hamez', 'F', '2004-07-30', '4 Llullat', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38349871220', 'fjollak@gmail.com', 'Nxenese', (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1)),
        ('Aulona', 'Berisha', 'Kadri', 'F', '2003-05-04', 'Aleksandri i Madh', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38344657881', 'aulonab32@gmail.com', 'Nxenese', (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1)),
        ('Drenusha', 'Selimi', 'Selman', 'F', '2002-10-22', 'Bekim Isma', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38349555342', 'ds11@gmail.com', 'Studente', (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1)),
        ('Melos', 'Elshani', 'Xhevdet', 'M', '1995-12-05', 'Ukshin Hoti', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38346332123', 'eoselshani@gmail.com', 'Profesor', (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1)),
        ('Klea', 'Dina', 'Albin', 'F', '1990-04-04', 'Isa Boletini', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38349678555', 'dinaklea@gmail.com', 'Mjeke', (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1)),
        ('Anjeza', 'Plakolli', 'Arif', 'F', '1994-06-25', 'Bajram Curri', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38343889787', 'anjezap32@gmail.com', 'Edukatore', (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1)),
        ('Artan', 'Meha', 'Pajtim', 'M', '1992-11-11', 'Zahir Pajaziti', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38349999567', 'mehaartan92@gmail.com', 'Inxhinier', (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1)),
        ('Ensar', 'Hoti', 'Armend', 'M', '1998-09-09', 'Deshmoret e Lirise', (SELECT municipalityID FROM komuna ORDER BY RAND() LIMIT 0,1), '38349677655', 'ensarhh@gmail.com', 'Avokat', (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1));

-- SIMULIM I PAGESAVE ME DATA RANDOM DHE PAGESAT BEHEN NGA RANDOM LEXUES

update pagesa p1
set p1.billPrice = 2.5,
    p1.billTime = subdate(current_time, (SELECT FLOOR(RAND()*(400-1+1))+1)),
    p1.readerID = (SELECT readerID from lexuesi order by RAND() LIMIT 0,1),
    p1.workerID = (SELECT workerID from punetori order by RAND() LIMIT 0,1)
where typeOfPayment = 'Registration';

insert into seksionet (genreID, sectionAgeGroup, sectionWorker, sectionFloor, sectionName)
values ((SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), 'Femije', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), '1', 'A'),
       ((SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), 'Te rritur', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), '1', 'B'),
       ((SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), 'Adoleshente', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), '1', 'C'),
       ((SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), 'Femije', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), '2', 'A'),
       ((SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), 'Te rritur', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), '2', 'B'),
       ((SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), 'Adoleshente', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), '2', 'C'),
       ((SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), 'Femije', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), '3', 'A'),
       ((SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), 'Te rritur', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), '3', 'B'),
       ((SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), 'Adoleshente', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), '3', 'C'),
       ((SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), 'Femije', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), '4', 'A'),
       ((SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), 'Te rritur', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), '4', 'B'),
       ((SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), 'Adoleshente', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), '4', 'C');


insert into libri (bookTitle, bookAuthor, bookGenre, bookNumOfCopies, bookAcceptanceDate, bookAcceptedByWorker,
                   bookCondition, bookSection)
values ('Nje mije diej vezullues', 30, (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), (SELECT FLOOR(RAND()*(50-5+1))+5), '2011-10-31', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), 'E re', (select sectionID from seksionet ORDER BY RAND() LIMIT 0,1)),
       ('Mendafshi francez', 31, (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), (SELECT FLOOR(RAND()*(50-5+1))+5), '2011-04-20', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), 'E perdorur', (select sectionID from seksionet ORDER BY RAND() LIMIT 0,1)),
       ('1984', 32, (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), (SELECT FLOOR(RAND()*(50-5+1))+5), '2012-03-12', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), 'E re', (select sectionID from seksionet ORDER BY RAND() LIMIT 0,1)),
       ('Prilli i thyer', 33, (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), (SELECT FLOOR(RAND()*(50-5+1))+5), '2012-06-09', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), 'E re', (select sectionID from seksionet ORDER BY RAND() LIMIT 0,1)),
       ('Te vrasesh zogun perqeshes', 34, (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), (SELECT FLOOR(RAND()*(50-5+1))+5), '2013-03-19', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), 'E perdorur', (select sectionID from seksionet ORDER BY RAND() LIMIT 0,1)),
       ('Engjej dhe djaj', 35, (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), (SELECT FLOOR(RAND()*(50-5+1))+5), '2015-07-23', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), 'E demtuar', (select sectionID from seksionet ORDER BY RAND() LIMIT 0,1)),
       ('Kodi i Da Vincit', 35, (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), (SELECT FLOOR(RAND()*(50-5+1))+5), '2014-09-08', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), 'E re', (select sectionID from seksionet ORDER BY RAND() LIMIT 0,1)),
       ('Alkimisti', 36, (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), (SELECT FLOOR(RAND()*(50-5+1))+5), '2014-11-10', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), 'E perdorur', (select sectionID from seksionet ORDER BY RAND() LIMIT 0,1)),
       ('Me ty do te prek qiellin', 37, (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), (SELECT FLOOR(RAND()*(50-5+1))+5), '2015-12-30', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), 'E re', (select sectionID from seksionet ORDER BY RAND() LIMIT 0,1)),
       ('Nuk jam engjell', 38, (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), (SELECT FLOOR(RAND()*(50-5+1))+5), '2016-09-22', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), 'E demtuar', (select sectionID from seksionet ORDER BY RAND() LIMIT 0,1)),
       ('Malesorja', 39, (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), (SELECT FLOOR(RAND()*(50-5+1))+5), '2017-10-24', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), 'E demtuar', (select sectionID from seksionet ORDER BY RAND() LIMIT 0,1)),
       ('Kenget e Milosaos', 40, (SELECT genreID FROM zhanri ORDER BY RAND() LIMIT 0,1), (SELECT FLOOR(RAND()*(50-5+1))+5), '2013-02-03', (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), 'E perdorur', (select sectionID from seksionet ORDER BY RAND() LIMIT 0,1));



SET @bookID = (select bookID from libri order by bookID asc limit 1);
set @numofbooks = (select count(*) from libri);

select @bookID;

select *
from huazimi;



insert into huazimi (borrowedBookID, readerID, borrowDate, workerID)
values ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1), subdate(curdate(), (SELECT FLOOR(RAND()*(50-2+1))+2)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1)),
       ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1), subdate(curdate(), (SELECT FLOOR(RAND()*(50-2+1))+2)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1)),
       ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1), subdate(curdate(), (SELECT FLOOR(RAND()*(50-2+1))+2)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1)),
       ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1), subdate(curdate(), (SELECT FLOOR(RAND()*(50-2+1))+2)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1)),
       ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1), subdate(curdate(), (SELECT FLOOR(RAND()*(50-2+1))+2)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1)),
       ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1), subdate(curdate(), (SELECT FLOOR(RAND()*(50-2+1))+2)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1)),
       ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1), subdate(curdate(), (SELECT FLOOR(RAND()*(50-2+1))+2)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1)),
       ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1), subdate(curdate(), (SELECT FLOOR(RAND()*(50-2+1))+2)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1)),
       ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1), subdate(curdate(), (SELECT FLOOR(RAND()*(50-2+1))+2)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1)),
       ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1), subdate(curdate(), (SELECT FLOOR(RAND()*(50-2+1))+2)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1)),
       ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1), subdate(curdate(), (SELECT FLOOR(RAND()*(50-2+1))+2)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1));


UPDATE huazimi h1
inner join huazimi h2 on h1.borrowID = h2.borrowID
set h1.returnDate = adddate(h1.borrowDate, (SELECT FLOOR(RAND()*(20-3+1))+3))
where true;


insert into libratdemtuar (bookID, bookDamagedDate, workerID, readerID)
values ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), subdate(current_date, (SELECT FLOOR(RAND()*(20-3+1))+3)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1)),
       ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), subdate(current_date, (SELECT FLOOR(RAND()*(20-3+1))+3)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1)),
       ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), subdate(current_date, (SELECT FLOOR(RAND()*(20-3+1))+3)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1)),
       ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), subdate(current_date, (SELECT FLOOR(RAND()*(20-3+1))+3)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1)),
       ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), subdate(current_date, (SELECT FLOOR(RAND()*(20-3+1))+3)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1)),
       ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), subdate(current_date, (SELECT FLOOR(RAND()*(20-3+1))+3)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1)),
       ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), subdate(current_date, (SELECT FLOOR(RAND()*(20-3+1))+3)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1)),
       ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), subdate(current_date, (SELECT FLOOR(RAND()*(20-3+1))+3)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), (SELECT readerID FROM lexuesi ORDER BY RAND() LIMIT 0,1));


update pagesa
set billPrice = 10.0,
    billTime = current_time
where true;


insert into dhurimilibrit (bookID, workerID, donationDate)
values ((select @bookID + (SELECT FLOOR(RAND()*((select @numofbooks)-1))+1)), (SELECT workerID FROM punetori ORDER BY RAND() LIMIT 0,1), current_date);

