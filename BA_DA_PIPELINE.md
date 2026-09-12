# BA / DA Delivery Pipeline

## Business question
Where is beneficiary coverage weakest, what causes the delivery gap, and what do alternative benefit levels cost?

## 01 — Excel — mandatory first pass
Clean district data, reconcile eligible vs enrolled beneficiaries, inspect rejections and appeals, use formulas/pivots, calculate coverage gaps and cost-per-beneficiary exceptions.

## 02 — Python (Pandas + NumPy) — optional
Use Python for EDA, coverage-distribution analysis, anomaly checks, repeatable transformations and scenario sensitivity when it adds measurable value.

## 03 — SQL — mandatory analytical layer
Use joins, CTEs, aggregations and window functions for coverage KPIs, district rankings, exception cohorts, cost analysis and fiscal scenarios.

## 04 — Power BI — mandatory decision interface
Build the model, DAX measures, slicers and drill-through: Programme Executive → District Delivery → Financial Scenario → Exception Management.

## 05 — Decision — mandatory outcome
Identify delivery bottlenecks and quantify the coverage-versus-cost trade-off with priority, owner, action, expected impact and assumptions.

## Acceptance criteria
Coverage and cost reconcile across stages; scenario assumptions are explicit; synthetic records are clearly labelled and not presented as official programme data.
