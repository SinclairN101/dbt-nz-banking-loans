
    
    

select
    customer_id as unique_field,
    count(*) as n_records

from "dbt_dev"."nate_dbt_dev_staging"."stg_customer"
where customer_id is not null
group by customer_id
having count(*) > 1


