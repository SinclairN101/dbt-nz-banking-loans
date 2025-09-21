with loan_source as (
    select *
    from {{ ref('stg_nz_loan_applications') }}
)

select
    -- primary key
    loan_id,

    -- financial measures
    loan_amount,
    gross_annual_income,
    declared_income,
    verified_income,

    -- risk / ratios
    credit_score,
    interest_rate,
    credit_utilization,
    revolving_balance,
    debt_to_income_ratio,

    -- numeric measures
    num_open_accounts,
    delinquencies_past_2yrs,
    credit_inquiries_6m,
    funding_days,
    ip_fraud_risk_score,
    device_changes_30d,
    income_mismatch_ratio,

    -- booleans
    is_document_mismatch,
    is_loan_default,
    is_fraud

from loan_source
