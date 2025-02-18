SELECT
    id,
    user_id,
    product_id,
    quantity,
    unit_price,
    date(date_format(created_at, 'yyyy-MM-dd')) AS order_date,
    -- quantity * unit_price AS order_amount,
    {{multiply_columns_and_round('quantity', 'unit_price', 3)}} AS order_amount
FROM
    {{ ref("bronze_orders") }}