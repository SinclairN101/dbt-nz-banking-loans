
  create view "dbt_dev"."nate_dbt_dev_marts"."dim_loan_applications__dbt_tmp"
    
    
  as (
    with loan_source as (
    select * 
    from "dbt_dev"."nate_dbt_dev_staging"."stg_nz_loan_applications"
)

select
    -- primary key
    loan_id,

    -- dimensions
    customer_age,
    customer_gender,
    customer_region,
    employment_status,
    home_ownership,

    -- loan attributes
    loan_application_type,
    loan_purpose,
    credit_grade,
    credit_sub_grade,
    loan_term_months,

    -- dates/timestamps
    application_date,
    issue_date,
    first_payment_date

from loan_source
  );