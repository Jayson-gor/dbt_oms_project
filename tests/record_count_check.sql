-- Define the expected record count for each source table
{% set expected_counts = {
    'cust': 100,
    'ordr': 300,
    'ordritms': 1651,
    'products': 200,
    'stores': 10,
    'suppliers': 10
} %}

-- Test the count of records in each source table
{% for source_name, expected_count in expected_counts.items() %}
SELECT '{{ source_name }}' AS table_name, COUNT(*) AS actual_count
FROM {{ source('landing', source_name) }}
HAVING COUNT(*) < {{ expected_count }}
{% if not loop.last %} UNION ALL {% endif %}
{% endfor %}
