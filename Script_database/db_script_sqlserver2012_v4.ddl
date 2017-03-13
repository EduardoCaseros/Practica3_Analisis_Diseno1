-- Generado por Oracle SQL Developer Data Modeler 4.1.3.901
--   en:        2017-03-10 17:51:12 CST
--   sitio:      SQL Server 2012
--   tipo:      SQL Server 2012




CREATE
  TABLE cuenta
  (
    numero_cuenta INTEGER NOT NULL ,
    monto FLOAT ,
    usuario_id_usuario INTEGER NOT NULL
  )
  ON "default"
GO
ALTER TABLE cuenta ADD CONSTRAINT cuenta_PK PRIMARY KEY CLUSTERED (
numero_cuenta)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE pago
  (
    monto FLOAT NOT NULL ,
    fecha DATETIME2 NOT NULL ,
    usuario_id_usuario     INTEGER NOT NULL ,
    servicio_numero_cuenta INTEGER NOT NULL
  )
  ON "default"
GO
ALTER TABLE pago ADD CONSTRAINT pago_PK PRIMARY KEY CLUSTERED (fecha,
usuario_id_usuario, servicio_numero_cuenta)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE servicio
  (
    numero_cuenta         INTEGER NOT NULL ,
    nombre                VARCHAR (50) ,
    descripcion           VARCHAR (100) ,
    tipo_servicio_id_tipo INTEGER NOT NULL
  )
  ON "default"
GO
ALTER TABLE servicio ADD CONSTRAINT servicio_PK PRIMARY KEY CLUSTERED (
numero_cuenta)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE tipo_servicio
  (
    id_tipo INTEGER NOT NULL ,
    nombre  VARCHAR (50)
  )
  ON "default"
GO
ALTER TABLE tipo_servicio ADD CONSTRAINT tipo_servicio_PK PRIMARY KEY CLUSTERED
(id_tipo)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE tipo_transferencia
  (
    id_tipotrans INTEGER NOT NULL ,
    nombre       VARCHAR (25) NOT NULL
  )
  ON "default"
GO
ALTER TABLE tipo_transferencia ADD CONSTRAINT tipo_transferencia_PK PRIMARY KEY
CLUSTERED (id_tipotrans)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE transferencia
  (
    monto FLOAT NOT NULL ,
    fecha DATETIME2 NOT NULL ,
    usuario_id_usuario              INTEGER NOT NULL ,
    usuario_id_usuario1             INTEGER NOT NULL ,
    tipo_transferencia_id_tipotrans INTEGER NOT NULL
  )
  ON "default"
GO
ALTER TABLE transferencia ADD CONSTRAINT transferencia_PK PRIMARY KEY CLUSTERED
(fecha, usuario_id_usuario, usuario_id_usuario1)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

CREATE
  TABLE usuario
  (
    nombre     VARCHAR (100) NOT NULL ,
    usuario    VARCHAR (25) NOT NULL ,
    correo     VARCHAR (50) NOT NULL ,
    contrasena VARCHAR (25) ,
    id_usuario INTEGER NOT NULL ,
    codigo     VARCHAR (25)
  )
  ON "default"
GO
ALTER TABLE usuario ADD CONSTRAINT usuario_PK PRIMARY KEY CLUSTERED (id_usuario
)
WITH
  (
    ALLOW_PAGE_LOCKS = ON ,
    ALLOW_ROW_LOCKS  = ON
  )
  ON "default"
GO

ALTER TABLE cuenta
ADD CONSTRAINT cuenta_usuario_FK FOREIGN KEY
(
usuario_id_usuario
)
REFERENCES usuario
(
id_usuario
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE pago
ADD CONSTRAINT pago_servicio_FK FOREIGN KEY
(
servicio_numero_cuenta
)
REFERENCES servicio
(
numero_cuenta
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE pago
ADD CONSTRAINT pago_usuario_FK FOREIGN KEY
(
usuario_id_usuario
)
REFERENCES usuario
(
id_usuario
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE servicio
ADD CONSTRAINT servicio_tipo_servicio_FK FOREIGN KEY
(
tipo_servicio_id_tipo
)
REFERENCES tipo_servicio
(
id_tipo
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE transferencia
ADD CONSTRAINT transferencia_tipo_transferencia_FK FOREIGN KEY
(
tipo_transferencia_id_tipotrans
)
REFERENCES tipo_transferencia
(
id_tipotrans
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE transferencia
ADD CONSTRAINT transferencia_usuario_FK FOREIGN KEY
(
usuario_id_usuario
)
REFERENCES usuario
(
id_usuario
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO

ALTER TABLE transferencia
ADD CONSTRAINT transferencia_usuario_FKv2 FOREIGN KEY
(
usuario_id_usuario1
)
REFERENCES usuario
(
id_usuario
)
ON
DELETE
  NO ACTION ON
UPDATE NO ACTION
GO


-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             14
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE DATABASE                          0
-- CREATE DEFAULT                           0
-- CREATE INDEX ON VIEW                     0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE ROLE                              0
-- CREATE RULE                              0
-- CREATE SCHEMA                            0
-- CREATE SEQUENCE                          0
-- CREATE PARTITION FUNCTION                0
-- CREATE PARTITION SCHEME                  0
-- 
-- DROP DATABASE                            0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
