SELECT OrderID
FROM {{ ref('fact_order') }}
WHERE Revenue < 0 