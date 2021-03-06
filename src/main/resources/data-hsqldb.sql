
INSERT INTO CATEGORY(ID, CATEGORY_NAME, TRANSACTION_TYPE) VALUES (1, 'Eating out', 'EXPENSE');
INSERT INTO CATEGORY(ID, CATEGORY_NAME, TRANSACTION_TYPE) VALUES (2, 'Lunch', 'EXPENSE');
INSERT INTO CATEGORY(ID, CATEGORY_NAME, TRANSACTION_TYPE) VALUES (3, 'Coffee to go', 'EXPENSE');
INSERT INTO CATEGORY(ID, CATEGORY_NAME, TRANSACTION_TYPE) VALUES (4, 'Shopping', 'EXPENSE');
INSERT INTO CATEGORY(ID, CATEGORY_NAME, TRANSACTION_TYPE) VALUES (5, 'Salary', 'INCOME');
INSERT INTO CATEGORY(ID, CATEGORY_NAME, TRANSACTION_TYPE) VALUES (6, 'Pension', 'INCOME');

INSERT INTO EXPENSE(ID, TRANSACTION_TYPE, AMOUNT, USER_ID, TRANSACTION_DATE, CATEGORY_ID) VALUES (1, 'supper', 7000.11, 1, parsedatetime('17-09-2017 18:47:52.690', 'dd-MM-yyyy hh:mm:ss.SS'), 1);
INSERT INTO EXPENSE(ID, TRANSACTION_TYPE, AMOUNT, USER_ID, TRANSACTION_DATE, CATEGORY_ID) VALUES (2, 'T-Shirt', 30.11, 2, parsedatetime('17-09-2017 18:47:52.690', 'dd-MM-yyyy hh:mm:ss.SS'), 2);
INSERT INTO EXPENSE(ID, TRANSACTION_TYPE, AMOUNT, USER_ID, TRANSACTION_DATE, CATEGORY_ID) VALUES (3, 'dinner', 600.11, 2, parsedatetime('17-02-2017 18:47:52.690', 'dd-MM-yyyy hh:mm:ss.SS'), 1);

INSERT INTO INCOME(ID, TRANSACTION_TYPE, AMOUNT, USER_ID, TRANSACTION_DATE, CATEGORY_ID) VALUES (1, 'salary', 50000, 1, parsedatetime('10-02-2017 18:47:52.690', 'dd-MM-yyyy hh:mm:ss.SS'), 3);
INSERT INTO INCOME(ID, TRANSACTION_TYPE, AMOUNT, USER_ID, TRANSACTION_DATE, CATEGORY_ID) VALUES (2, 'salary', 50000, 1, parsedatetime('25-02-2017 18:47:52.690', 'dd-MM-yyyy hh:mm:ss.SS'), 3);
INSERT INTO INCOME(ID, TRANSACTION_TYPE, AMOUNT, USER_ID, TRANSACTION_DATE, CATEGORY_ID) VALUES (3, 'salary', 50000, 1, parsedatetime('10-03-2017 18:47:52.690', 'dd-MM-yyyy hh:mm:ss.SS'), 3);

INSERT INTO BUDGET(ID, BUDGET_TYPE, AMOUNT, CATEGORY_ID) VALUES (0, 'DAILY', 100, null);
INSERT INTO BUDGET(ID, BUDGET_TYPE, AMOUNT, CATEGORY_ID) VALUES (1, 'MONTHLY', 10000, 2);
INSERT INTO BUDGET(ID, BUDGET_TYPE, AMOUNT, CATEGORY_ID) VALUES (2, 'WEEKLY', 1000, 3);
INSERT INTO BUDGET(ID, BUDGET_TYPE, AMOUNT, CATEGORY_ID) VALUES (3, 'WEEKLY', 1000, 4);
INSERT INTO BUDGET(ID, BUDGET_TYPE, AMOUNT, CATEGORY_ID) VALUES (4, 'WEEKLY', 1000, 1);
