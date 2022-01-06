select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT order_id, SUM(amount) as total_amount 
FROM `dbt-fundamentals-337218`.`dbt_jbauserman`.`stg_payments`
GROUP BY order_id
HAVING total_amount < 0
      
    ) dbt_internal_test