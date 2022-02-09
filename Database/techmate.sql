SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `techmate` ;
CREATE SCHEMA IF NOT EXISTS `techmate` DEFAULT CHARACTER SET latin1 ;
USE `techmate` ;

-- 1 admin, 2 staff, 3 user
CREATE TABLE IF NOT EXISTS `account_type` (
  `id` int NOT NULL,
  `account_type` varchar(50) NOT NULL,
  `permissions` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE IF NOT EXISTS `account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `account_typeId` int,-- 1 admin, 2 staff, 3 user
  `account_status` varchar(50) , -- active -- deactive
  PRIMARY KEY (`id`),
  CONSTRAINT `account_account_type_fk` FOREIGN KEY (`account_typeId`) REFERENCES `account_type` (`id`)  ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `account_id` int,
  `first_name` varchar(50),
  `last_name` varchar(50) ,
  `phone` int DEFAULT NULL,
    `citizen_id` INT NOT NULL,
  `email` varchar(250) ,
  `business_phone` int ,
    `mobile_phone` int,
  `image` mediumblob,
  `created_at` timestamp,
  `modified_at` timestamp,
  PRIMARY KEY (`id`),
  CONSTRAINT `user_account_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)  ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `user_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `address_line1` varchar(100) ,
  `address_line2` varchar(100) ,
    `town` varchar(50) ,
	`district` varchar(50) ,
  `city` varchar(50) ,
  `state_province` varchar(50) ,
  `country` varchar(50) ,
  `postal_code` varchar(15),
  PRIMARY KEY (`id`),
  CONSTRAINT `user_address_fk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)  ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- admin, staff,
CREATE TABLE IF NOT EXISTS `admintype` (
  `id` int NOT NULL,
  `admin_type` varchar(50) NOT NULL,
  `permissions` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL,
  `account_id` int,
  `first_name` varchar(50),
  `last_name` varchar(50) ,
  `business_phone` int ,
    `mobile_phone` int,
	`citizen id` INT NOT NULL,
  `email` varchar(250) ,
  `image` blob,
   `address_line1` varchar(100) ,
  `address_line2` varchar(100) ,
  `town` varchar(50) ,
  `district` varchar(50) ,
  `city` varchar(50) ,
  `state_province` varchar(50) ,
  `country` varchar(50) ,
  `postal_code` varchar(15),
  `typed_id` int NOT NULL,
  `last_login` timestamp,
  `created_at` timestamp,
  `modified_at` timestamp,
  PRIMARY KEY (`id`),
	CONSTRAINT `adminuser_fk_1` FOREIGN KEY (`typed_id`) REFERENCES `admintype` (`id`) on delete cascade,
      CONSTRAINT `admin_account_fk` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)  ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `supplier` (
  `id` INT NOT NULL,
  `name` VARCHAR(50) ,
  `desc` LONGTEXT,
  `email_address` VARCHAR(50) ,
  `business_phone` int ,
    `mobile_phone` int,
  `fax_number` VARCHAR(25) ,
   `address_line1` varchar(100) ,
  `address_line2` varchar(100) ,
      `town` varchar(50) ,
	`district` varchar(50) ,
  `city` VARCHAR(50) NULL ,
  `state_province` VARCHAR(50) ,
    `country` VARCHAR(50) ,
  `postal_code` VARCHAR(15) ,
  PRIMARY KEY (`id`)
  ) ENGINE = InnoDB DEFAULT CHARACTER SET = latin1;



CREATE TABLE IF NOT EXISTS `product_category` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` mediumtext,
  `created_at` timestamp,
  `modified_at` timestamp,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `desc` LONGTEXT,
  `SKU` varchar(50),
  `price` float NOT NULL,
  `unit_price` varchar(50),
  `category_id` int not null,
  `discount_id` int NOT NULL,
  `inventory_id` int NOT NULL,
  `supplier_id` int not null,
  `product_short_desc` varchar(1000),
  `Product_long_desc` longtext,
  `image` mediumblob,
  PRIMARY KEY (`id`),
	CONSTRAINT `product_fk_1` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)  ON DELETE CASCADE,
	CONSTRAINT `product_fk_2` FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`)  ON DELETE CASCADE,
	CONSTRAINT `product_fk_3` FOREIGN KEY (`inventory_id`) REFERENCES `product_inventory` (`id`)  ON DELETE CASCADE,
	CONSTRAINT `product_fk_4` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`)  ON DELETE CASCADE

) ENGINE=InnoDB DEFAULT CHARSET=latin1;





CREATE TABLE IF NOT EXISTS `product_image` (
  `id` int NOT NULL auto_increment,
  `name` varchar(100),
  `image` mediumblob,
  `product_id` int ,
  PRIMARY KEY (`id`),
	CONSTRAINT `product_image_fk` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)  ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE IF NOT EXISTS `product_inventory` (
  `id` int NOT NULL,
  `quantity` int,
  `created_at` timestamp,
  `modified_at` timestamp,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE IF NOT EXISTS `discount` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `desc` LONGTEXT,
  `discount_percent` decimal(4,2),
  `active` boolean,
  `created_at` timestamp,
  `modified_at` timestamp,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `cart` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT ,
  `total` int,
  `created_at` timestamp,
  `modified_at` timestamp,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_cart_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
	ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=latin1;





CREATE TABLE `cart_item` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `product_id` INT NOT NULL,
  `cart_id` INT NOT NULL,
  `quantity` INT,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_cart_item_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
     CONSTRAINT `fk_cart_item_cart` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE
    )ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- -----------------------------------------------------
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shippers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `citizen_id` INT NOT NULL,
  `first_name` VARCHAR(50) ,
  `last_name` VARCHAR(50) ,
  `email_address` VARCHAR(50) ,
  `business_phone` int ,
  `mobile_phone` int,
  `address_line` varchar(100) ,
  `town` varchar(50) ,
  `district` varchar(50) ,
  `city` varchar(50) ,
  `state_province` VARCHAR(50) ,
  `country` VARCHAR(50) ,
  `notes` TEXT ,
  `status` varchar(10),-- active or not
  PRIMARY KEY (`id`)
  )ENGINE = InnoDB DEFAULT CHARACTER SET = latin1;


-- ---------admin----open, confirmed, delivery, completed,  denied, deleted(3 day disappeared)-------------user--pending--confirmed, delivery-, denied, completed----------------------
CREATE TABLE IF NOT EXISTS `orders_status` (
  `id` int NOT NULL,
  `status_name` VARCHAR(50) ,
  PRIMARY KEY (`id`)
  )ENGINE = InnoDB DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------

-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `orders` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `admin_id` INT,                                                                                                                                                                                                                                                                                                     
  `user_id` INT,
  `total` DECIMAL(19,4),
  `order_date` DATETIME ,
  `shipped_date` datetime,
  `shipper_id` INT,
  `ship_name` VARCHAR(50),
  `ship_address_line` varchar(100),
  `ship_town` VARCHAR(50) ,
  `ship_district` VARCHAR(50) ,
  `ship_city` VARCHAR(50) ,
  `ship_state_province` VARCHAR(50) ,
  `ship_country` VARCHAR(50) ,
    `ship_postal_code` VARCHAR(50) ,
  `shipping_fee` DECIMAL(19,4) DEFAULT '0.0000',
  `notes` TEXT ,
  `status_id` int,  
  `created_at` timestamp,
  `modified_at` timestamp,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_orders_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) 
  ON DELETE CASCADE,
  CONSTRAINT `fk_orders_admin` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
  ON DELETE CASCADE,
  CONSTRAINT `fk_orders_shippers` FOREIGN KEY (`shipper_id`) REFERENCES `shippers` (`id`)
  ON DELETE CASCADE,
  CONSTRAINT `fk_orders_orders_status` FOREIGN KEY (`status_id`) REFERENCES `orders_status` (`id`)
  ON DELETE CASCADE
    )ENGINE = InnoDB DEFAULT CHARACTER SET = latin1;


CREATE TABLE IF NOT EXISTS `orders_items` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `orders_id` INT,
  `product_id` int,
  `quantity` int,
  `created_at` timestamp,
  `modified_at` timestamp,
    PRIMARY KEY (`id`),
              CONSTRAINT `fk_orders_items_orders_id` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`)
  ON DELETE CASCADE,
    CONSTRAINT `fk_orders_items_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
  ON DELETE CASCADE
    
)ENGINE = InnoDB DEFAULT CHARACTER SET = latin1;



CREATE TABLE IF NOT EXISTS `payment_type`(
	`id` INT NOT NULL ,
  `payment_type_name` varchar(50),
  `note` text,
  `created_at` datetime,
  primary key(`id`)
  )ENGINE = InnoDB DEFAULT CHARACTER SET = latin1;



CREATE TABLE IF NOT EXISTS `payment`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`orders_id` INT,
      `payment_type_id` int,
	`total_price` DECIMAL(19,4),
    `note` text,
    `created_at` datetime,
      PRIMARY KEY (`id`),
      CONSTRAINT `fk_payment_payment_type` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`id`)
  ON DELETE CASCADE,
          CONSTRAINT `fk_payment_orders_id` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`)
  ON DELETE CASCADE
  )ENGINE = InnoDB DEFAULT CHARACTER SET = latin1;







