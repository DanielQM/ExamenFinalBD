USE BD_PASAJE
GO

CREATE PROCEDURE SP_InsertVehiculo
@Descripcion VARCHAR(200),
@Capacidad INT
AS
    BEGIN
        INSERT INTO VEHICULO(DES_VEH, CAP_VEH)
        VALUES (@Descripcion, @Capacidad)
        SELECT * FROM VEHICULO
    END
GO

EXEC SP_InsertVehiculo @Descripcion='Minivan Azul', @Capacidad=25
GO

CREATE PROCEDURE SP_AlterVehiculo
@Codigo INT,
@Descripcion VARCHAR(200),
@Capacidad INT
AS
    BEGIN
        UPDATE VEHICULO
        SET DES_VEH=@Descripcion, CAP_VEH=@Capacidad
        WHERE COD_VEH=@Codigo
        SELECT * FROM VEHICULO
    END
GO

EXEC SP_AlterVehiculo @Descripcion='Combie Azul', @Capacidad=18, @Codigo=2
GO

CREATE PROCEDURE SP_DeleteVehiculo
@Codigo INT
AS
    BEGIN
        DELETE FROM VEHICULO
        WHERE COD_VEH=@Codigo
    END
GO

EXEC SP_DeleteVehiculo @Codigo=1
GO

CREATE PROCEDURE SP_ListVehiculo
AS
    BEGIN
        SELECT * FROM VEHICULO
        ORDER BY COD_VEH DESC
    END
GO

EXEC SP_ListVehiculo
GO

CREATE PROCEDURE SP_InsertPasajero
@Nombre VARCHAR(100)
AS
    BEGIN
        INSERT INTO PASAJERO(NOM_PAS)
        VALUES (@Nombre)
        SELECT * FROM PASAJERO
    END
GO

EXEC SP_InsertPasajero @Nombre='Luisa Campos'
GO

CREATE PROCEDURE SP_AlterPasajero
@Codigo INT,
@Nombre VARCHAR(200)
AS
    BEGIN
        UPDATE PASAJERO
        SET NOM_PAS=@Nombre
        WHERE COD_PAS=@Codigo
        SELECT * FROM PASAJERO
    END
GO

EXEC SP_AlterPasajero @Nombre='Luisa Melendez', @Codigo=1
GO

CREATE PROCEDURE SP_DeletePasajero
@Codigo INT
AS
    BEGIN
        DELETE FROM PASAJERO
        WHERE COD_PAS=@Codigo
    END
GO

EXEC SP_DeletePasajero @Codigo=1
GO

CREATE PROCEDURE SP_ListPasajero
AS
    BEGIN
        SELECT * FROM PASAJERO
        ORDER BY COD_PAS DESC
    END
GO

EXEC SP_ListPasajero
GO


CREATE PROCEDURE SP_InsertRutas
@Nombre VARCHAR(100),
@Costo DECIMAL(5,2)
AS
    BEGIN
        INSERT INTO RUTAS(NOM_RUT, COS_RUT)
        VALUES (@Nombre, @Costo)
        SELECT * FROM RUTAS
    END
GO

EXEC SP_InsertRutas @Nombre='San Vicente - Imperial', @Costo=1.00
GO

CREATE PROCEDURE SP_AlterRutas
@Codigo INT,
@Nombre VARCHAR(100),
@Costo DECIMAL(5,2)
AS
    BEGIN
        UPDATE RUTAS
        SET NOM_RUT=@Nombre, COS_RUT=@Costo
        WHERE COD_RUT=@Codigo
        SELECT * FROM RUTAS
    END
GO

EXEC SP_AlterRutas @Nombre='San Vicente - Imperial', @Costo=1.50, @Codigo=1
GO

CREATE PROCEDURE SP_DeleteRutas
@Codigo INT
AS
    BEGIN
        DELETE FROM RUTAS
        WHERE COD_RUT=@Codigo
    END
GO

EXEC SP_DeleteRutas @Codigo=1
GO

CREATE PROCEDURE SP_ListRutas
AS
    BEGIN
        SELECT * FROM RUTAS
        ORDER BY COD_RUT DESC
    END
GO

EXEC SP_ListRutas
GO


CREATE PROCEDURE SP_InsertViaje
@Cod_Vehiculo INT,
@Cod_Ruta INT,
@Cod_Pasajero INT
AS
    BEGIN
        INSERT INTO VIAJE(COD_VEH, COD_RUT, COD_PAS)
        VALUES (@Cod_Vehiculo, @Cod_Ruta, @Cod_Pasajero)
        SELECT * FROM VIAJE
    END
GO

EXEC SP_InsertViaje @Cod_Vehiculo=3, @Cod_Ruta=2, @Cod_Pasajero=2
GO

CREATE PROCEDURE SP_AlterViaje
@Codigo INT,
@Cod_Vehiculo INT,
@Cod_Ruta INT,
@Cod_Pasajero INT
AS
    BEGIN
        UPDATE VIAJE
        SET COD_VEH=@Cod_Vehiculo, COD_RUT=@Cod_Ruta, COD_PAS=@Cod_Pasajero
        WHERE COD_VIA=@Codigo
        SELECT * FROM VIAJE
    END
GO

EXEC SP_AlterViaje @Cod_Vehiculo=2, @Cod_Ruta=2, @Cod_Pasajero=2, @Codigo=1
GO

CREATE PROCEDURE SP_DeleteViaje
@Codigo INT
AS
    BEGIN
        DELETE FROM VIAJE
        WHERE COD_VIA=@Codigo
    END
GO

EXEC SP_DeleteViaje @Codigo=1
GO

CREATE PROCEDURE SP_ListViaje
AS
    BEGIN
        SELECT * FROM VIAJE
        ORDER BY COD_VIA DESC
    END
GO

EXEC SP_ListViaje
GO