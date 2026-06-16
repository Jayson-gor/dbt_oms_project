SELECT
    OrderItemID,
    OrderID,
    ProductID,
    Quantity,
    UnitPrice,
    Quantity * UnitPrice AS TotalPrice,
    Updated_at,
    CURRENT_TIMESTAMP() AS dbt_updated_at
FROM
    {{ source('landing', 'ordritms') }}