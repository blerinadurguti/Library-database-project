use biblioteka;

-- 1. Listoni të gjithë lexuesit që janë nga qyteti i Prishtinës.
select l.readerID, l.readerName as Emri, l.readerSurname as Mbiemri from lexuesi as l
inner join komuna k on l.readerMunicipality = k.municipalityID
where municipalityName like 'Prishtin_';

-- 5. Listoni top 5 lexuesit me numrin me te madh të huazimeve në 3
-- muajt e fundit. Lista të paraqes të dhënat e lexusit duke përfshirë
-- emrin e mbiemrin si dhe numrin e huazimeve që ka realizuar.
select l.readerName as Emri, l.readerSurname as Mbiemri, count(h.readerID) as `Numri i huazimeve`
from lexuesi as l
inner join huazimi h on l.readerID = h.readerID
where borrowDate >= CURDATE() - interval 3 month
group by h.readerID
order by `Numri i huazimeve` desc
limit 5;

-- 6. Gjeni shumen e fituar nga te gjitha anetaresimet, te ndare ne vite
-- 2019,2020,2021. Rezultati duhet te jete nje tabele te ka fushat Viti, Shuma.
select year(r.registrationDate) as `Viti`, sum(p.billPrice) as `Shuma fitimit`
from regjistrimi r
inner join pagesa p on r.billID = p.paymentID
where year(r.registrationDate) >= 2019 and year(r.registrationDate) <= 2021
group by `Viti`
order by `Viti` desc;
