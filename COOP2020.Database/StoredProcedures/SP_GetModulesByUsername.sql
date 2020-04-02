DELIMITER //
CREATE PROCEDURE GetModulesByUsername(
IN Hkey VARCHAR(100)
)
BEGIN
	SELECT m.IdModulo, m.Nombre, m.IdModuloPadre 
    FROM seguridad.modulo m inner join seguridad.rolmodulo rm 
	on m.idmodulo=rm.idmodulo
    inner join seguridad.usuario u
    on u.idrol=rm.idrol
    WHERE u.Hkey = Hkey;
END