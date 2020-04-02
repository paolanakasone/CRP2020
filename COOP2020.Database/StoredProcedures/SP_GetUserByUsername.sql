DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetUserByUsername`(
IN Username VARCHAR(100)
)
BEGIN
SELECT IdUsuario, Hkey, Alias, PasswordSalt, PasswordHash, IdRol 
    FROM seguridad.usuario
    WHERE (Alias = Username);
END