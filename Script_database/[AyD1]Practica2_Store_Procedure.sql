--consulta de saldo
CREATE FUNCTION consultarSaldo(@numero_cuenta INTEGER)  
RETURNS TABLE  
AS  
RETURN   
(  
    SELECT MONTO 
	FROM CUENTA C
	WHERE C.numero_cuenta = @numero_cuenta
);

--SELECT * FROM consultarSaldo(1);


--realizar credito
CREATE PROCEDURE credito
@numero_acreditador INTEGER,
@numero_acreditado INTEGER, 
@monto FLOAT,
@descripcion VARCHAR(100)
AS
BEGIN
	IF(@monto<=(select monto from cuenta where @numero_acreditador = numero_cuenta))
	BEGIN
		INSERT INTO transferencia VALUES (@monto,'',@numero_acreditador, @numero_acreditado,2,@descripcion);
		UPDATE cuenta SET monto = (SELECT monto from cuenta where numero_cuenta = @numero_acreditador) - @monto WHERE numero_cuenta = @numero_acreditador;
		UPDATE cuenta SET monto = (SELECT monto from cuenta where numero_cuenta = @numero_acreditado) + @monto WHERE numero_cuenta = @numero_acreditado;
	END 
END;

--credito 1,4,2000,'Credito a Estuardo de 1000 quetzales';


--realizar debito
CREATE PROCEDURE debito
@numero_debitador INTEGER,
@numero_debitado INTEGER, 
@monto FLOAT,
@descripcion VARCHAR(100)
AS
BEGIN
	IF(@monto<=(select monto from cuenta where @numero_debitado = numero_cuenta))
		BEGIN
			INSERT INTO transferencia VALUES (@monto,'',@numero_debitador, @numero_debitado,3,@descripcion);
			UPDATE cuenta SET monto = (SELECT monto from cuenta where numero_cuenta = @numero_debitador) + @monto WHERE numero_cuenta = @numero_debitador;
			UPDATE cuenta SET monto = (SELECT monto from cuenta where numero_cuenta = @numero_debitado) - @monto WHERE numero_cuenta = @numero_debitado;
		END	 
END;


--debito 0,1, 500, 'Debito a Estuardo de 500 quetzales';


CREATE PROCEDURE transferir
@numero INTEGER,
@numero_transferido INTEGER, 
@monto FLOAT,
@descripcion VARCHAR(100)
AS
BEGIN
	IF(@monto<=(select monto from cuenta where @numero = numero_cuenta))
	BEGIN
		INSERT INTO transferencia VALUES (@monto,'',@numero, @numero_transferido,1,@descripcion);
		UPDATE cuenta SET monto = (SELECT monto from cuenta where numero_cuenta = @numero) - @monto WHERE numero_cuenta = @numero;
		UPDATE cuenta SET monto = (SELECT monto from cuenta where numero_cuenta = @numero_transferido) + @monto WHERE numero_cuenta = @numero_transferido;
	END 
END;


CREATE PROCEDURE pagoServicio
@numero_cuenta INTEGER,
@numero_servicio INTEGER,
@monto FLOAT,
@tipo_servicio INTEGER
AS
BEGIN
	IF(@monto<=(select monto from cuenta where @numero_cuenta = numero_cuenta))
	BEGIN
		INSERT INTO pago VALUES (@monto,'',@numero_servicio,@numero_cuenta);
		UPDATE cuenta SET monto = (SELECT monto from cuenta where numero_cuenta = @numero_cuenta) - @monto WHERE numero_cuenta = @numero_cuenta;
		UPDATE servicio SET monto = (SELECT monto from servicio where numero_cuenta = @numero_servicio) + @monto WHERE numero_cuenta = @numero_servicio;
	END 
END;
