
INSERT INTO account_type(id, account_type, permissions)  VALUES (1, 'admin', 'full');
INSERT INTO account_type(id, account_type, permissions)  VALUES (2, 'staff', '');
INSERT INTO account_type(id, account_type, permissions)  VALUES (3, 'user', '');


INSERT INTO account(username, password, account_typeId, account_status)  VALUES ('admin', '1234', '1', 'active');
INSERT INTO account(username, password, account_typeId, account_status)  VALUES ('staff', '1234', '2', 'active');
INSERT INTO account(username, password, account_typeId, account_status)  VALUES ('user', '1234', '3', 'deactive');





INSERT INTO account(username, password, account_typeId, account_status)  VALUES ('user', '1234', '3', 'deactive');

INSERT INTO account(username, password, account_typeId, account_status)  VALUES ('user', '1234', '3', 'deactive');

INSERT INTO account(username, password, account_typeId, account_status)  VALUES ('user', '1234', '3', 'deactive');



