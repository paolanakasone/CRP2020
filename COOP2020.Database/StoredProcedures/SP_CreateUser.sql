USE `coop2020`;
DROP procedure IF EXISTS `CreateUser`;

DELIMITER $$
USE `coop2020`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `CreateUser`(
IN P_Hkey VARCHAR(100),
IN P_Alias VARCHAR(100),
IN P_PasswordSalt blob,
IN P_PasswordHash blob, 
IN P_IdRol int(11)
)
BEGIN
	INSERT INTO  `seguridad.usuario`
(Hkey, 
Alias, 
PasswordSalt, 
PasswordHash, 
IdRol)
VALUES
(P_Hkey, 
P_Alias, 
P_PasswordSalt, 
P_PasswordHash, 
P_IdRol);
SELECT 
Hkey, 
Alias, 
PasswordSalt, 
PasswordHash, 
IdRol
FROM `seguridad.usuario`
WHERE IdUsuario IN (SELECT LAST_INSERT_ID());
END$$

DELIMITER ;
