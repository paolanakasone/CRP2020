USE `coop2020`;
DROP procedure IF EXISTS `GetRoles`;

DELIMITER $$
USE `coop2020`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetRoles`()
BEGIN
SELECT IdRol, Nombre FROM `seguridad.rol` order by 1 asc;
END$$

DELIMITER ;

