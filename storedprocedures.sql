-- Shembull 1

-- Procedure qe i gjen lexueset femra qe jane nxenese

delimiter $$
create procedure nxeneseFemra (in gender enum ('M', 'F'), in occupation varchar(20))
begin 
select lexuesi.readerName as Emri, lexuesi.readerSurname as Mbiemri
from Lexuesi
where readerGender=gender and readerOccupation=occupation;
end $$

call nxeneseFemra('F', 'Nxenese');


-- Shembull 2

-- Procedure qe tregon se libri eshte i ri dhe
-- eshte huazur me 12 tetor

delimiter $$
create procedure libri_iri()
begin

select distinct borrowedBookID, borrowDate, bookTitle, bookCondition
from Huazimi, Libri
where huazimi.borrowedBookID=libri.bookID
and libri.bookCondition='E re' and huazimi.borrowDate='2021-10-12';
end $$
delimiter $$

call libri_iri();

-- Shembull 3

-- Procedure qe gjen librat e shkruar nga Dan Brown

delimiter $$
create procedure librateDanBrown()
begin
select distinct bookID, bookTitle, bookAuthor
from Libri, Autori
where libri.bookAuthor=autori.authorID 
and autori.authorName='Dan Brown';
end $$
delimiter $$

call librateDanBrown();
