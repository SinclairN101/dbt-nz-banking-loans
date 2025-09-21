
    
    

select
    loan_id as unique_field,
    count(*) as n_records

from "dbt_dev"."nate_dbt_dev_marts"."dim_loan_applications"
where loan_id is not null
group by loan_id
having count(*) > 1


