SELECT c.Customer_ID, c.Name, c.Province, c.Income, total_amount
FROM customer c
JOIN (SELECT Customer_ID, SUM(Amount) AS total_amount
FROM transaction
GROUP BY Customer_ID) t ON c.Customer_ID = t.Customer_ID
WHERE t.total_amount = (SELECT MAX(total_sum)
FROM (SELECT Customer_ID, SUM(Amount) AS total_sum
FROM transaction
GROUP BY Customer_ID) sub);
