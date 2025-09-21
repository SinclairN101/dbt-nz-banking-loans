

with source as (

    select
        id,
        company,
        last_name,
        first_name,
        email_address,
        job_title,
        business_phone,
        home_phone,
        mobile_phone,
        fax_number,
        address,
        city,
        state_province,
        zip_postal_code,
        country_region,
        web_page,
        notes,
        attachments
    from "dbt_dev"."nate_dbt_dev_raw"."customer"  -- seed table in raw schema

),

renamed as (

    select
        cast(id as integer) as customer_id,
        company as company_name,
        first_name,
        last_name,
        email_address,
        job_title,
        business_phone,
        mobile_phone,
        address,
        city,
        state_province as state,
        zip_postal_code as zip,
        country_region as country
    from source

)

select * from renamed