SELECT 
    orders_id
    ,round(purchase_price*quantity,2) as purchase_cost
    ,round(revenue - (purchase_price*quantity),2) as margin
FROM {{ ref('stg_gz_raw__sales') }}
JOIN {{ ref('stg_gz_raw__product') }}
USING(products_id)

