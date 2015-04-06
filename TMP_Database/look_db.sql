-- MySQL Script generated by MySQL Workbench
-- Mon Mar  9 15:19:09 2015
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema look_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema look_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `look_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `look_db` ;

-- -----------------------------------------------------
-- Table `look_db`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `look_db`.`users` (
  `user_id` INT UNSIGNED NOT NULL,
  `username` VARCHAR(16) NOT NULL,
  `pass` VARCHAR(45) NULL,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `date_created` DATETIME NULL,
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `look_db`.`posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `look_db`.`posts` (
  `post_id` INT NOT NULL,
  `title` VARCHAR(50) NOT NULL,
  `description` VARCHAR(250) NULL,
  `users_user_ID` INT UNSIGNED NOT NULL,
  `image_url` VARCHAR(100) NULL,
  INDEX `title` (`title` ASC),
  INDEX `fk_posts_users_idx` (`users_user_ID` ASC),
  PRIMARY KEY (`post_id`),
  CONSTRAINT `fk_posts_users`
    FOREIGN KEY (`users_user_ID`)
    REFERENCES `look_db`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `look_db`.`tags`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `look_db`.`tags` (
  `tag_id` VARCHAR(45) NOT NULL,
  `tag` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`tag_id`),
  INDEX `tag` (`tag` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `look_db`.`tags_has_posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `look_db`.`tags_has_posts` (
  `tags_tag_id` VARCHAR(45) NOT NULL,
  `posts_post_id` INT NOT NULL,
  PRIMARY KEY (`tags_tag_id`, `posts_post_id`),
  INDEX `fk_tags_has_posts_posts1_idx` (`posts_post_id` ASC),
  INDEX `fk_tags_has_posts_tags1_idx` (`tags_tag_id` ASC),
  CONSTRAINT `fk_tags_has_posts_tags1`
    FOREIGN KEY (`tags_tag_id`)
    REFERENCES `look_db`.`tags` (`tag_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tags_has_posts_posts1`
    FOREIGN KEY (`posts_post_id`)
    REFERENCES `look_db`.`posts` (`post_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
