# Industry BA Delivery Pack — Tamil Nadu Women's DBT Programme

## Executive decision
Assess programme reach, payment friction and fiscal impact by district, and quantify the cost of alternative benefit levels.

## Stakeholders
Programme administration, district officers, finance, payment operations, grievance/appeal teams and policy leadership.

## Requirements
- Compare eligible population with enrolled beneficiaries.
- Track coverage, rejection and appeal signals.
- Model current-versus-scenario programme cost.
- Rank districts with delivery friction.
- Protect beneficiary privacy in production.

## KPI dictionary
Eligible population, enrolled beneficiaries, coverage %, rejected applications, appeals, current annual cost and proposed annual cost.

## Analytical model
`dim_district` → `fact_beneficiary_delivery` + `fact_payment_outcome` → coverage/cost KPI layer.

## Scenario model
Test monthly-benefit, coverage-uplift and rejection-reduction assumptions to quantify financial and operational impact.

## Acceptance criteria
Coverage reproduces from numerator/denominator, cost scenarios reconcile, district filters cascade and sensitive operational data is not exposed in the portfolio layer.

## Production controls
Governed beneficiary counts, payment reconciliation, reason-code taxonomy, privacy controls, audit trails and access governance.

## Portfolio note
Synthetic illustrative data only; scenario costs are not policy recommendations.
