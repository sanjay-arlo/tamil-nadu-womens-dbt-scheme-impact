from pathlib import Path
import csv
p=Path(__file__).parents[1]/'sample_kmut_district_coverage.csv'
req={'district','estimated_eligible_population','enrolled_beneficiaries','coverage_pct','rejected_applications','appeals','annual_cost_current_inr','annual_cost_proposed_inr'}
with p.open(newline='',encoding='utf-8') as f: rows=list(csv.DictReader(f))
missing=sorted(req-set(rows[0])) if rows else sorted(req)
invalid=sum(1 for r in rows if int(r['estimated_eligible_population'])<0 or int(r['enrolled_beneficiaries'])<0 or not 0<=float(r['coverage_pct'])<=100 or int(r['rejected_applications'])<0 or int(r['appeals'])<0)
print({'rows':len(rows),'missing_columns':missing,'invalid_rows':invalid})
