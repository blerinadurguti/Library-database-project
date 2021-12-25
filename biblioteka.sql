drop database if exists biblioteka;
create database if not exists biblioteka;
use biblioteka;

-- 1.
create table if not exists Komuna(
municipalityID integer,
municipalityName varchar(50) unique,
primary key (municipalityID)
);

-- 2.
create table if not exists Lexuesi
(
    readerID         int auto_increment,
    readerName       varchar(50)     not null,
    readerSurname    varchar(50)     not null,
    readerParentName varchar(50)     null,
    readerGender     enum ('M', 'F') not null,
    readerDoB        date            null,
    readerAddress    varchar(100)    null,
    readerMunicipality integer not null,
    readerPhone      varchar(20)     null,
    readerEmail varchar(100),
    readerOccupation varchar(100),
    primary key (readerID),
    foreign key (readerMunicipality) references Komuna(municipalityID)
);

-- 3.
create table if not exists Punetori(
workerID integer,
workerName varchar(50),
workerSurname varchar(50),
workerPosition varchar(50),
workerAddress varchar(100),
workerMunicipality integer,
workerPhone varchar(20) unique,
workerEmail varchar(50) unique,
workerWage real not null,
primary key(workerID),
foreign key(workerMunicipality) references Komuna(municipalityID)
);

-- 4.

create table if not exists Autori(
authorID integer,
authorName varchar(80),
authorDoB date,
authorPoB varchar (50),
authorNumOfWorks integer,
authorWorkEra varchar (50),
authorDoD date,
primary key(authorID)
);

-- 5.

create table if not exists Zhanri
(
    genreID integer,
    genderName varchar(50) unique,
    primary key (genreID)
);

-- 6.
create table if not exists Seksionet(
sectionID integer,
genreID integer,
sectionAgeGroup integer,
sectionNumOfCopies integer,
sectionWorker integer,
sectionFloor integer,
sectionName varchar(20) unique,
primary key(sectionID),
foreign key(genreID) references Zhanri (genreID),
foreign key(sectionWorker) references Punetori(workerID)
);

-- 7.
create table if not exists Libri (
bookID integer,
bookTitle varchar(30),
bookAuthor integer,
bookGenre integer,
bookNumOfCopies integer,
bookAcceptanceDate date,
bookAcceptedByWorker integer,
bookCondition enum ('E re', 'E perdorur', 'E demtuar'),
bookSection integer,
primary key (bookID),
foreign key(bookAuthor) references Autori(authorID),
foreign key(bookGenre) references Zhanri(genreID),
foreign key (bookAcceptedByWorker) references Punetori (workerID),
foreign key (bookSection) references Seksionet(sectionID)
);

-- 8.
create table if not exists Huazimi(
borrowID integer,
borrowedBookID integer,
readerID integer,
borrowDate date,
returnDate date,
workerID integer,
borrowNotes varchar(100),
primary key(borrowID),
foreign key(borrowedBookID) references Libri(bookID),
foreign key(readerID) references Lexuesi(readerID),
foreign key(workerID) references Punetori(workerID)
);

-- 9.
create table if not exists Arkiva
(
    logID integer,
    bookID integer,
    readerID integer,
    borrowID integer,
    returnedAfter integer,
    primary key(logID),
    foreign key(bookID) references Libri(bookID),
    foreign key (readerID) references Lexuesi(readerID),
    foreign key (borrowID) references Huazimi (borrowID)
);

-- 10.
create table if not exists Pagesa
(
    paymentID integer,
    readerID integer,
    workerID integer,
    billPrice real,
    typeOfPayment enum('Registration', 'Damaging fees'),
    primary key (paymentID),
    foreign key (readerID) references Lexuesi (readerID),
    foreign key (workerID) references Punetori (workerID)
);

-- 11.
create table if not exists LibratDemtuar
(
    damagedBookID integer,
    bookID integer,
    bookRegistrationDate date,
    workerID integer,
    billID integer,
    damagedRegNotes varchar(80),
    primary key(damagedBookID),
    foreign key(bookID) references Libri(bookID),
    foreign key(workerID) references Punetori(workerID),
    foreign key(billID) references Pagesa(paymentID)
);

-- 12.
create table if not exists Regjistrimi
(
    registrationID integer,
    registrationDate date,
    billID integer,
    registrationLengthDays integer,
    registrationActive bool,
    primary key(registrationID),
    foreign key(billID) references Pagesa(paymentID)
);

-- 13.
create table if not exists DhurimiLibrit(
    donationID integer,
    bookID integer,
    workerID integer,
    donationDate date,
    primary key (donationID),
    foreign key(bookID) references Libri (bookID),
    foreign key(workerID) references Punetori(workerID)
);

-- 14.
create table if not exists Vleresimi
(
    reviewID integer,
    bookReviewed integer,
    reviewer integer,
    reviewLevel real,
    reviewNotes varchar(100),
    primary key(reviewID),
    foreign key(bookReviewed) references Libri (bookID),
    foreign key (reviewer) references Lexuesi (readerID)
);
