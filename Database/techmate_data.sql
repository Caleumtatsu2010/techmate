
INSERT INTO account_type(id, account_type, permissions)  VALUES (1, 'admin', 'full');
INSERT INTO account_type(id, account_type, permissions)  VALUES (2, 'staff', '');
INSERT INTO account_type(id, account_type, permissions)  VALUES (3, 'user', '');


INSERT INTO account(username, password, account_typeId, account_status)  VALUES ('admin', '1234', '1', 'active');
INSERT INTO account(username, password, account_typeId, account_status)  VALUES ('staff', '1234', '2', 'active');
INSERT INTO account(username, password, account_typeId, account_status)  VALUES ('user', '1234', '3', 'deactive');





-- INSERT INTO product_category  VALUES (1, 'dfd', 'ddd', '00:00:00 00:00:00', '00:00:00 00:00:00');


INSERT INTO discount values (2, 'sale 50%', '','0.50', true, '2022-02-09 20:46:08', '2022-02-09 20:46:08' );
INSERT INTO product_inventory values (2, '4', '2022-02-09 20:46:08', '2022-02-09 20:46:08' );
INSERT INTO supplier VALUES (1, '', '', '', 5, 5,  '', '', '', '', '', '', '', '', '');

INSERT INTO `techmate`.`product` (`id`, `name`, `price`, `unit_price`, `category_id`, `discount_id`, `inventory_id`, `supplier_id`) VALUES ('1', 'keychron', '2000', 'dong', '2', '2', '2', '1');

INSERT INTO `techmate`.`product_colors` (`id`, `color`, `product_id`) VALUES ('1', 'red', '1');
INSERT INTO `techmate`.`product_colors` (`id`, `color`, `product_id`) VALUES ('2', 'blue', '1');
INSERT INTO `techmate`.`product_colors` (`id`, `color`, `product_id`) VALUES ('3', 'green', '1');


SELECT quantity, name FROM product_inventory INNER JOIN product ON product_inventory.id = product.inventory_id where product.id = 1;

SELECT * FROM product_colors INNER JOIN product ON  product_colors.product_id = product.id  where product.id = 1;



SELECT * FROM product_category INNER JOIN product ON  product_category.id = product.category_id  where product.category_id = 2 limit 1;





select name from discount where id = 2;


INSERT INTO `techmate`.`product_reviews` (`star`, `content`, `author`, `product_id`) VALUES ('4', 'really bad', 'batman', '1');
INSERT INTO `techmate`.`product_reviews` (`star`, `content`, `author`, `product_id`) VALUES ('1', 'terrible', 'aaaaaa', '1');
















