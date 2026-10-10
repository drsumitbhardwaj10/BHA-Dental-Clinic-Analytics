# BHA Dental Clinic Analytics — SQL Analysis Report

## 1. Project Overview

This project demonstrates SQL-based financial analysis for a
fictional dental clinic dataset covering January–March 2026.

**Important:** All records and financial figures are fictional and
are intended solely for portfolio demonstration.

## 2. Tools and Technologies

- SQLite
- SQL
- Python
- pandas
- Jupyter Notebook

## 3. Dataset

- Source: BHA Dental Clinic cleaned demonstration workbook
- Records analyzed: 35 transactions
- Analysis period: January–March 2026
- SQL table: `dental_transactions`

## 4. Overall Financial KPIs

| Metric | Result |
|---|---:|
| Total Charges | ₹80,300 |
| Total Collections | ₹61,100 |
| Total Outstanding | ₹19,200 |
| Collection Rate | 76.09% |

## 5. Monthly Collections

| Month | Collections |
|---|---:|
| January 2026 | ₹33,900 |
| February 2026 | ₹17,700 |
| March 2026 | ₹9,500 |

Total collections across the three months were ₹61,100.

## 6. Treatment-Level Analysis

| Treatment | Charges | Collections | Outstanding | Collection Rate |
|---|---:|---:|---:|---:|
| Crown | ₹30,000 | ₹21,000 | ₹9,000 | 70.00% |
| RCT | ₹28,000 | ₹21,000 | ₹7,000 | 75.00% |
| Scaling | ₹9,000 | ₹8,000 | ₹1,000 | 88.89% |
| Filling | ₹5,000 | ₹4,300 | ₹700 | 86.00% |
| Extraction | ₹4,800 | ₹4,300 | ₹500 | 89.58% |
| Consultation | ₹3,500 | ₹2,500 | ₹1,000 | 71.43% |

Crown and RCT together account for ₹16,000 of the ₹19,200
outstanding balance in this demonstration dataset.

## 7. SQL Techniques Demonstrated

- `SUM()` for financial aggregation
- `GROUP BY` for monthly and treatment summaries
- `strftime()` for month-level grouping
- `ROUND()` for collection-rate calculations
- `NULLIF()` to guard against division by zero
- `ORDER BY` for chronological and financial ranking
- Python–SQL reconciliation for validation

## 8. Validation

SQL outputs were compared against the corresponding Python results.

- Overall financial KPIs: Passed
- Monthly collections: Passed
- Treatment-level financial totals: Passed

All three SQL-to-Python reconciliation checks passed.

## 9. Deliverables

- SQLite database: `bha_dental_analytics.db`
- SQL queries for overall KPIs, monthly collections and treatment summaries
- CSV exports of all three SQL analyses

## 10. Limitations

The dataset is fictional and small. The findings should not be
interpreted as actual clinic performance or used to make real
operational or financial decisions.

## 11. Conclusion

This project demonstrates a reproducible SQL workflow for
summarizing dental transaction data, analyzing collections and
outstanding balances, and validating SQL results against Python.
