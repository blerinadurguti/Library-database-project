-- Paraqit pagesat e kryera per regjistrim

create view paraqitPagesat as
select paymentID, billPrice
from Pagesa where typeOfPayment like 'Registration';

select * from paraqitPagesat;

-- Paraqit librat e demtuar nga pakujdesia

create view LibratEDemtuar as
select bookID, damagedRegNotes
from libratdemtuar where damagedRegNotes like 'Pakujdesi';

select * from LibratEDemtuar;

-- Paraqit librat e dhuruar me 10 Dhjetor

create view LibriDhuruar as
select bookID, donationDate 
from dhurimilibrit where donationDate like '2020-12-10';

select * from LibriDhuruar;

-- Lexuesit qe jane nga Prishtina dhe jane studente

create view Studentet_e_Kryeqytetit as
select readerID, readerName, readerSurname
from Lexuesi
where readerMunicipality ='1'
and readerOccupation ='Student';

select * from Studentet_e_Kryeqytetit;

-- Paraqit lexuesit qe kane vleresuar nje liber te caktuar me 4.50

create view vlereso as
select vleresimi.bookReviewed, vleresimi.reviewer, vleresimi.reviewLevel, lexuesi.readerID, lexuesi.readerName, lexuesi.readerSurname
from Vleresimi
inner join Lexuesi
on vleresimi.reviewer=lexuesi.readerID
where reviewLevel='4.50';

select * from vlereso;
