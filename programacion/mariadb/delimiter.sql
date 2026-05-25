/*Todas las sentncias que no van tabuladas, deben ir delimitadas, mientras que las que van tabuladas, deben cerrarse con ";" */
DELIMITER //
SET @a=2026//
IF (a % 4 = 0 AND a % 100 != 0) OR (a % 400 = 0) THEN
    SELECT 'Bisiesto';
ELSE
    SELECT 'No Bisiesto';
END IF//
DELIMITER ;

DELIMITER //
SET @x=10//
WHILE @x>0 do
    sET @X=@X-1;
    SELECT @X;
END WHILE//
DELIMITER ;

DELIMITER //
CREATE FUNCTION suma(x INT, y INT) RETURNS INT
BEGIN
    RETURN x+y;
END//
DELIMITER ;