
  create view "dbt_dev"."nate_dbt_dev_staging"."stg_nz_loan_applications__dbt_tmp"
    
    
  as (
    with loan_application_source as (
    select * 
    from "dbt_dev"."nate_dbt_dev_raw"."newzealand_banking_loan_applications"
),

final as (

    select
        -- primary key
        loan_id,        

        -- dimensions
        age as customer_age,
        gender as customer_gender,
        employment_length as total_employment_years,
        employer_tenure_years as current_employer_years,
        annual_income as gross_annual_income,
        stated_income as declared_income,
        verified_income,
        credit_score,
        loan_amount,
    case lower(purpose)
        when 'education'          then 'Education'
        when 'medical'            then 'Medical'
        when 'vacation'           then 'Vacation'
        when 'debt_consolidation' then 'Debt Consolidation'
        when 'other'              then 'Other'
        when 'home_improvement'   then 'Home Improvement'
        when 'car'                then 'Car'
        when 'small_business'     then 'Small Business'
        else 'Not Specified'
    end as loan_purpose,
    round((interest_rate * 100)::numeric, 2) as interest_rate,
        util as credit_utilization,
        revol_bal as revolving_balance,
        dti as debt_to_income_ratio,
        region as customer_region,
        employment_status,
        home_ownership,
        initcap(application_type) as loan_application_type,
        grade as credit_grade,
        sub_grade as credit_sub_grade,

        -- date / time
        cast(application_date as date) as application_date,
        cast(issue_date as date) as issue_date,
        cast(first_payment_date as date) as first_payment_date,

        -- measures
        open_accounts as num_open_accounts,
        delinq_2yrs as delinquencies_past_2yrs,
        inquiries_6m as credit_inquiries_6m,
        term as loan_term_months,
        ip_risk_score as ip_fraud_risk_score,
        device_change_30d as device_changes_30d,
        income_mismatch_ratio as income_mismatch_ratio,
        days_to_fund as funding_days,

        -- boolean
        case when has_document_mismatch = 1 then true else false end as is_document_mismatch,
        case when "default" = 1 then true else false end as is_loan_default,
        case when fraud = 1 then true else false end as is_fraud

    from loan_application_source
)

select * from final
  );