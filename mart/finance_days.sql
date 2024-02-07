SELECT 
date_date
,COUNT(orders_id) AS nb_transactions
,ROUND(SUM(revenue),2) as revenue
,ROUND(SUM(margin),2) as margin
,ROUND(SUM(operational_margin),2) as operational_margin

FROM {{ ref('int_orders_operational') }}
GROUP BY date_date
ORDER BY date_date DESC