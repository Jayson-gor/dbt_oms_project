SELECT
    OS.StoreID,
    SUM(OFACT.Revenue) AS ActualSales,
    SUM(ST.SalesTarget) AS TargetSales
FROM
    {{ ref('stg_orders') }} OS
JOIN
    {{ ref('fact_order') }} OFACT ON OS.OrderID = OFACT.OrderID
JOIN
    {{ ref('salestargets') }} ST ON ST.StoreID = OS.StoreID
GROUP BY 1