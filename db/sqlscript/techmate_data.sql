
INSERT INTO account_type(id, account_type, permissions)  VALUES (1, 'admin', 'full');
INSERT INTO account_type(id, account_type, permissions)  VALUES (2, 'staff', '');
INSERT INTO account_type(id, account_type, permissions)  VALUES (3, 'user', '');


INSERT INTO account(username, password, account_typeId, account_status)  VALUES ('admin', '1234', '1', 'active');
INSERT INTO account(username, password, account_typeId, account_status)  VALUES ('staff', '1234', '2', 'active');
INSERT INTO account(username, password, account_typeId, account_status)  VALUES ('user', '1234', '3', 'deactive');





-- INSERT INTO product_category  VALUES (1, 'dfd', 'ddd', '00:00:00 00:00:00', '00:00:00 00:00:00');



INSERT INTO discount values (1, 'Sale 50%', '','0.50', true, '2022-02-09 20:46:08', '2022-02-09 20:46:08' );
INSERT INTO `techmate`.`discount` (`id`, `name`, `discount_percent`, `active`, `created_at`, `modified_at`) VALUES ('2', 'Sale 20%', '0.2', '1', '2022-02-09 20:46:08', '2022-02-09 20:46:08');
INSERT INTO `techmate`.`discount` (`id`, `name`, `discount_percent`, `active`, `created_at`, `modified_at`) VALUES ('3', 'Sale 10%', '0.10', '1', '2022-02-09 20:46:08', '2022-02-09 20:46:08');




INSERT INTO supplier VALUES (1, 'Keychron', 'a', '', 5, 5,  '', '', '', '', '', '', '', '', '');



INSERT INTO `techmate`.`product` (`id`, `name`,`desc`,`SKU`, `price`, `unit_price`, `color`, `category_id`, `discount_id`, `quantity`, `supplier_id`) VALUES ('1', 'Keychron','this is description', 'SKU1234', '250000', 'VNĐ','black', '1', '1', '6', '1');
INSERT INTO `techmate`.`product` (`id`, `name`,`desc`,`SKU`, `price`, `unit_price`, `color`, `category_id`, `discount_id`, `quantity`, `supplier_id`) VALUES ('2', 'Akko','this is description', 'SKU1234', '250000',  'EUR','blue','1', '1', '10', '1');
INSERT INTO `techmate`.`product` (`id`, `name`,`desc`,`SKU`, `price`, `unit_price`, `color`, `category_id`, `discount_id`, `quantity`, `supplier_id`) VALUES ('3', 'Filco','this is description', 'SKU1234', '250000','USD','red','2', '2', '5', '2');



INSERT INTO `techmate`.`product_reviews` (`star`, `content`, `user_id`, `product_id`) VALUES ('4', 'this product is really bad. I just bought it yesyterday and it broke this morning. I swear I would never buy it again', '1', '1');
INSERT INTO `techmate`.`product_reviews` (`star`, `content`, `user_id`, `product_id`) VALUES ('1', 'terrible is not enought to describe the feeling of this product', '1', '1');



INSERT INTO `techmate`.`product_category` (`id`, `name`, `created_at`, `modified_at`) VALUES ('1', 'Mechanical Keyboard', '11:11:11 11:11:11', '11:11:11 11:11:11');

INSERT INTO `techmate`.`product_category` (`id`, `name`, `created_at`, `modified_at`) VALUES ('2', 'Touch Keyboard', '11:11:11 11:11:11', '11:11:11 11:11:11');

INSERT INTO `techmate`.`product_category` (`id`, `name`, `created_at`, `modified_at`) VALUES ('3', 'Wireless Keyboard', '11:11:11 11:11:11', '11:11:11 11:11:11');


INSERT INTO `techmate`.`user` (`id`, `account_id`, `first_name`, `last_name`, `citizen_id`, `email`, `business_phone`, `mobile_phone`, `created_at`, `modified_at`) VALUES ('1', '1', 'long', 'hoang', '0302000', 'abc@gmail.com', '1234567', '3456789', '22:02:15 11:11:11', '22:02:15 11:11:11');

INSERT INTO `techmate`.`user` (`id`, `account_id`, `first_name`, `last_name`, `citizen_id`, `email`, `business_phone`, `mobile_phone`, `created_at`, `modified_at`) VALUES ('2', '2', 'hoa', 'mai', '2222', 'abc@gmail.com', '222', '222', '2022-02-15 11:11:11', '2022-02-15 11:11:11');

INSERT INTO `techmate`.`shippers` (`id`, `citizen_id`, `first_name`, `last_name`, `email_address`, `business_phone`, `mobile_phone`, `address_line`, `town`, `district`, `city`, `state_province`, `country`, `status`) VALUES ('2', '01234', 'amy', 'pascal', 'abc@123', '1111', '1111', 'hanoi', 'new york', '9', 'america', 'alabama', 'vietnam', 'deactive');



INSERT INTO `techmate`.`category_type` (`id`, `name`) VALUES ('1', 'Electronics');


SELECT quantity, name FROM product_inventory INNER JOIN product ON product_inventory.id = product.inventory_id where product.id = 1;

SELECT * FROM product_colors INNER JOIN product ON  product_colors.product_id = product.id  where product.id = 1;

SELECT * FROM product_colors  where product_id = 1;

select * from product_reviews where product_id= 1;

select name from discount where id = 2;

select * from account where username = "admin" and password = "1234"
















