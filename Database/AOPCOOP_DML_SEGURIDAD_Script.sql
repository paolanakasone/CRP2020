SET SQL_SAFE_UPDATES = 0;
DELETE FROM `seguridad.rolmodulo`;

DELETE FROM `seguridad.rol`;
INSERT INTO `seguridad.rol` (`IdRol`,`Nombre`) 
VALUES (1,'Gerente General');
INSERT INTO `seguridad.rol` (`IdRol`,`Nombre`) 
VALUES (2,'Subgerente General');
INSERT INTO `seguridad.rol` (`IdRol`,`Nombre`) 
VALUES (3,'Jefe de Cobranzas');
INSERT INTO `seguridad.rol` (`IdRol`,`Nombre`) 
VALUES (4,'Asistente de Cobranzas');
INSERT INTO `seguridad.rol` (`IdRol`,`Nombre`) 
VALUES (5,'Jefe de Operaciones');
INSERT INTO `seguridad.rol` (`IdRol`,`Nombre`) 
VALUES (6,'Caja');
INSERT INTO `seguridad.rol` (`IdRol`,`Nombre`) 
VALUES (7,'Jefe de Sistemas');
INSERT INTO `seguridad.rol` (`IdRol`,`Nombre`) 
VALUES (8,'Asistente de Sistemas');
INSERT INTO `seguridad.rol` (`IdRol`,`Nombre`) 
VALUES (9,'Jefe de Contabilidad');
INSERT INTO `seguridad.rol` (`IdRol`,`Nombre`) 
VALUES (10,'Asistente de Contabilidad');
INSERT INTO `seguridad.rol` (`IdRol`,`Nombre`) 
VALUES (11,'Jefe de Créditos');
INSERT INTO `seguridad.rol` (`IdRol`,`Nombre`) 
VALUES (12,'Asistente de Créditos');


DELETE FROM `seguridad.modulo`;
INSERT INTO `seguridad.modulo` (`IdModulo`,`Nombre`,`IdModuloPadre`)
VALUES(1,'Operaciones', null);
INSERT INTO `seguridad.modulo` (`IdModulo`,`Nombre`,`IdModuloPadre`)
VALUES(2,'Créditos', null);
INSERT INTO `seguridad.modulo` (`IdModulo`,`Nombre`,`IdModuloPadre`)
VALUES(3,'Cobranzas', null);
INSERT INTO `seguridad.modulo` (`IdModulo`,`Nombre`,`IdModuloPadre`)
VALUES(4,'Desembolso', 2);
INSERT INTO `seguridad.modulo` (`IdModulo`,`Nombre`,`IdModuloPadre`)
VALUES(5,'Depósito de ahorro', 1);
INSERT INTO `seguridad.modulo` (`IdModulo`,`Nombre`,`IdModuloPadre`)
VALUES(6,'Retiro de ahorro', 1);
INSERT INTO `seguridad.modulo` (`IdModulo`,`Nombre`,`IdModuloPadre`)
VALUES(7,'Cambio de moneda', 1);

INSERT INTO `seguridad.rolmodulo`(`IdRol`,`IdModulo`)
VALUES(6,1);
INSERT INTO `seguridad.rolmodulo`(`IdRol`,`IdModulo`)
VALUES(6,2);
INSERT INTO `seguridad.rolmodulo`(`IdRol`,`IdModulo`)
VALUES(6,3);
INSERT INTO `seguridad.rolmodulo`(`IdRol`,`IdModulo`)
VALUES(6,4);
INSERT INTO `seguridad.rolmodulo`(`IdRol`,`IdModulo`)
VALUES(6,5);
INSERT INTO `seguridad.rolmodulo`(`IdRol`,`IdModulo`)
VALUES(6,6);
INSERT INTO `seguridad.rolmodulo`(`IdRol`,`IdModulo`)
VALUES(6,7);


DELETE FROM `seguridad.usuario`;
INSERT INTO `seguridad.usuario`(`Hkey`,`Alias`,`PasswordSalt`,`PasswordHash`,`IdRol`)
VALUES('ba8657a5-0bb8-420c-9591-5059001b7ad6','paolanakasone',null,null,1);
INSERT INTO `seguridad.usuario`(`Hkey`,`Alias`,`PasswordSalt`,`PasswordHash`,`IdRol`)
VALUES('66c8293d-3b9f-4bb5-8e81-b46351cbe2ed','hideakiuchida',null,null,2);
INSERT INTO `seguridad.usuario`(`Hkey`,`Alias`,`PasswordSalt`,`PasswordHash`,`IdRol`)
VALUES('04cfcc42-7a33-477f-b563-14dd65e4919c','paolorojas',null,null,6);



