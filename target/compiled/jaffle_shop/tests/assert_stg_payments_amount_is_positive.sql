SELECT order_id, SUM(amount) as total_amount 
FROM `dbt-fundamentals-337218`.`dbt_jbauserman`.`stg_payments`
GROUP BY order_id
HAVING total_amount < 0