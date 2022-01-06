select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from `dbt-fundamentals-337218`.`dbt_jbauserman`.`stg_payments`
where order_id is null



      
    ) dbt_internal_test