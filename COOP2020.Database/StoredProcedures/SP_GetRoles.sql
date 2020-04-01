CREATE DEFINER=`root`@`localhost` PROCEDURE `GetRoles`()
BEGIN
SELECT IdRol, Nombre FROM coop2020.`seguridad.rol` order by 1 asc;
END