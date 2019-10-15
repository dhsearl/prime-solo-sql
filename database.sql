-- Question 1
SELECT * FROM "accounts"
WHERE city='chicago';

-- Question 2
SELECT * FROM "accounts"
WHERE "username" ILIKE '%a%';

-- Question 3
SELECT * FROM "accounts"
WHERE account_balance=0.00 AND transactions_attempted=0;

UPDATE "accounts" SET account_balance = '10.00'
WHERE account_balance=0.00 AND transactions_attempted=0;

-- Question 4
SELECT * FROM "accounts"
WHERE transactions_attempted >= 9;

-- Question 5
SELECT username, account_balance FROM "accounts"
ORDER BY account_balance LIMIT 3;

-- Question 6
SELECT username, account_balance FROM "accounts"
ORDER BY account_balance ASC LIMIT 3;

-- Question 7
SELECT * FROM "accounts"
WHERE account_balance >100;

-- Question 8
INSERT INTO accounts(username, city, transactions_completed, transactions_attempted, account_balance) 
VALUES ('dave','minneapolis',0,0,1000.00);

-- Question 9
SELECT * FROM "accounts"
WHERE (city='miami' OR city='phoenix') AND transactions_completed <5;

DELETE FROM "accounts"
WHERE (city='miami' OR city='phoenix') AND transactions_completed <5;

-- Question Stretch 1
SELECT * FROM "accounts"
WHERE username='anthony';

UPDATE "accounts" SET city="Santa Fe"
WHERE username='anthony';

-- Question Stretch 2
SELECT * FROM "accounts"
WHERE username='grace';

DELETE FROM "accounts"
WHERE user_id=9;

-- Question Stretch 3
UPDATE "accounts" SET account_balance = account_balance + 20000.00
WHERE username='travis'
RETURN username,account_balance;

-- Question Stretch 4
ALTER TABLE accounts
ADD COLUMN lastname VARCHAR(12);
