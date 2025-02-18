SELECT
    id,
    created_at,
    title as product_name,
    category,
    ean,
    vendor,
    price
FROM 
{{ ref("bronze_products_snapshot") }}
WHERE dbt_valid_to IS NULL