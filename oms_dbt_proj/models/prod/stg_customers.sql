SELECT
    CustomerID,
    FirstName,
    LastName,
    Email,
    Phone,
    Address,
    City,
    State,
    ZipCode,
    Updated_at,
    CONCAT(FirstName, ' ', LastName) AS CustomerName,
    CURRENT_TIMESTAMP() AS dbt_updated_at
FROM
    {{ source('landing', 'cust')}}