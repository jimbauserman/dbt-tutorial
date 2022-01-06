select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        status as value_field,
        count(*) as n_records

    from `dbt-fundamentals-337218`.`dbt_jbauserman`.`stg_orders`
    group by status

)

select *
from all_values
where value_field not in (
    'shipped','completed','returned_pending'
)



      
    ) dbt_internal_test