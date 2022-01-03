-- Procedure qe i gjen lexueset femra qe jane nxenese

delimiter $$
create procedure nxeneseFemra (in gender enum ('M', 'F'), in occupation varchar(20))
begin 
select lexuesi.readerName as Emri, lexuesi.readerSurname as Mbiemri
from Lexuesi
where readerGender=gender and readerOccupation=occupation;
end $$

call nxeneseFemra('F', 'Nxenese');
