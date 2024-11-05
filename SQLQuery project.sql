SELECT * FROM [dbo].[Customer Data]
SELECT Region,COUNT (CustomerID)
AS TotalCustomers
FROM [dbo].[Customer Data]
GROUP BY Region;

SELECT SubscriptionType,COUNT (CustomerID)
AS MostPopularSubscriptionType
FROM [dbo].[CustomerData]
GROUP BY SubscriptionType 
ORDER BY MostPopularSubscriptionType DESC;

SELECT CustomerName,subscriptionStart,SubscriptionEnd
FROM [dbo].[CustomerData]
WHERE Canceled = 'TRUE'

SELECT AVG(DATEDIFF(subscriptionStart,SubscriptionEnd)
AS AverageSubscriptionDuration
FROM [dbo].[CustomerData];


SELECT SubscriptionType,
SUM(Revenue) AS TotalRevenue
FROM [dbo].[CustomerData]
GROUP BY SubscriptionType
ORDER BY TotalRevenue DESC;

SELECT Top(3) Region,COUNT (CustomerID) AS Cancellations
FROM [dbo].[CustomerData] WHERE Canceled = 'TRUE'
GROUP BY Region
ORDER BY Cancellations DESC;

SELECT SUM(CASE WHEN Canceled = 'TRUE' THEN 1 ELSE 0 END) AS TotalCanceled,
SUM(CASE WHEN Canceled = 'FALSE' THEN 1 ELSE 0 END) AS TotalActive FROM [dbo].[CustomerData];
