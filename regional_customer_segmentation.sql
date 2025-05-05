SELECT Customer_ID, Name, Province, Income
FROM customer
WHERE Province = 'Texas'
UNION
SELECT Customer_ID, Name, Province, Income
FROM customer
WHERE Province = 'Florida';
