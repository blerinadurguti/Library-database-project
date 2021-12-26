use biblioteka;

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

insert into lexuesi (readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress,
                     readerMunicipality, readerPhone, readerEmail, readerOccupation)
values ('Art', 'Tmava', 'Selim', 'M', '2002-02-11', 'William Walker', '1', '38349123456', 'atmava@gmail.com',
        'Student');
SET @reader = (SELECT LAST_INSERT_ID());
insert into regjistrimi (registrationDate, registrationLengthDays, registrationActive, typeOfRegistration)
values ('2020-12-26', 365, true, 1);
SET @regjistrimi = (SELECT LAST_INSERT_ID());
insert into pagesa (workerID, billPrice, typeOfPayment)
values (20, 0.5, 1);
update regjistrimi
set billID = (SELECT LAST_INSERT_ID())
where registrationID = @regjistrimi;
update lexuesi
set readerRegistration = @regjistrimi
where readerID = @reader;

insert into lexuesi (readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress,
                     readerMunicipality, readerPhone, readerEmail, readerOccupation)
values ('Era', 'Hajdari', 'Ismajl', 'F', '2000-04-03', 'Bill Klinton', '1', '38344321546', 'eahajda@gmail.com',
        'Mesuese');
SET @reader = (SELECT LAST_INSERT_ID());
insert into regjistrimi (registrationDate, registrationLengthDays, registrationActive, typeOfRegistration)
values ('2019-11-22', 365, true, 1);
SET @regjistrimi = (SELECT LAST_INSERT_ID());
insert into pagesa (workerID, billPrice, typeOfPayment)
values (21, 0.5, 1);
update regjistrimi
set billID = (SELECT LAST_INSERT_ID())
where registrationID = @regjistrimi;
update lexuesi
set readerRegistration = @regjistrimi
where readerID = @reader;

select @regjistrimi;

select * from regjistrimi;
select *
from lexuesi;


insert into lexuesi (readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress,
                     readerMunicipality, readerPhone, readerEmail, readerOccupation)
values ('Dren', 'Shehu', 'Safet', 'M', '2001-01-17', 'Ismail Kodra', '5', '38346768143', 'drensh1@gmail.com',
        'Student');
SET @reader = (SELECT LAST_INSERT_ID());
insert into regjistrimi (registrationDate, registrationLengthDays, registrationActive, typeOfRegistration)
values ('2019-5-6', 365, true, 1);
SET @regjistrimi = (SELECT LAST_INSERT_ID());
insert into pagesa (workerID, billPrice, typeOfPayment)
values (22, 0.5, 1);
update regjistrimi
set billID = (SELECT LAST_INSERT_ID())
where registrationID = @regjistrimi;
update lexuesi
set readerRegistration = @regjistrimi
where readerID = @reader;


insert into lexuesi (readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress,
                     readerMunicipality, readerPhone, readerEmail, readerOccupation)
values ('Dimal', 'Kryeziu', 'Smajl', 'M', '2000-11-05', 'Sami Frasheri', '7', '38345879687', 'dkryeziu13@gmail.com',
        'Student');
SET @reader = (SELECT LAST_INSERT_ID());

insert into regjistrimi (registrationDate, registrationLengthDays, registrationActive, typeOfRegistration)
values (CURDATE(), 365, true, 1);
SET @regjistrimi = (SELECT LAST_INSERT_ID());
insert into pagesa (workerID, billPrice, typeOfPayment)
values (23, 0.5, 1);
update regjistrimi
set billID = (SELECT LAST_INSERT_ID())
where registrationID = @regjistrimi;
update lexuesi
set readerRegistration = @regjistrimi
where readerID = @reader;


insert into lexuesi (readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress,
                     readerMunicipality, readerPhone, readerEmail, readerOccupation)
values ('Fjolla', 'Korenica', 'Hamez', 'F', '2004-07-30', '4 Llullat', '9', '38349871220', 'fjollak@gmail.com',
        'Nxenese');
SET @reader = (SELECT LAST_INSERT_ID());

insert into regjistrimi (registrationDate, registrationLengthDays, registrationActive, typeOfRegistration)
values (CURDATE(), 365, true, 1);
SET @regjistrimi = (SELECT LAST_INSERT_ID());
insert into pagesa (workerID, billPrice, typeOfPayment)
values (24, 0.5, 1);
update regjistrimi
set billID = (SELECT LAST_INSERT_ID())
where registrationID = @regjistrimi;
update lexuesi
set readerRegistration = @regjistrimi
where readerID = @reader;


insert into lexuesi (readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress,
                     readerMunicipality, readerPhone, readerEmail, readerOccupation)
values ('Aulona', 'Berisha', 'Kadri', 'F', '2003-05-04', 'Aleksandri i Madh', '11', '38344657881',
        'aulonab32@gmail.com', 'Nxenese');
SET @reader = (SELECT LAST_INSERT_ID());

insert into regjistrimi (registrationDate, registrationLengthDays, registrationActive, typeOfRegistration)
values (CURDATE(), 365, true, 1);
SET @regjistrimi = (SELECT LAST_INSERT_ID());
insert into pagesa (workerID, billPrice, typeOfPayment)
values (25, 0.5, 1);
update regjistrimi
set billID = (SELECT LAST_INSERT_ID())
where registrationID = @regjistrimi;
update lexuesi
set readerRegistration = @regjistrimi
where readerID = @reader;



insert into lexuesi (readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress,
                     readerMunicipality, readerPhone, readerEmail, readerOccupation)
values ('Drenusha', 'Selimi', 'Selman', 'F', '2002-10-22', 'Bekim Isma', '13', '38349555342', 'ds11@gmail.com',
        'Studente');
SET @reader = (SELECT LAST_INSERT_ID());

insert into regjistrimi (registrationDate, registrationLengthDays, registrationActive, typeOfRegistration)
values (CURDATE(), 365, true, 1);
SET @regjistrimi = (SELECT LAST_INSERT_ID());
insert into pagesa (workerID, billPrice, typeOfPayment)
values (21, 0.5, 1);
update regjistrimi
set billID = (SELECT LAST_INSERT_ID())
where registrationID = @regjistrimi;
update lexuesi
set readerRegistration = @regjistrimi
where readerID = @reader;

insert into lexuesi (readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress,
                     readerMunicipality, readerPhone, readerEmail, readerOccupation)
values ('Melos', 'Elshani', 'Xhevdet', 'M', '1995-12-05', 'Ukshin Hoti', '15', '38346332123', 'eoselshani@gmail.com',
        'Profesor');
SET @reader = (SELECT LAST_INSERT_ID());
insert into regjistrimi (registrationDate, registrationLengthDays, registrationActive, typeOfRegistration)
values (CURDATE(), 365, true, 1);
SET @regjistrimi = (SELECT LAST_INSERT_ID());
insert into pagesa (workerID, billPrice, typeOfPayment)
values (27, 0.5, 1);
update regjistrimi
set billID = (SELECT LAST_INSERT_ID())
where registrationID = @regjistrimi;
update lexuesi
set readerRegistration = @regjistrimi
where readerID = @reader;

insert into lexuesi (readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress,
                     readerMunicipality, readerPhone, readerEmail, readerOccupation)
values ('Klea', 'Dina', 'Albin', 'F', '1990-04-04', 'Isa Boletini', '17', '38349678555', 'dinaklea@gmail.com', 'Mjeke');
SET @reader = (SELECT LAST_INSERT_ID());

insert into regjistrimi (registrationDate, registrationLengthDays, registrationActive, typeOfRegistration)
values (CURDATE(), 365, true, 1);
SET @regjistrimi = (SELECT LAST_INSERT_ID());
insert into pagesa (workerID, billPrice, typeOfPayment)
values (25, 0.5, 1);

update regjistrimi
set billID = (SELECT LAST_INSERT_ID())
where registrationID = @regjistrimi;
update lexuesi
set readerRegistration = @regjistrimi
where readerID = @reader;

insert into lexuesi (readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress,
                     readerMunicipality, readerPhone, readerEmail, readerOccupation)
values ('Anjeza', 'Plakolli', 'Arif', 'F', '1994-06-25', 'Bajram Curri', '19', '38343889787', 'anjezap32@gmail.com',
        'Edukatore');
SET @reader = (SELECT LAST_INSERT_ID());

insert into regjistrimi (registrationDate, registrationLengthDays, registrationActive, typeOfRegistration)
values (CURDATE(), 365, true, 1);
SET @regjistrimi = (SELECT LAST_INSERT_ID());
insert into pagesa (workerID, billPrice, typeOfPayment)
values (29, 0.5, 1);
update regjistrimi
set billID = (SELECT LAST_INSERT_ID())
where registrationID = @regjistrimi;
update lexuesi
set readerRegistration = @regjistrimi
where readerID = @reader;


insert into lexuesi (readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress,
                     readerMunicipality, readerPhone, readerEmail, readerOccupation)
values ('Artan', 'Meha', 'Pajtim', 'M', '1992-11-11', 'Zahir Pajaziti', '12', '38349999567', 'mehaartan92@gmail.com',
        'Inxhinier');
SET @reader = (SELECT LAST_INSERT_ID());
insert into regjistrimi (registrationDate, registrationLengthDays, registrationActive, typeOfRegistration)
values (CURDATE(), 365, true, 1);
SET @regjistrimi = (SELECT LAST_INSERT_ID());
insert into pagesa (workerID, billPrice, typeOfPayment)
values (30, 0.5, 1);
update regjistrimi
set billID = (SELECT LAST_INSERT_ID())
where registrationID = @regjistrimi;
update lexuesi
set readerRegistration = @regjistrimi
where readerID = @reader;


insert into lexuesi (readerName, readerSurname, readerParentName, readerGender, readerDoB, readerAddress,
                     readerMunicipality, readerPhone, readerEmail, readerOccupation)
values ('Ensar', 'Hoti', 'Armend', 'M', '1998-09-09', 'Deshmoret e Lirise', '6', '38349677655', 'ensarhh@gmail.com',
        'Avokat');
SET @reader = (SELECT LAST_INSERT_ID());
insert into regjistrimi (registrationDate, registrationLengthDays, registrationActive, typeOfRegistration)
values (CURDATE(), 365, true, 1);
SET @regjistrimi = (SELECT LAST_INSERT_ID());
insert into pagesa (workerID, billPrice, typeOfPayment)
values (28, 0.5, 1);
update regjistrimi
set billID = (SELECT LAST_INSERT_ID())
where registrationID = @regjistrimi;

update lexuesi
set readerRegistration = @regjistrimi
where readerID = @reader;
