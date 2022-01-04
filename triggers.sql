drop trigger if exists pas_kthimit_librit;
drop trigger if exists marrja_librit;
drop trigger if exists regjistrimi_lexuesit;
drop trigger if exists pagesa;
drop trigger if exists pas_pageses;
drop trigger if exists libridemtuar;



DELIMITER #
CREATE TRIGGER pas_kthimit_librit
AFTER UPDATE
ON huazimi FOR EACH ROW
BEGIN
    IF new.returnDate is not null THEN
        update arkiva
        set arkiva.returnedAfter = datediff(new.returnDate, new.borrowDate)
        where arkiva.borrowID = new.borrowID;
    update libri set bookNumOfCopies = bookNumOfCopies + 1  where bookID = new.borrowedBookID;
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
        set regjistrimi.registrationDate = CURDATE(),
            regjistrimi.registrationActive = true
    where regjistrimi.billID = new.paymentID;
ELSEIF new.typeOfPayment = 'Damaging fees' and new.billPrice is not null then
    update libratdemtuar
        set libratdemtuar.billID = new.paymentID
    where libratdemtuar.billID is null and libratdemtuar.readerID = new.readerID;
END IF;
END#

CREATE TRIGGER libridemtuar
AFTER INSERT
ON libratdemtuar FOR EACH ROW
BEGIN
    insert into pagesa (readerID, billPrice, typeOfPayment)
    values (new.readerID, null, 2);
END#
