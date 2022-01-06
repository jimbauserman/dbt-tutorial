
    
    

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
    'shipped','completed','return_pending','returned','placed'
)


