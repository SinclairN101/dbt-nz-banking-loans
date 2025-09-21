## Loan Applications 

{% docs loan_id %}

A unique number that identifies each loan application in the system.

{% enddocs %}

{% docs customer_age %}

The age of the applicant at the time of applying for the loan.

{% enddocs %}

{% docs customer_gender %}

The gender reported by the applicant.

{% enddocs %}

{% docs total_employment_years %}

How many years the applicant has been working in total across their career.

{% enddocs %}

{% docs current_employer_years %}

How long (in years) the applicant has been with their current employer.

{% enddocs %}

{% docs gross_annual_income %}

The applicant’s total income for the year before taxes or deductions.

{% enddocs %}

{% docs declared_income %}

The income amount that the applicant reported on their loan application.

{% enddocs %}

{% docs verified_income %}

The income amount that the lender was able to verify.

{% enddocs %}

{% docs credit_score %}

The applicant’s credit score at the time of application.

{% enddocs %}

{% docs loan_amount %}

The amount of money the applicant requested to borrow.

{% enddocs %}

{% docs loan_purpose %}

The reason the applicant says they need the loan, such as education, medical costs, or debt consolidation.

{% enddocs %}

{% docs interest_rate %}
The loan’s interest rate expressed as a percentage (for example, 24.5).
{% enddocs %}

{% docs credit_utilization %}

The share of the applicant’s available credit that is currently being used.

{% enddocs %}

{% docs revolving_balance %}

The current unpaid balance on the applicant’s revolving credit accounts, such as credit cards.

{% enddocs %}

{% docs debt_to_income_ratio %}

The share of the applicant’s income that already goes toward paying debts.

{% enddocs %}

{% docs customer_region %}

The region in New Zealand where the applicant lives.

{% enddocs %}

{% docs employment_status %}

The applicant’s current work status, such as employed, part-time, or unemployed.

{% enddocs %}

{% docs home_ownership %}

The applicant’s home situation, such as renting, owning outright, or paying a mortgage.

{% enddocs %}

{% docs loan_application_type %}

Whether the loan was applied for by one person (individual) or jointly by two people.

{% enddocs %}

{% docs credit_grade %}

A broad letter grade (A–G) assigned to the applicant that reflects their credit risk.

{% enddocs %}

{% docs credit_sub_grade %}

A more detailed credit grade (like A1, B3) that shows finer differences in credit risk.

{% enddocs %}

{% docs application_date %}

The date when the loan application was submitted.

{% enddocs %}

{% docs issue_date %}

The date when the loan was approved and issued.

{% enddocs %}

{% docs first_payment_date %}

The date when the first loan payment was due.

{% enddocs %}

{% docs num_open_accounts %}

The number of credit accounts the applicant currently has open.

{% enddocs %}

{% docs delinquencies_past_2yrs %}

The number of times the applicant has been late on payments in the past two years.

{% enddocs %}

{% docs credit_inquiries_6m %}

How many times lenders have checked the applicant’s credit in the past six months.

{% enddocs %}

{% docs loan_term_months %}

The length of the loan in months (for example, 36 or 60).

{% enddocs %}

{% docs ip_fraud_risk_score %}

A risk score based on the applicant’s IP address, used to help detect possible fraud.

{% enddocs %}

{% docs device_changes_30d %}

How many times the applicant used a different device in the past 30 days.

{% enddocs %}

{% docs income_mismatch_ratio %}

A ratio comparing what the applicant reported for income against what was verified.

{% enddocs %}

{% docs funding_days %}

How many days it took from the loan application being submitted to the loan being funded.

{% enddocs %}

{% docs is_document_mismatch %}

True if the applicant’s documents had mismatched information, false if they were consistent.

{% enddocs %}

{% docs is_loan_default %}

True if the applicant defaulted on the loan (stopped repaying), false otherwise.

{% enddocs %}

{% docs is_fraud %}

True if the loan was flagged as fraudulent, false otherwise.

{% enddocs %}

{% docs loan_key %}

A surrogate key generated from `loan_id`.  
This provides a stable, unique identifier for joining facts and dimensions, even if the natural key (`loan_id`) changes or needs to be combined with other keys in the future.

{% enddocs %}

## Reporting Table's 

{% docs total_loans %}

The total number of distinct loans in the portfolio. Each loan is counted once, even if it has multiple related records.

{% enddocs %}

{% docs total_loan_amount %}

The combined dollar value of all loan amounts funded. This represents the total exposure of the loan portfolio.

{% enddocs %}

{% docs avg_loan_amount %}

The average size of a funded loan. Calculated as total loan amount divided by the number of loans.

{% enddocs %}

{% docs avg_interest_rate %}

The average interest rate across all loans, expressed as a percentage. Higher values indicate a more expensive borrowing environment.

{% enddocs %}

{% docs avg_debt_to_income_ratio %}

The average borrower debt-to-income (DTI) ratio. This reflects how much debt borrowers carry compared to their income.

{% enddocs %}

{% docs avg_funding_days %}

The average number of calendar days between application and funding. Shorter funding times may reflect better operational efficiency.

{% enddocs %}

{% docs total_defaults %}

The total count of loans that have gone into default. A default generally signals that a borrower has stopped meeting repayment obligations.

{% enddocs %}

{% docs default_rate_pct %}

The percentage of loans in default, calculated as defaults divided by total loans. This is a key risk metric for assessing portfolio health.

{% enddocs %}
