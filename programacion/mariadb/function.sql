SELECT suma(15, 2);
SET @resultado=suma(15, -5);
SELECT suma(suma(10, 5), 15);

DELIMITER //
CREATE OR REPLACE FUNCTION esbisiesto(anyo INT) RETURNS BOOLEAN
DETERMINISTIC /*Depende del valor que se le pasa como parametro*/
    DECLARE resultado BOOLEAN;
    IF (anyo % 4 and anyo % 100 != 0) OR (anyo % 400 = 0) THEN 
        SET resultado=TRUE;
    ELSE
        SET resultado=FALSE;
    END IF;
    RETURN resultado;
END//
DELIMITER ;

/*Si el resto de la division es cero == el divisor es divisible por el diviso*/
DELIMITER //
CREATE OR REPLACE FUNCTION esDivisible(digit INT, digit2 INT) RETURNS BOOLEAN
DETERMINISTIC
    DECLARE resultado2 BOOLEAN;
    IF (digit % digit2 = 0) THEN
        SET resultado2=TRUE;
    ELSE
        SET resultado2=FALSE;
    END IF;
    RETURN resultado2;
END//
DELIMITER ;

/*Comprobacion de llamada de funcion*/
SELECT esDivisible(4,2); --TRUE
SELECT esDivisible(2,2); -- TRUE
SELECT esDivisible(15,-3); -- TRUE
SELECT esDivisible(8,3); -- FALSE

DELIMITER //
CREATE OR REPLACE FUNCTION hayHuecos() RETURNS BOOLEAN
READS
BEGIN
    DECLARE v_contador INT DEFAULT 0;
    DECLARE v_maxid INT DEFAULT 0;
    SELECT COUNT(*), MAX(id_plataforma) INTO v_contador, v_maxid FROM bd_juego.plataforma;
    RETURN v_contador < v_maxid;
END//