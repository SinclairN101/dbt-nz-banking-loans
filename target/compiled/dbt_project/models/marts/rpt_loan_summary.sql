with loan_applications as (
    select * 
    from "dbt_dev"."nate_dbt_dev_marts"."dim_loan_applications"
),

loan_performance as (
    select * 
    from "dbt_dev"."nate_dbt_dev_marts"."fct_loan_application"
),

loan_data as (
    select
        perf.loan_id,
        perf.loan_amount,
        perf.interest_rate,
        perf.debt_to_income_ratio,
        perf.funding_days,
        perf.is_loan_default,
        app.loan_purpose,
        app.credit_grade
    from loan_performance  perf
    left join loan_applications app 
        on perf.loan_id = app.loan_id
),

loan_metrics as (
    select
        -- overall portfolio metrics
        count(distinct loan_id) as total_loans,
        sum(loan_amount) as total_loan_amount,
        avg(loan_amount) as avg_loan_amount,
        avg(interest_rate) as avg_interest_rate,
        avg(debt_to_income_ratio) as avg_debt_to_income_ratio,
        avg(funding_days) as avg_funding_days,

        -- default stats
        sum(case when is_loan_default then 1 else 0 end) as total_defaults,
        100.0 * sum(case when is_loan_default then 1 else 0 end) / count(*) as default_rate_pct
    from loan_data
)

select * from loan_metrics