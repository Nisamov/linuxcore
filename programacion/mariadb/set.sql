/*Almacenamiento de informacion en memoria*/
SET @nombre="NombreUsuario";
SET @digito=1234567890;
SET @fecha='2026-04-30';
/*Output por consola de contenido almacenado*/
SELECT @nombre;

/*Cambiar valor*/
SET @digito=@digito+3;
SET @fecha=NULL;

/*Condicionales*/
SET @num1=1;
SET @num2=7;
SET @test=NULL;