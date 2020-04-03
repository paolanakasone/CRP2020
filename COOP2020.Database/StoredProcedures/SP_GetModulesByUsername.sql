USE `coop2020`;
DROP procedure IF EXISTS `GetModulesByUsername`;

DELIMITER $$
USE `coop2020`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetModulesByUsername`(IN Hkey VARCHAR(100))
BEGIN
	SELECT m.IdModulo, m.Nombre, m.IdModuloPadre 
    FROM `seguridad.modulo` m 
    INNER JOIN `seguridad.rolmodulo` rm ON m.idmodulo = rm.idmodulo
    INNER JOIN `seguridad.usuario` u ON u.idrol = rm.idrol
    WHERE u.Hkey = Hkey;
END$$

DELIMITER ;
