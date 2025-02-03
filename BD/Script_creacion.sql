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
-- Table `jardin_floral_bd`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jardin_floral_bd`.`usuario` (
  `usuarioID` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido_p` VARCHAR(45) NOT NULL,
  `apellido_m` VARCHAR(45) NULL DEFAULT NULL,
  `telefono` BIGINT NOT NULL,
  `correo` VARCHAR(55) NOT NULL,
  PRIMARY KEY (`usuarioID`),
  UNIQUE INDEX `UsuarioID_UNIQUE` (`usuarioID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `jardin_floral_bd`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jardin_floral_bd`.`pedidos` (
  `transaccionID` INT NOT NULL AUTO_INCREMENT,
  `fecha_venta` DATE NOT NULL,
  `cantidad_pagada` INT NOT NULL,
  `cantidad_vendida` INT NOT NULL,
  `usuario_usuarioID` INT NOT NULL,
  PRIMARY KEY (`transaccionID`, `usuario_usuarioID`),
  INDEX `fk_pedidos_usuario1_idx` (`usuario_usuarioID` ASC) VISIBLE,
  CONSTRAINT `fk_pedidos_usuario1`
    FOREIGN KEY (`usuario_usuarioID`)
    REFERENCES `jardin_floral_bd`.`usuario` (`usuarioID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `jardin_floral_bd`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jardin_floral_bd`.`productos` (
  `productosID` INT NOT NULL AUTO_INCREMENT,
  `nombre_producto` VARCHAR(45) NOT NULL,
  `precio` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `stock` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(100) NOT NULL,
  `temporada` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`productosID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `jardin_floral_bd`.`productos_has_pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jardin_floral_bd`.`productos_has_pedidos` (
  `productos_productosID` INT NOT NULL,
  `pedidos_transaccionID` INT NOT NULL,
  PRIMARY KEY (`productos_productosID`, `pedidos_transaccionID`),
  INDEX `fk_productos_has_pedidos_pedidos1_idx` (`pedidos_transaccionID` ASC) VISIBLE,
  INDEX `fk_productos_has_pedidos_productos1_idx` (`productos_productosID` ASC) VISIBLE,
  CONSTRAINT `fk_productos_has_pedidos_productos1`
    FOREIGN KEY (`productos_productosID`)
    REFERENCES `jardin_floral_bd`.`productos` (`productosID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_productos_has_pedidos_pedidos1`
    FOREIGN KEY (`pedidos_transaccionID`)
    REFERENCES `jardin_floral_bd`.`pedidos` (`transaccionID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
