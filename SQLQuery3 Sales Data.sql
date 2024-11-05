SELECT * FROM Salesdata
SELECT Product ,COUNT(Quantity)
AS NumOfTransactions
FROM Salesdata
GROUP BY Product

SELECT Product FROM Salesdata
GROUP BY Product
HAVING SUM(CASE WHEN OrderDate BETWEEN '2024-06-01' AND '2024-08-31' THEN 1 ELSE 0 END)=0