CREATE DEFINER=`root`@`localhost` PROCEDURE `GetModulesByUsername`(
IN Hkey VARCHAR(100)
)
BEGIN
SELECT m.IdModulo, m.Nombre, m.IdModuloPadre 
    FROM coop2020.`seguridad.modulo` m inner join coop2020.`seguridad.rolmodulo` rm 
     on m.idmodulo=rm.idmodulo
    inner join coop2020.`seguridad.usuario` u
    on u.idrol=rm.idrol
    WHERE (u.Hkey = Hkey);
END