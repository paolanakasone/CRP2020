-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Seguridad.Rol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Seguridad.Rol` (
  `IdRol` INT NOT NULL,
  `Nombre` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`IdRol`),
  UNIQUE INDEX `Nombre_UNIQUE` (`Nombre` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Seguridad.Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Seguridad.Usuario` (
  `IdUsuario` INT NOT NULL AUTO_INCREMENT,
  `Hkey` VARCHAR(100) NULL,
  `Alias` VARCHAR(100) NULL,
  `PasswordSalt` BLOB NULL,
  `PasswordHash` BLOB NULL,
  `IdRol` INT NOT NULL,
  PRIMARY KEY (`IdUsuario`),
  UNIQUE INDEX `Alias_UNIQUE` (`Alias` ASC) VISIBLE,
  INDEX `FK_Usuario_Rol_idx` (`IdRol` ASC) VISIBLE,
  CONSTRAINT `FK_Usuario_Rol`
    FOREIGN KEY (`IdRol`)
    REFERENCES `mydb`.`Seguridad.Rol` (`IdRol`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Seguridad.Modulo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Seguridad.Modulo` (
  `IdModulo` INT NOT NULL,
  `Nombre` VARCHAR(100) NOT NULL,
  `IdModuloPadre` INT NULL,
  PRIMARY KEY (`IdModulo`),
  INDEX `FK_Modulo_SubModulo_idx` (`IdModuloPadre` ASC) VISIBLE,
  CONSTRAINT `FK_Modulo_SubModulo`
    FOREIGN KEY (`IdModuloPadre`)
    REFERENCES `mydb`.`Seguridad.Modulo` (`IdModulo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Seguridad.RolModulo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Seguridad.RolModulo` (
  `IdRol` INT NOT NULL,
  `IdModulo` INT NOT NULL,
  INDEX `FK_RoModulo_Rol_idx` (`IdRol` ASC) VISIBLE,
  INDEX `FK_RolModulo_Modulo_idx` (`IdModulo` ASC) VISIBLE,
  CONSTRAINT `FK_RoModulo_Rol`
    FOREIGN KEY (`IdRol`)
    REFERENCES `mydb`.`Seguridad.Rol` (`IdRol`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `FK_RolModulo_Modulo`
    FOREIGN KEY (`IdModulo`)
    REFERENCES `mydb`.`Seguridad.Modulo` (`IdModulo`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
