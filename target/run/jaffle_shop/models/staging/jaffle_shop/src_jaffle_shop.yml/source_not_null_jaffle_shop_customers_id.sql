select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from `dbt-tutorial`.`jaffle_shop`.`customers`
where id is null



      
    ) dbt_internal_test