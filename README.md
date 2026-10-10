# BHA Dental Clinic Analytics

**Healthcare Financial Analytics | Python | SQL | Excel | Power BI**

An end-to-end healthcare financial analytics portfolio project demonstrating transaction-level data preparation, revenue and collections analysis, SQL reporting, cross-tool reconciliation, and Power BI visualization.

> **Data disclaimer:** All records and figures in this project are fictional and intended solely for portfolio demonstration. They do not represent actual clinic performance or real patient transactions.

## Project Overview

| Project Detail | Description |
|---|---|
| Organization | Bhardwaj Healthcare Analytics (BHA) |
| Reporting Period | January–March 2026 |
| Currency | Indian Rupees (INR) |
| Dataset | 35 fictional dental transactions |
| Tools | Excel, Python, pandas, SQLite, SQL, Power BI |

## Business Questions

- What were the total charges and collections?
- How much remained outstanding?
- What was the collection rate?
- How did collections vary by month and treatment category?
- Do Python and SQL produce consistent financial results?

## Key Financial Results

| Metric | Result |
|---|---:|
| Total Charges | ₹80,300 |
| Total Collections | ₹61,100 |
| Outstanding Balance | ₹19,200 |
| Collection Rate | 76.09% |
| Transactions | 35 |

The collection rate is calculated as total collections divided by total charges.

## Monthly Collections

| Month | Collections |
|---|---:|
| January 2026 | ₹33,900 |
| February 2026 | ₹17,700 |
| March 2026 | ₹9,500 |
| **Total** | **₹61,100** |

Collections declined across the three months in this fictional sample. The short reporting period does not establish a reliable real-world trend.

## Treatment-Level Analysis

| Treatment | Charges | Collections | Outstanding | Collection Rate |
|---|---:|---:|---:|---:|
| Crown | ₹30,000 | ₹21,000 | ₹9,000 | 70.00% |
| RCT | ₹28,000 | ₹21,000 | ₹7,000 | 75.00% |
| Scaling | ₹9,000 | ₹8,000 | ₹1,000 | 88.89% |
| Filling | ₹5,000 | ₹4,300 | ₹700 | 86.00% |
| Extraction | ₹4,800 | ₹4,300 | ₹500 | 89.58% |
| Consultation | ₹3,500 | ₹2,500 | ₹1,000 | 71.43% |
| **Total** | **₹80,300** | **₹61,100** | **₹19,200** | **76.09%** |

Crown and RCT treatments account for ₹16,000 of the ₹19,200 outstanding balance in this demonstration dataset.

## Tools and Methodology

- **Excel:** Structured source workbook and cleaned transaction data.
- **Python and pandas:** Data inspection, quality checks, calculations, summary tables, charts, and CSV exports.
- **SQLite and SQL:** Queries for overall financial KPIs, monthly collections, and treatment-level analysis.
- **Power BI:** DAX measures, KPI cards, and financial visualizations.
- **Validation:** Reconciliation of SQL results against Python calculations.

## Data Quality and Validation

The workflow includes checks for missing values, duplicate transaction IDs, duplicate rows, and outstanding-balance calculations.

All three SQL-to-Python reconciliation checks passed:

1. Overall financial KPIs
2. Monthly collections
3. Treatment-level financial totals

## Power BI Dashboard

The dashboard covers:

- Total charges and collections
- Outstanding balance and collection rate
- Total charges by treatment category
- Monthly collections for Q1 2026
- Charges versus collections by treatment
- Outstanding balance by treatment category

**Dashboard screenshot:** See [`06_Screenshots`](06_Screenshots/).

**Power BI file:** See [`04_PowerBI_Dashboard`](04_PowerBI_Dashboard/).

## Project Artifacts

- [Python analysis notebook](03_Python_Analysis/BHA_Dental_Clinic_Analysis.ipynb)
- [Power BI dashboard](04_PowerBI_Dashboard/BHA_Dental_Clinic_Analytics.pbix)
- [Python analysis report](05_Report/BHA_Dental_Clinic_Python_Analysis_Report.md)
- [SQL analysis folder and queries](04_SQL_Analysis/)
- [Project documentation](07_Documentation/README.md)
- [Dashboard screenshots](06_Screenshots/)

The SQL analysis folder contains the SQLite database, reusable SQL queries, CSV result files, and SQL analysis report. The Python report and its CSV outputs are stored in `05_Report`.

## Project Structure

```text
BHA_Dental_Clinic_Analytics/
├── 01_Raw_Data/
├── 02_Cleaned_Data/
├── 03_Python_Analysis/
├── 04_PowerBI_Dashboard/
├── 04_SQL_Analysis/
├── 05_Report/
├── 06_Screenshots/
├── 07_Documentation/
├── .gitignore
└── README.md
```

## Limitations

- The dataset contains only 35 fictional transactions across three months.
- It cannot establish actual clinic performance or reliable long-term trends.
- Charges and collections alone do not establish accounting revenue or profit.
- Operating expenses, treatment costs, and insurance reimbursements are outside the current scope.
- The results are illustrative and should not be used for actual clinical or financial decisions.

## Future Enhancements

- Expand the fictional dataset across more reporting periods.
- Add interactive date filters and further Power BI measures.
- Extend automated data-quality checks.
- Add cost and profitability analysis using clearly defined inputs.
- Improve reproducibility with documented scripts, notebooks, and dashboard screenshots.

## About

Developed as a portfolio project for **Bhardwaj Healthcare Analytics (BHA)** to demonstrate healthcare data preparation, Python analysis, SQL reporting, financial reconciliation, and Power BI visualization.

The project illustrates how structured financial reporting can help healthcare businesses monitor collections, identify outstanding balances, and understand treatment-level payment patterns.