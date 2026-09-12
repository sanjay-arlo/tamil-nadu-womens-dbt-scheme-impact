-- Tamil Nadu Women DBT: reproducible programme-analysis SQL
-- MySQL 8+; portfolio data is synthetic/illustrative.

-- 1) District KPI layer
WITH district_kpi AS (
    SELECT district,
           estimated_eligible_population,
           enrolled_beneficiaries,
           coverage_pct,
           rejected_applications,
           appeals,
           annual_cost_current_inr,
           annual_cost_proposed_inr
    FROM sample_kmut_district_coverage
)
SELECT district, estimated_eligible_population, enrolled_beneficiaries,
       ROUND(coverage_pct,2) AS coverage_pct,
       rejected_applications, appeals,
       annual_cost_current_inr,
       annual_cost_proposed_inr,
       annual_cost_proposed_inr - annual_cost_current_inr AS incremental_cost_inr
FROM district_kpi
ORDER BY coverage_pct ASC;

-- 2) Window function: coverage rank and programme share
SELECT district,
       coverage_pct,
       enrolled_beneficiaries,
       DENSE_RANK() OVER (ORDER BY coverage_pct ASC) AS coverage_priority_rank,
       ROUND(100.0 * enrolled_beneficiaries /
             NULLIF(SUM(enrolled_beneficiaries) OVER (),0),2) AS beneficiary_share_pct
FROM sample_kmut_district_coverage
ORDER BY coverage_priority_rank;

-- 3) CTE + join: districts below peer average coverage
WITH programme_avg AS (
    SELECT AVG(coverage_pct) AS avg_coverage_pct
    FROM sample_kmut_district_coverage
), district_data AS (
    SELECT district, coverage_pct, rejected_applications, appeals
    FROM sample_kmut_district_coverage
)
SELECT d.district,
       ROUND(d.coverage_pct,2) AS district_coverage_pct,
       ROUND(p.avg_coverage_pct,2) AS programme_avg_coverage_pct,
       ROUND(p.avg_coverage_pct - d.coverage_pct,2) AS coverage_gap,
       d.rejected_applications, d.appeals
FROM district_data d
CROSS JOIN programme_avg p
WHERE d.coverage_pct < p.avg_coverage_pct
ORDER BY coverage_gap DESC;

-- 4) Exception queue
SELECT district, coverage_pct, rejected_applications, appeals,
       annual_cost_current_inr, annual_cost_proposed_inr,
       annual_cost_proposed_inr - annual_cost_current_inr AS incremental_cost_inr
FROM sample_kmut_district_coverage
WHERE coverage_pct < 80 OR rejected_applications > 100
ORDER BY coverage_pct ASC, rejected_applications DESC
LIMIT 25;

-- 5) Data-quality control
SELECT COUNT(*) AS invalid_rows
FROM sample_kmut_district_coverage
WHERE district IS NULL OR estimated_eligible_population IS NULL
   OR enrolled_beneficiaries IS NULL OR coverage_pct IS NULL
   OR annual_cost_current_inr IS NULL;
