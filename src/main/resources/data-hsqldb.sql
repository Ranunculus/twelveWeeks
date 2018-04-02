
INSERT INTO CATEGORY(ID, CATEGORY_NAME, CATEGORY_LIMIT) VALUES (1, 'Eating out', 1700);
INSERT INTO CATEGORY(ID, CATEGORY_NAME, CATEGORY_LIMIT) VALUES (2, 'Shopping', 17000);
INSERT INTO CATEGORY(ID, CATEGORY_NAME, CATEGORY_LIMIT) VALUES (3, 'Salary', 100000);
INSERT INTO CATEGORY(ID, CATEGORY_NAME, CATEGORY_LIMIT) VALUES (4, 'Salary', 100000);
INSERT INTO CATEGORY(ID, CATEGORY_NAME, CATEGORY_LIMIT) VALUES (5, 'Salary', 100000);
INSERT INTO CATEGORY(ID, CATEGORY_NAME, CATEGORY_LIMIT) VALUES (6, 'Salary', 100000);

INSERT INTO EXPENSE(ID, TRANSACTION_TYPE, AMOUNT, CURRENCY, USER_ID, TRANSACTION_DATE, CATEGORY_ID) VALUES (1, 'supper', 7000.11, 'RUB', 1, parsedatetime('17-09-2017 18:47:52.690', 'dd-MM-yyyy hh:mm:ss.SS'), 1);
INSERT INTO EXPENSE(ID, TRANSACTION_TYPE, AMOUNT, CURRENCY, USER_ID, TRANSACTION_DATE, CATEGORY_ID) VALUES (2, 'T-Shirt', 30.11, 'USD', 2, parsedatetime('17-09-2017 18:47:52.690', 'dd-MM-yyyy hh:mm:ss.SS'), 2);
INSERT INTO EXPENSE(ID, TRANSACTION_TYPE, AMOUNT, CURRENCY, USER_ID, TRANSACTION_DATE, CATEGORY_ID) VALUES (3, 'dinner', 600.11, 'RUB', 2, parsedatetime('17-02-2017 18:47:52.690', 'dd-MM-yyyy hh:mm:ss.SS'), 1);

INSERT INTO INCOME(ID, TRANSACTION_TYPE, AMOUNT, CURRENCY, USER_ID, TRANSACTION_DATE, CATEGORY_ID) VALUES (4, 'salary', 50000, 'RUB', 1, parsedatetime('10-02-2017 18:47:52.690', 'dd-MM-yyyy hh:mm:ss.SS'), 3);
INSERT INTO INCOME(ID, TRANSACTION_TYPE, AMOUNT, CURRENCY, USER_ID, TRANSACTION_DATE, CATEGORY_ID) VALUES (5, 'salary', 50000, 'RUB', 1, parsedatetime('25-02-2017 18:47:52.690', 'dd-MM-yyyy hh:mm:ss.SS'), 3);
INSERT INTO INCOME(ID, TRANSACTION_TYPE, AMOUNT, CURRENCY, USER_ID, TRANSACTION_DATE, CATEGORY_ID) VALUES (6, 'salary', 50000, 'RUB', 1, parsedatetime('10-03-2017 18:47:52.690', 'dd-MM-yyyy hh:mm:ss.SS'), 3);

