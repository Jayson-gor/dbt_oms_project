SELECT
    OS.StoreID,
    SUM(OFACT.Revenue) AS TotalRevenue
FROM
    {{ ref('stg_orders') }} OS
JOIN
    {{ ref('fact_order') }} OFACT ON OS.OrderID = OFACT.OrderID
GROUP BY 1
