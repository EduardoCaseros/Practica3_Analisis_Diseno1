--CREACION DE TIPOS DE TRANSACTION
insert into tipo_transferencia values ('transferencia');
insert into tipo_transferencia values ('credito');
insert into tipo_transferencia values ('debito');


--CREACION DE TIPOS DE SERVICIO
insert into tipo_servicio values ('agua');
insert into tipo_servicio values ('luz');
insert into tipo_servicio values ('telefono');
insert into tipo_servicio values ('colegio');

--CREACION DE CUENTAS DE SERVICIO
insert into servicio values (100,'AGUA POTABLE S.A.','Servicio de Agua potable',1,0);
insert into servicio values (200,'SERVICIO DE LUZ S.A.','Servicio de energia electrica',2,0);
insert into servicio values (300,'TELGUA','Servicio de telefonia',3,0);
insert into servicio values (400,'COLEGIO GUATEMALTECO S.A.','Institucion educativa',4,0);

--CREACION DE USUARIOS
insert into usuario values ('CarlosG','CEGR','correo@gmail.com','pass123','');
insert into usuario values ('EstuardoR','UserE','estuardo@gmail.com','pass456','');
insert into usuario values ('AnaS','UserA','ana@gmail.com','pass789','');
insert into usuario values ('JulioS','UserJ','julio@gmail.com','pass1011','');

--CREACION DE CUENTAS DE PRUEBA
insert into cuenta values (100,500,1);
insert into cuenta values (200,1500,2);
insert into cuenta values (300,2500,3);
insert into cuenta values (400,4820,4);
insert into cuenta values (500,2050,1);