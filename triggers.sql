drop trigger if exists pas_kthimit_librit;
drop trigger if exists marrja_librit;
drop trigger if exists regjistrimi_lexuesit;
drop trigger if exists pagesa;
drop trigger if exists pas_pageses;
drop trigger if exists libridemtuar;
drop trigger if exists para_marrjes_librit;
drop trigger if exists pas_dhurimitlibrit;
drop trigger if exists para_marrjes_librit;

-- REGJISTRIMI LEXUESIT DHE PAGESA

delimiter #
CREATE TRIGGER regjistrimi_lexuesit
AFTER INSERT
ON lexuesi FOR EACH ROW
BEGIN
    insert into pagesa (billPrice, typeOfPayment)
                values (null, 1);
    insert into regjistrimi (billID, readerID, registrationLengthDays, registrationActive, typeOfRegistration)
                    values (LAST_INSERT_ID(), NEW.readerID , 365, false, 1);
END#

CREATE TRIGGER pagesa
AFTER INSERT
ON pagesa FOR EACH ROW
BEGIN
IF new.typeOfPayment = 'Registration' then
    update regjistrimi
        set regjistrimi.billID = new.paymentID,
            regjistrimi.registrationDate = CURDATE(),
            regjistrimi.registrationActive = true
    where regjistrimi.readerID = new.readerID;
END IF;
END#

CREATE TRIGGER pas_pageses
AFTER UPDATE
ON pagesa FOR EACH ROW
BEGIN
IF new.typeOfPayment = 'Registration' and new.billPrice is not null and new.workerID is not null then
    update regjistrimi
    inner join pagesa p on regjistrimi.billID = p.paymentID
        set regjistrimi.registrationDate = date(p.billTime),
            regjistrimi.registrationActive = true
    where regjistrimi.billID = new.paymentID;
ELSEIF new.typeOfPayment = 'Damaging fees' and new.billPrice is not null then
    update libratdemtuar
        set libratdemtuar.billID = new.paymentID
    where libratdemtuar.billID is null and libratdemtuar.readerID = new.readerID
    limit 1;
END IF;
END#


-- MARRJA E LIBRIT, KTHIMI, DEMTIMI DHE DHURIMI


CREATE TRIGGER para_marrjes_librit
    BEFORE INSERT
    ON huazimi FOR EACH ROW
BEGIN
    set @error_msg = concat('Lexuesi: ', new.readerID, ' nuk ka regjistrim aktiv');
    IF not checkIfMembershipActive(new.readerID) THEN
        set @error_msg = concat('Lexuesi: ', new.readerID, ' nuk ka regjistrim aktiv');
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = @error_msg;
    END IF;
END#

CREATE TRIGGER marrja_librit
AFTER INSERT
ON huazimi FOR EACH ROW
BEGIN
    IF (NEW.returnDate IS not NULL) THEN
    insert into arkiva (bookID, readerID, borrowID, returnedAfter)
        values (new.borrowedBookID, new.readerID, new.borrowID, datediff(new.returnDate, new.borrowDate));
    ELSE
        insert into arkiva (bookID, readerID, borrowID)
        values (new.borrowedBookID, new.readerID, new.borrowID);
        update libri set bookNumOfCopies = bookNumOfCopies - 1  where bookID = new.borrowedBookID;
    END IF;
END#

CREATE TRIGGER pas_kthimit_librit
AFTER UPDATE
ON huazimi FOR EACH ROW
BEGIN
    IF new.returnDate is not null and old.returnDate is null THEN
        update arkiva
        set arkiva.returnedAfter = datediff(new.returnDate, new.borrowDate)
        where arkiva.borrowID = new.borrowID;
    update libri set bookNumOfCopies = bookNumOfCopies + 1  where bookID = new.borrowedBookID;
        END IF;
END#

CREATE TRIGGER libridemtuar
AFTER INSERT
ON libratdemtuar FOR EACH ROW
BEGIN
    insert into pagesa (readerID, billPrice, typeOfPayment)
    values (new.readerID, null, 2);
END#

create trigger pas_dhurimitlibrit
    after insert
    on dhurimilibrit for each row
BEGIN
    update libri
        set bookNumOfCopies = bookNumOfCopies + 1
    where libri.bookID = new.bookID;
end #
delimiter ;


