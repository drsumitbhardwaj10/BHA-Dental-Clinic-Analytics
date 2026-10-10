SELECT
    Treatment_Category,
    SUM(Amount_Charged) AS Total_Charges,
    SUM(Amount_Collected) AS Total_Collections,
    SUM(Outstanding_Amount) AS Total_Outstanding,
    ROUND(
        100.0 * SUM(Amount_Collected)
        / NULLIF(SUM(Amount_Charged), 0),
        2
    ) AS Collection_Rate_Percent
FROM dental_transactions
GROUP BY Treatment_Category
ORDER BY Total_Charges DESC;
