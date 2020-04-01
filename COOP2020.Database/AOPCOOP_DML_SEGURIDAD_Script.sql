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
VALUES('ba8657a5-0bb8-420c-9591-5059001b7ad6','paolanakasone',0xC21AA8A71F4DA5E8417E2E93559F70EBDDFFCFEE152CDF8B01A446D0159DD5FC6DAE8C3CE379F2745D7E3A2872EF47D5C14223C29A8C1DA1481BD4C3C8EF6E73C410C065FC53C8B51E319FF972C9F6EB5F9FABB7A834EFDCE2E742C48EE8FAA9D4E55591C987641A71215D3DD587522AFCF775F4DF80F1CB572A7FB5D663F612,0x184C53B5C059CD1B360AE44B2B4FC2C6BD3176961DC0C4FF55AFFB6CF192E37CE2A2D588F9F91D982A300257745C4C1A3A8C9316700B556DBE88777C863B4B9D,1);
INSERT INTO `seguridad.usuario`(`Hkey`,`Alias`,`PasswordSalt`,`PasswordHash`,`IdRol`)
VALUES('66c8293d-3b9f-4bb5-8e81-b46351cbe2ed','hideakiuchida',0xA85856DC5649B760AC0A9CB84970E8AA5E1ED14B14FD1A95CAD47BF73B766922B30EBDA183A26C5DD951D487EDD9619014354BC63C7272CFAFD925DAFE04AAE0A1F970612FFC448620BA5689CA9D6ACF1C2BC36395D0AFF3A4B6557EB391BFE87B6A64FA640EE69198D75F0D1DAE0EECDEC0A59D7B34FD3F19A0E2F42EA12AB5,0xA1DB4D368E45846071BAF09E6F5EDAB2941483757395D928A9D7ADCC99C85FB944BCEF33876749923BD95E7ACCDB4B4ED37F8FD2C86A5A653C7CD161022998E7,2);
INSERT INTO `seguridad.usuario`(`Hkey`,`Alias`,`PasswordSalt`,`PasswordHash`,`IdRol`)
VALUES('04cfcc42-7a33-477f-b563-14dd65e4919c','paolorojas',0x5A364968D6F181B14A0A6CEBB5E4FD78438FFD7494D37EED9913CBB3B449147ED96E962DF04BDB562C6254F47A115734322F79F107823B685564A229A84B081042CEA6DDA59497644F3F3543909879321F1D51F1919C903DABA9D3AD01833151076E3FA02EF5FE98C3C6ECF1ABDD84221CC8042DF373388B455804F130646ECB,0x1E2E9A16E820EF78D9D34C210FB23576D95CC8B4302AE24B709E06564791A5C76958E0FB7DA7BA080F36F48E87DC3C575586D9A4C15EC45C5759C8069D0826E2,6);



