# BHA Dental Clinic Analytics — Python Analysis Report

## 1. Project Overview

**Project:** BHA Dental Clinic Analytics
**Analysis period:** January–March 2026
**Currency:** Indian Rupees (INR)
**Tools:** Python, pandas, Matplotlib, Jupyter Notebook

This project demonstrates how Python can be used to validate dental clinic transaction data, calculate financial performance indicators, analyze monthly collections, and summarize outstanding balances by treatment category.

**Data disclaimer:** All transaction records and financial figures in this project are fictional and intended solely for analytical demonstration. They do not represent actual clinic performance or real patient records.

## 2. Business Objectives

- Evaluate total charges, collections, and outstanding balances.
- Calculate the overall collection rate.
- Analyze collection trends across the first quarter of 2026.
- Compare financial performance across treatment categories.
- Validate data quality and reconcile analytical results.

## 3. Dataset Overview

The analysis uses a cleaned transaction dataset containing 35 records and eight required fields:

- Transaction_ID
- Visit_ID
- Visit_Date
- Patient_ID
- Treatment_Category
- Amount_Charged
- Amount_Collected
- Outstanding_Amount

The original Excel workbook was not modified during Python analysis. A separate in-memory DataFrame was used to isolate the transaction fields from additional worksheet validation information.

## 4. Data Quality Validation

The following checks were completed:

| Validation | Result |
|---|---:|
| Transaction records | 35 |
| Required transaction columns | 8 |
| Missing values | 0 |
| Duplicate transaction IDs | 0 |
| Fully duplicated rows | 0 |
| Incorrect outstanding calculations | 0 |

The outstanding balance was independently calculated as:

`Outstanding Amount = Amount Charged - Amount Collected`

All 35 transactions passed this validation.

## 5. Overall Financial Performance

| KPI | Result |
|---|---:|
| Total Charges | ₹80,300 |
| Total Collections | ₹61,100 |
| Outstanding Balance | ₹19,200 |
| Collection Rate | 76.09% |

The collection rate was calculated as total collections divided by total charges, multiplied by 100.

Financial reconciliation passed:

`₹80,300 = ₹61,100 + ₹19,200`

## 6. Monthly Collection Analysis

| Month | Collections |
|---|---:|
| January 2026 | ₹33,900 |
| February 2026 | ₹17,700 |
| March 2026 | ₹9,500 |
| **Total** | **₹61,100** |

Collections declined across the three months in the demonstration dataset. January recorded the highest collections, while March recorded the lowest.

These figures describe the dataset only. They do not establish the cause of the decline or indicate a real-world business trend.

## 7. Treatment-Level Financial Analysis

| Treatment | Charges | Collections | Outstanding | Collection Rate |
|---|---:|---:|---:|---:|
| Crown | ₹30,000 | ₹21,000 | ₹9,000 | 70.00% |
| RCT | ₹28,000 | ₹21,000 | ₹7,000 | 75.00% |
| Scaling | ₹9,000 | ₹8,000 | ₹1,000 | 88.89% |
| Filling | ₹5,000 | ₹4,300 | ₹700 | 86.00% |
| Extraction | ₹4,800 | ₹4,300 | ₹500 | 89.58% |
| Consultation | ₹3,500 | ₹2,500 | ₹1,000 | 71.43% |
| **Total** | **₹80,300** | **₹61,100** | **₹19,200** | **76.09%** |

Crown and RCT together account for ₹16,000 of the ₹19,200 total outstanding balance. These categories represent a potential focus for reviewing unpaid balances in the demonstration scenario.

The dataset does not contain invoice ageing, payment terms, or reasons for non-payment. Therefore, it cannot establish why any balance remains outstanding.

## 8. Visualizations

Two charts were generated using Matplotlib:

1. **Monthly Collections — Q1 2026:** compares collections across January, February, and March.
2. **Outstanding Balance by Treatment Category:** compares unpaid balances across treatment categories.

These visualizations complement the interactive Power BI financial dashboard.

## 9. Exported Analysis Outputs

The following CSV summaries were exported to `05_Report`:

- `overall_financial_kpis.csv`
- `monthly_collections.csv`
- `treatment_financial_summary.csv`

Each exported file was read back into pandas, and the key totals were validated successfully.

## 10. Limitations

- The dataset is fictional and contains only 35 transactions.
- The analysis covers a three-month period.
- No invoice ageing, payment method, operating costs, or treatment profitability data are available.
- The results are not evidence of actual clinic performance.
- The findings should not be generalized to other dental clinics.

## 11. Future Enhancements

Potential improvements include:

- SQL-based financial summaries and reconciliation.
- Additional analysis of transaction and treatment trends.
- Automated data-quality checks.
- More detailed payment and outstanding-balance analysis if appropriate fields become available.
- Integration of Python outputs with Power BI.
- A consolidated business report combining validated findings from Python, SQL, and Power BI.

## 12. Conclusion

This project demonstrates a reproducible Python workflow for dental clinic financial analytics, including data inspection, validation, financial reconciliation, monthly trend analysis, treatment-level summaries, visualization, and CSV export verification.

All financial results reconciled successfully with the expected demonstration dataset totals.
