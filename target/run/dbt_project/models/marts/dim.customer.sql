
  
    

  create  table "dbt_dev"."nate_dbt_dev_mart"."dim.customer__dbt_tmp"
  
  
    as
  
  (
    

with customers as (

    select
        customer_id,
        company_name,
        concat(first_name, ' ', last_name) as full_name,
        email_address,
        job_title as customer_title,
        business_phone,
        mobile_phone,
        address,
        city,
        state,
        zip,
        country
    from "dbt_dev"."nate_dbt_dev_staging"."stg_customer"

)

select * from customers
  );
  