-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema jardin_floral_bd
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema jardin_floral_bd
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `jardin_floral_bd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `jardin_floral_bd` ;

-- -----------------------------------------------------
-- Table `jardin_floral_bd`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jardin_floral_bd`.`pedidos` (
  `transaccionID` INT NOT NULL AUTO_INCREMENT,
  `fechaventa` DATE NOT NULL,
  `cantidadpagada` DOUBLE NOT NULL,
  `cantidadvendida` INT NOT NULL,
  PRIMARY KEY (`transaccionID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `jardin_floral_bd`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jardin_floral_bd`.`productos` (
  `productosID` BIGINT(12) NOT NULL,
  `nombreproducto` VARCHAR(45) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `stock` INT NOT NULL,
  `descripcion` VARCHAR(300) NOT NULL,
  `temporada` VARCHAR(45) NOT NULL,
  `urlimagen` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`productosID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `jardin_floral_bd`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jardin_floral_bd`.`usuario` (
  `usuarioID` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellidop` VARCHAR(45) NOT NULL,
  `apellidom` VARCHAR(45) NULL DEFAULT NULL,
  `telefono` BIGINT NOT NULL,
  `correo` VARCHAR(55) NOT NULL,
  `contraseña` VARCHAR(150) NOT NULL,
  `rol` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`usuarioID`),
  UNIQUE INDEX `UsuarioID_UNIQUE` (`usuarioID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `jardin_floral_bd`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jardin_floral_bd`.`categorias` (
  `idcategorias` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(300) NOT NULL,
  PRIMARY KEY (`idcategorias`),
  UNIQUE INDEX `idcategorias_UNIQUE` (`idcategorias` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
