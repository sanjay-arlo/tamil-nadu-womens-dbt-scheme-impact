-- Tamil Nadu Women DBT: coverage and cost analysis
SELECT district, estimated_eligible_population, enrolled_beneficiaries,
       ROUND(coverage_pct,2) AS coverage_pct,
       rejected_applications, appeals,
       annual_cost_current_inr, annual_cost_proposed_inr,
       (annual_cost_proposed_inr-annual_cost_current_inr) AS incremental_cost_inr
FROM sample_kmut_district_coverage
ORDER BY coverage_pct ASC;

SELECT ROUND(AVG(coverage_pct),2) AS avg_coverage_pct,
       SUM(enrolled_beneficiaries) AS beneficiaries,
       SUM(annual_cost_current_inr) AS current_cost_inr,
       SUM(annual_cost_proposed_inr) AS proposed_cost_inr
FROM sample_kmut_district_coverage;
