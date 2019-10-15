-- Question 1
SELECT * FROM "accounts"
WHERE city='chicago';

-- Question 2
SELECT * FROM "accounts"
WHERE "username" ILIKE '%a%';

-- Question 3
UPDATE "accounts" SET account_balance = '10.00'
WHERE account_balance=0.00 AND transactions_attempted=0;

-- Question 4
SELECT * FROM "accounts"
WHERE transactions_attempted >= 9;

-- Question 5
SELECT username, account_balance FROM "accounts"
ORDER BY account_balance LIMIT 3;

-- Question 6