IF @num1=@num2 THEN
    SET @test="Salida1";
ELSEIF @num1>@num2 THEN
    SET @test="Salida2";
ELSEIF @num1<@num2 THEN
    SET @test="Salida3";
ELSE
    SET @test="Salida por defecto";
END IF;