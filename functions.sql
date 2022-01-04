
drop function if exists checkIfMembershipActive;
DELIMITER //
CREATE FUNCTION checkIfMembershipActive(readerIDf INT)
    RETURNS bool
    READS SQL DATA
DETERMINISTIC
BEGIN
    DECLARE hasMembership bool;
    Declare regDate date;
    declare regLength int;
    declare regActive bool;
    select r.registrationDate, r.registrationLengthDays, r.registrationActive
    from regjistrimi r
    where readerID = readerIDf
    limit 1
    into regDate, regLength, regActive;

    IF (curdate() > adddate(regDate, regLength)) or (not (regActive is true)) or (adddate(regDate, regLength) is null) then
        set hasMembership = false;
    Else set hasMembership = true;
    end if;
    RETURN hasMembership;
END//
DELIMITER ;