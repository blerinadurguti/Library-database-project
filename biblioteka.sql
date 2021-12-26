use biblioteka;
SET FOREIGN_KEY_CHECKS=0;
drop table if exists arkiva;
drop table if exists dhurimilibrit;
drop table if exists huazimi;
drop table if exists libratdemtuar;
drop table if exists regjistrimi;
drop table if exists pagesa;
drop table if exists vleresimi;
drop table if exists lexuesi;
drop table if exists libri;
drop table if exists autori;
drop table if exists seksionet;
drop table if exists punetori;
drop table if exists komuna;
drop table if exists zhanri;
SET FOREIGN_KEY_CHECKS=1;

-- 1.
create table if not exists Komuna(
municipalityID integer not null,
municipalityName varchar(50) unique not null,
primary key (municipalityID)
);

create table if not exists Titulli
(
    positionID integer not null AUTO_INCREMENT,
    positionName varchar(100),
    wage real not null,
    primary key(positionID),
    CONSTRAINT CHK_WAGE CHECK (wage >= 270)
);

-- 2.
create table if not exists Lexuesi
(
    readerID         integer auto_increment not null,
    readerName       varchar(50)     not null,
    readerSurname    varchar(50)     not null,
    readerParentName varchar(50)     null,
    readerGender     enum ('M', 'F') not null,
    readerDoB        date            null,
    readerAddress    varchar(100)    null,
    readerMunicipality integer null,
    readerPhone      varchar(20)     null,
    readerEmail      varchar(100),
    readerOccupation varchar(100),
    readerRegistration integer,
    primary key (readerID),
    foreign key (readerMunicipality) references Komuna(municipalityID) on delete restrict on update cascade
);

alter table Lexuesi AUTO_INCREMENT = 10;

-- 3.
create table if not exists Punetori(
workerID integer auto_increment not null,
workerName varchar(50),
workerSurname varchar(50),
workerAddress varchar(100),
workerMunicipality integer,
workerPhone varchar(20) unique,
workerEmail varchar(50) unique,
workerPosition integer,
primary key(workerID),
foreign key(workerMunicipality) references Komuna(municipalityID) on delete restrict on update cascade,
foreign key(workerPosition) references Titulli(positionID) on delete restrict on update cascade
);
alter table Punetori AUTO_INCREMENT = 20;

-- 4.
create table if not exists Autori(
authorID integer auto_increment not null ,
authorName varchar(80),
authorDoB date,
authorPoB varchar (50),
authorDoD date,
authorNumOfWorks integer,
authorWorkEra varchar (50),
primary key(authorID)
);
alter table Autori AUTO_INCREMENT = 30;

-- 5.
create table if not exists Zhanri
(
    genreID integer auto_increment not null,
    genreName varchar(50) unique,
    primary key (genreID)
);
alter table Zhanri AUTO_INCREMENT = 40;

-- 6.
create table if not exists Seksionet(
sectionID integer auto_increment not null ,
genreID integer,
sectionAgeGroup varchar(25),
sectionNumOfCopies integer,
sectionWorker integer,
sectionFloor integer,
sectionName varchar(20),
primary key(sectionID),
foreign key(genreID) references Zhanri (genreID) on delete set null on update cascade,
foreign key(sectionWorker) references Punetori(workerID) on delete set null on update cascade
);
alter table Seksionet AUTO_INCREMENT = 50;


-- 7.
create table if not exists Libri (
bookID integer auto_increment not null,
bookTitle varchar(30),
bookAuthor integer,
bookGenre integer,
bookNumOfCopies integer,
bookAcceptanceDate date,
bookAcceptedByWorker integer,
bookCondition enum ('E re', 'E perdorur', 'E demtuar'),
bookSection integer,
primary key (bookID),
foreign key(bookAuthor) references Autori(authorID) on delete restrict on update cascade,
foreign key(bookGenre) references Zhanri(genreID) on delete set null on update cascade,
foreign key (bookAcceptedByWorker) references Punetori (workerID) on delete set null on update cascade,
foreign key (bookSection) references Seksionet(sectionID) on delete set null on update cascade
);
alter table Libri AUTO_INCREMENT = 60;

-- 8.
create table if not exists Huazimi(
borrowID integer auto_increment not null,
borrowedBookID integer,
readerID integer,
borrowDate date,
returnDate date,
workerID integer,
borrowNotes varchar(100),
primary key(borrowID),
foreign key(borrowedBookID) references Libri(bookID) on delete cascade on update cascade,
foreign key(readerID) references Lexuesi(readerID) on delete set null on update cascade,
foreign key(workerID) references Punetori(workerID) on delete set null on update cascade
);
alter table Huazimi AUTO_INCREMENT = 70;

-- 9.

create table if not exists Arkiva
(
    logID integer not null AUTO_INCREMENT,
    bookID integer,
    readerID integer,
    borrowID integer,
    returnedAfter integer default null,
    primary key(logID),
    foreign key(bookID) references Libri(bookID) on delete cascade on update cascade,
    foreign key (readerID) references Lexuesi(readerID) on delete set null on update cascade,
    foreign key (borrowID) references Huazimi (borrowID) on delete cascade on update cascade
);
alter table Arkiva AUTO_INCREMENT = 80;

-- 10.
create table if not exists Pagesa
(
    paymentID integer not null AUTO_INCREMENT,
    workerID integer,
    billPrice real,
    typeOfPayment enum('Registration', 'Damaging fees'),
    primary key (paymentID),
    foreign key (workerID) references Punetori (workerID) on delete set null on update cascade
);
alter table pagesa AUTO_INCREMENT = 90;


drop table if exists LibratDemtuar;
-- 11.
create table if not exists LibratDemtuar
(
    damagedBookID integer not null AUTO_INCREMENT,
    bookID integer,
    bookRegistrationDate date,
    workerID integer,
    billID integer,
    damagedRegNotes varchar(80),
    readerID integer,
    primary key(damagedBookID),
    foreign key(bookID) references Libri(bookID) on delete cascade on update cascade,
    foreign key(readerID) references Lexuesi(readerID) on delete set null on update cascade,
    foreign key(workerID) references Punetori(workerID) on delete set null on update cascade,
    foreign key(billID) references Pagesa(paymentID) on delete restrict on update cascade
);
alter table LibratDemtuar AUTO_INCREMENT = 100;

-- 12.
create table if not exists Regjistrimi
(
    registrationID integer not null AUTO_INCREMENT,
    registrationDate date,
    billID integer,
    registrationLengthDays integer,
    registrationActive bool,
    typeOfRegistration enum('Anetare', 'Lexues'),
    primary key(registrationID),
    foreign key(billID) references Pagesa(paymentID) on delete restrict on update cascade
);

alter table Lexuesi add foreign key (readerRegistration) references Regjistrimi(registrationID) on delete set null on update cascade;


alter table Regjistrimi AUTO_INCREMENT = 110;

-- 13.
create table if not exists DhurimiLibrit(
    donationID integer not null AUTO_INCREMENT,
    bookID integer,
    workerID integer,
    donationDate date,
    primary key (donationID),
    foreign key(bookID) references Libri (bookID) on delete set null on update cascade,
    foreign key(workerID) references Punetori(workerID) on delete set null on update cascade
);
alter table DhurimiLibrit AUTO_INCREMENT = 120;


-- 14.
create table if not exists Vleresimi
(
    reviewID integer not null AUTO_INCREMENT,
    bookReviewed integer,
    reviewer integer,
    reviewLevel real,
    reviewNotes varchar(100),
    primary key(reviewID),
    foreign key(bookReviewed) references Libri (bookID) on delete cascade on update cascade,
    foreign key (reviewer) references Lexuesi (readerID) on delete set null on update cascade,
    CONSTRAINT CHK_Review CHECK (reviewLevel>=1.0 AND reviewLevel <= 5.0)
);
alter table Vleresimi AUTO_INCREMENT = 130;