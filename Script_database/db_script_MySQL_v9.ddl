-- Generado por Oracle SQL Developer Data Modeler 4.1.3.901
--   en:        2017-03-11 21:58:51 CST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g




CREATE TABLE cuenta
  (
    numero_cuenta INTEGER NOT NULL ,
    monto FLOAT ,
    usuario_id_usuario INTEGER NOT NULL
  ) ;
ALTER TABLE cuenta ADD CONSTRAINT cuenta_PK PRIMARY KEY ( numero_cuenta ) ;


CREATE TABLE pago
  (
    monto FLOAT NOT NULL ,
    fecha                  	DATETIME ,
    servicio_numero_cuenta INTEGER NOT NULL ,
    id                     INTEGER NOT NULL AUTO_INCREMENT,
    cuenta_numero_cuenta   INTEGER NOT NULL
  ) ;
ALTER TABLE pago ADD CONSTRAINT pago_PK PRIMARY KEY ( id ) ;


CREATE TABLE servicio
  (
    numero_cuenta         INTEGER NOT NULL ,
    nombre                VARCHAR (50) ,
    descripcion           VARCHAR (100) ,
    tipo_servicio_id_tipo INTEGER NOT NULL,
	monto 				  FLOAT NOT NULL
  ) ;
ALTER TABLE servicio ADD CONSTRAINT servicio_PK PRIMARY KEY ( numero_cuenta ) ;


CREATE TABLE tipo_servicio
  (
    id_tipo INTEGER NOT NULL AUTO_INCREMENT,
    nombre  VARCHAR (50)
  ) ;
ALTER TABLE tipo_servicio ADD CONSTRAINT tipo_servicio_PK PRIMARY KEY ( id_tipo ) ;


CREATE TABLE tipo_transferencia
  (
    id_tipotrans INTEGER NOT NULL AUTO_INCREMENT,
    nombre       VARCHAR (25) NOT NULL
  ) ;
ALTER TABLE tipo_transferencia ADD CONSTRAINT tipo_transferencia_PK PRIMARY KEY ( id_tipotrans ) ;


CREATE TABLE transferencia
  (
    monto FLOAT NOT NULL ,
    fecha                    DATETIME ,
    cuenta_numero_cuenta     INTEGER NOT NULL ,
    cuenta_numero_cuenta2    INTEGER NOT NULL ,
    tipo_transf_id_tipotrans INTEGER NOT NULL ,
    descripcion              VARCHAR (100) NOT NULL ,
    id                       INTEGER NOT NULL AUTO_INCREMENT
  ) ;
ALTER TABLE transferencia ADD CONSTRAINT transferencia_PK PRIMARY KEY ( id ) ;


CREATE TABLE usuario
  (
    nombre     VARCHAR (100) NOT NULL ,
    usuario    VARCHAR (25) NOT NULL ,
    correo     VARCHAR (50) NOT NULL ,
    contrasena VARCHAR (25) NOT NULL ,
    id_usuario INTEGER NOT NULL AUTO_INCREMENT,
    codigo     VARCHAR (25)
  ) ;
ALTER TABLE usuario ADD CONSTRAINT usuario_PK PRIMARY KEY ( id_usuario ) ;


ALTER TABLE cuenta ADD CONSTRAINT cuenta_usuario_FK FOREIGN KEY ( usuario_id_usuario ) REFERENCES usuario ( id_usuario ) ;

ALTER TABLE pago ADD CONSTRAINT pago_cuenta_FK FOREIGN KEY ( cuenta_numero_cuenta ) REFERENCES cuenta ( numero_cuenta ) ;

ALTER TABLE pago ADD CONSTRAINT pago_servicio_FK FOREIGN KEY ( servicio_numero_cuenta ) REFERENCES servicio ( numero_cuenta ) ;

ALTER TABLE servicio ADD CONSTRAINT servicio_tipo_servicio_FK FOREIGN KEY ( tipo_servicio_id_tipo ) REFERENCES tipo_servicio ( id_tipo ) ;

ALTER TABLE transferencia ADD CONSTRAINT transf_tipo_transf_FK FOREIGN KEY ( tipo_transf_id_tipotrans ) REFERENCES tipo_transferencia ( id_tipotrans ) ;

ALTER TABLE transferencia ADD CONSTRAINT transferencia_cuenta_FK FOREIGN KEY ( cuenta_numero_cuenta ) REFERENCES cuenta ( numero_cuenta ) ;

ALTER TABLE transferencia ADD CONSTRAINT transferencia_cuenta_FKv2 FOREIGN KEY ( cuenta_numero_cuenta2 ) REFERENCES cuenta ( numero_cuenta ) ;




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
-- CREATE TRIGGER                           1
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          1
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
