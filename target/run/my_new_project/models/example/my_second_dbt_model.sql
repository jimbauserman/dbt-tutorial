

  create or replace view `dbt-fundamentals-337218`.`dbt_jbauserman`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `dbt-fundamentals-337218`.`dbt_jbauserman`.`my_first_dbt_model`
where id = 1;

