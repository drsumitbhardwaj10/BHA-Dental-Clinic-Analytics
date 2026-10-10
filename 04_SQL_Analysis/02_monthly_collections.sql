SELECT
    strftime('%Y-%m', Visit_Date) AS Month,
    SUM(Amount_Collected) AS Total_Collections
FROM dental_transactions
GROUP BY strftime('%Y-%m', Visit_Date)
ORDER BY Month;
