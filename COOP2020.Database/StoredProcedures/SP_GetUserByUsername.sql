USE `coop2020`;
DROP procedure IF EXISTS `GetUserByUsername`;

DELIMITER $$
USE `coop2020`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetUserByUsername`(
IN Username VARCHAR(100)
)
BEGIN
SELECT IdUsuario, Hkey, Alias, PasswordSalt, PasswordHash, IdRol 
    FROM `seguridad.usuario`
    WHERE (Alias = Username);
END$$

DELIMITER ;
