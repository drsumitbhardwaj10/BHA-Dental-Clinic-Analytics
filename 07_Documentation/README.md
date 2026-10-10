# BHA Dental Clinic Analytics — Financial Performance Dashboard

## Project Overview

This project demonstrates how healthcare financial transaction data can be transformed into actionable insights using Microsoft Excel and Power BI.

The dashboard summarizes dental treatment charges, collections, outstanding balances, collection rates, and monthly collection trends. It is designed as a demonstration of financial reporting and healthcare analytics capabilities relevant to dental clinics and small healthcare providers.

**Organization:** Bhardwaj Healthcare Analytics (BHA)
**Project Type:** Healthcare Financial Analytics
**Reporting Period:** January–March 2026
**Currency:** Indian Rupees (INR)
**Dataset:** 35 fictional transaction records
**Primary Tool:** Microsoft Power BI Desktop

> **Data disclaimer:** This project uses fictional demonstration data. The figures do not represent actual clinic performance or real patient transactions.

## Business Problem

Healthcare providers need clear visibility into the amounts charged for services, the payments collected, and the balances that remain outstanding. Without consolidated reporting, it can be difficult to monitor collections, compare treatment categories, and identify where follow-up may be required.

This project demonstrates a simple reporting solution to help answer these questions:

- How much was charged during the reporting period?
- How much was collected?
- What amount remains outstanding?
- What is the overall collection rate?
- How do charges and collections compare across treatment categories?
- How do collections change month by month?

## Dashboard Features

The Power BI report contains one page: **Financial Performance**.

### Key Performance Indicators

| KPI | Value |
|---|---:|
| Total Charges | ₹80,300 |
| Total Collections | ₹61,100 |
| Outstanding Balance | ₹19,200 |
| Collection Rate | 76.1% |

### Visualizations

1. **Total Charges by Treatment Category** — compares billed amounts across six treatment categories.
2. **Monthly Collections — Q1 2026** — displays collections for January, February, and March 2026.
3. **Charges vs Collections by Treatment** — compares charged and collected amounts across treatment categories.
4. **Outstanding Balance by Treatment Category** — identifies treatment categories with the highest outstanding balances.

## Dataset and Data Preparation

The demonstration dataset contains 35 fictional transaction records covering January–March 2026.

The transaction fields include:

- `Transaction_ID`
- `Visit_ID`
- `Visit_Date`
- `Patient_ID`
- `Treatment_Category`
- `Amount_Charged`
- `Amount_Collected`
- `Outstanding_Amount`

The project uses a structured Excel workbook and a cleaned transaction dataset for reporting.

The original raw data is retained separately from the cleaned data to support a reproducible workflow. The reporting data is loaded into Power BI for measure creation and visualization.

## Analytical Methodology

### Financial Reconciliation

Outstanding balance is calculated as:

**Outstanding Balance = Total Charges − Total Collections**

For the complete reporting period:

₹80,300 − ₹61,100 = ₹19,200

Collection rate is calculated as:

**Collection Rate = Total Collections ÷ Total Charges**

For this dataset:

₹61,100 ÷ ₹80,300 × 100 ≈ 76.1%

### Power BI DAX Measures

```dax
Total Charges =
SUM ( tbl_PowerBI_Transactions[Amount_Charged] )
```

```dax
Total Collections =
SUM ( tbl_PowerBI_Transactions[Amount_Collected] )
```

```dax
Outstanding Balance =
SUM ( tbl_PowerBI_Transactions[Outstanding_Amount] )
```

```dax
Collection Rate =
DIVIDE ( [Total Collections], [Total Charges], 0 )
```

```dax
Treatment Outstanding =
[Total Charges] - [Total Collections]
```

The `Treatment Outstanding` measure calculates the difference between charges and collections within the current treatment-category filter context.

## Key Findings

### Monthly Collections

| Month | Collections |
|---|---:|
| January 2026 | ₹33,900 |
| February 2026 | ₹17,700 |
| March 2026 | ₹9,500 |
| **Total** | **₹61,100** |

January had the highest collections among the three months in this demonstration dataset. Collections declined in February and March.

### Outstanding Balance by Treatment

| Treatment Category | Charges | Collections | Outstanding |
|---|---:|---:|---:|
| Crown | ₹30,000 | ₹21,000 | ₹9,000 |
| RCT | ₹28,000 | ₹21,000 | ₹7,000 |
| Consultation | ₹3,500 | ₹2,500 | ₹1,000 |
| Scaling | ₹9,000 | ₹8,000 | ₹1,000 |
| Filling | ₹5,000 | ₹4,300 | ₹700 |
| Extraction | ₹4,800 | ₹4,300 | ₹500 |
| **Total** | **₹80,300** | **₹61,100** | **₹19,200** |

Crown and RCT have the largest outstanding balances in the demonstration dataset. Together, they account for ₹16,000 of the ₹19,200 total outstanding balance.

These findings illustrate how treatment-level reporting can help a clinic identify categories where outstanding balances are concentrated. They should not be interpreted as evidence of actual clinic performance.

## Validation and Quality Checks

The dashboard totals were checked against an Excel PivotTable created from the cleaned transaction data.

Validation included:

- Total charges reconciled to ₹80,300.
- Total collections reconciled to ₹61,100.
- Outstanding balance reconciled to ₹19,200.
- Monthly collections reconciled to the total collections KPI.
- Treatment-level charges, collections, and outstanding balances reconciled to the overall totals.

## Tools and Skills Demonstrated

- Microsoft Excel
- Microsoft Power BI Desktop
- DAX measures
- Data cleaning and preparation
- KPI development
- Financial reconciliation
- Treatment-category analysis
- Monthly trend analysis
- Dashboard layout and data visualization
- Documentation and quality validation

## Project Files

The project is organized into the following folders:

- `01_Raw_Data` — original demonstration workbook
- `02_Cleaned_Data` — cleaned transaction workbook
- `05_PowerBI_Dashboard` — Power BI report (`.pbix`)
- `06_Screenshots` — dashboard screenshots
- `07_Documentation` — project README and supporting documentation

Other working folders may contain intermediate project materials.

## Limitations

- The dataset is fictional and contains only 35 transaction records.
- The three-month reporting period is too short to establish reliable long-term trends.
- The results do not establish real-world clinic profitability, patient behavior, or operational performance.
- The dashboard focuses on charges and collections; it does not calculate operating expenses, profit, treatment costs, or insurance reimbursements.
- No conclusions about actual patient accounts should be drawn from this dataset.

## Future Enhancements

Potential next steps include:

- Adding more months of demonstration data.
- Creating treatment-level collection-rate measures.
- Adding date filters and interactive slicers.
- Developing patient-visit and treatment-volume analysis using fictional records.
- Incorporating expense and profitability analysis with clearly defined cost data.
- Building a reusable reporting template for healthcare providers.

## Author and Portfolio Context

This project was developed as part of the **Bhardwaj Healthcare Analytics (BHA)** portfolio to demonstrate healthcare data preparation, financial analysis, Power BI reporting, and validation practices.

The objective is to demonstrate a reproducible analytical workflow and communicate financial metrics clearly to healthcare stakeholders.
