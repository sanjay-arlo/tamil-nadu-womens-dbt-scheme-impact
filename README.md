# Tamil Nadu Women’s DBT Scheme Impact Analysis

> **Business Analyst / Data Analyst portfolio case study** evaluating beneficiary coverage, application friction, programme cost and district-level delivery performance.

## 🚀 Live Dashboard

**[Open the interactive dashboard](https://sanjay-arlo.github.io/tamil-nadu-womens-dbt-scheme-impact/)**

## Executive summary

This case frames public-programme delivery as a measurable business process: reconcile eligible and enrolled populations, identify rejection and appeal friction, quantify cost scenarios, segment district performance, and turn coverage gaps into management actions.

## Business problem

**How effectively is the programme reaching eligible women, where is delivery friction concentrated, and what would different benefit levels cost?**

## Analyst workflow

**Excel → Python / Pandas / NumPy (optional) → SQL / MySQL → Power BI → Decision**

### 1. Excel — first-pass control

Clean district records, reconcile eligible versus enrolled beneficiaries, calculate coverage and cost-per-beneficiary, build pivots and identify district exceptions.

### 2. Python — optional analytical layer

Use **Pandas + NumPy** for EDA, coverage-distribution analysis, repeatable transformations and cost-scenario testing when it adds value.

### 3. SQL / MySQL — mandatory analytical layer

Use CTEs, joins, aggregations, window functions, segmentation, ranking and exception queues to calculate coverage, rejection burden, appeals and fiscal scenarios.

### 4. Power BI — mandatory executive layer

Build governed DAX measures, slicers and drill-through around **Programme Executive → District Delivery → Financial Scenario → Exception Management**.

### 5. Decision — mandatory outcome

Identify delivery bottlenecks and quantify the trade-off between **coverage improvement, operational action, ownership and programme cost**.

## Technical stack

- **Excel** — cleaning, reconciliation, formulas, pivots, exception analysis and scenario planning
- **SQL / MySQL** — programme KPIs, segmentation, ranking and exception queues
- **Python / Pandas / NumPy** — optional EDA, transformations and cost/sensitivity analysis
- **HTML / CSS / JavaScript** — interactive live dashboard
- **Chart.js** — browser-based visualisation
- **GitHub Pages** — live dashboard hosting
- **Power BI** — compatible dashboard design direction, data model, DAX and executive reporting specification
- **GitHub** — version control and documentation

## Dashboard story

1. **Programme Executive** — coverage, beneficiaries and cost
2. **District Delivery** — coverage and delivery-friction patterns
3. **Exception Management** — rejection/appeal prioritisation
4. **Financial Scenario** — benefit-level and cost sensitivity
5. **Decision Queue** — district actions and ownership
6. **Governance View** — assumptions, controls and limitations

## KPI framework

- **Coverage %** = enrolled beneficiaries / estimated eligible population × 100
- **Rejection burden** = rejected applications within selected scope
- **Appeal burden** = appeals within selected scope
- **Annual cost** = benefit level × beneficiaries × 12
- **Delivery priority** = low coverage + high friction + material beneficiary population

## Business Analyst deliverables

Business case, stakeholder/problem framing, KPI dictionary, Excel workflow, optional Python analysis, SQL/MySQL analysis, Power BI/DAX specification, interactive dashboard, district exception queue and production-upgrade plan.

## Data quality & governance

Coverage and cost reconciliation, numeric/range checks, duplicate review, district master-data consistency and clear scenario assumptions are part of the control framework. Privacy and auditability are required before operational use.

## Production upgrade path

Use governed beneficiary records, payment-success logs, rejection reasons, appeal outcomes and district master data. Add privacy controls, reconciliation rules, audit trails, source lineage, refresh SLAs and approved policy parameters.

## Important limitation

This is a **portfolio case study using synthetic / illustrative data**. Scenario costs are analytical demonstrations and are not a policy recommendation or official programme evaluation.

## Author

**Sanjay Arlo**  
Business Analyst / Data Analyst Portfolio  
[GitHub](https://github.com/sanjay-arlo)
