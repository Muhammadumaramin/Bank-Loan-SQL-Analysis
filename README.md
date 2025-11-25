# 🏦 Bank Loan SQL Data Analysis

## 📘 Project Overview
This project explores a **bank’s loan portfolio dataset (2021)** using SQL and Python to derive performance metrics, borrower insights, and lending trends.

---
 
## 🎯 Objectives
- Calculate total loan applications, funded amounts, and payments received.
- Track month-over-month (MoM) growth for key metrics.
- Classify loans into *Good* vs *Bad* based on repayment status.
- Analyze portfolio performance by:
  - Loan Status
  - Month
  - Term
  - Employment Length
  - Loan Purpose
  - Home Ownership Type

---

## 🧮 Key Results

| Metric | Value |
|:--|--:|
| Total Loan Applications | 38,576 |
| Total Funded Amount | \$435,757,075 |
| Total Amount Received | \$473,070,933 |
| Avg Interest Rate | 12.05% |
| Avg DTI Ratio | 13.33% |

---

## 💰 Loan Quality Summary

| Category | Applications | Funded (\$) | Received (\$) | Interest (%) | DTI (%) |
|:--|--:|--:|--:|--:|--:|
| Fully Paid | 32,145 | 351,358,350 | 411,586,256 | 11.64 | 13.17 |
| Charged Off | 5,333 | 65,532,225 | 37,284,763 | 13.88 | 14.00 |
| Current | 1,098 | 18,866,500 | 24,199,914 | 15.10 | 14.72 |

✅ *Good Loans:* 86%  ❌ *Bad Loans:* 13%

---

## 📅 Monthly Trend (2021)

| Month | Applications | Funded (\$M) | Received (\$M) |
|:--|--:|--:|--:|
| Jan | 2.33k | 25.0 | 27.6 |
| Jun | 3.18k | 34.1 | 36.1 |
| Dec | **4.31k** | **53.9** | **58.1** |

📈 *Steady increase in applications and repayments throughout the year.*

---

## ⏳ Term Analysis
| Term | Applications | Funded (\$) | Received (\$) |
|:--|--:|--:|--:|
| 36 months | 28,237 | 273M | 295M |
| 60 months | 10,339 | 163M | 178M |

✅ *Short-term (36 mo) loans dominate.*

---

## 👷 Employment Length
Borrowers with longer employment history show higher borrowing and repayment capability.

| Employment | Applications | Funded (\$) |
|:--|--:|--:|
| 10+ years | 8,870 | 116M |
| < 1 year | 4,575 | 44M |
| 2 years | 4,382 | 45M |

---

## 🏠 Home Ownership
| Type | Applications | Funded (\$) | Received (\$) |
|:--|--:|--:|--:|
| Rent | 18,439 | 186M | 201M |
| Mortgage | 17,198 | 219M | 238M |
| Own | 2,838 | 30M | 32M |

---

## 🎯 Purpose
| Purpose | Applications | Funded (\$) | Received (\$) |
|:--|--:|--:|--:|
| Debt Consolidation | 18,214 | 232M | 254M |

---

## 🧠 Skills Demonstrated
- SQL: `SELECT`, `CASE`, `GROUP BY`, `SUM`, `AVG`, `ROUND`
- Data cleaning & aggregation
- KPI design and portfolio reporting
- Business insight generation

---

## 📊 Tools
- Microsoft SQL Server / MySQL
- Excel (dataset exploration)
- Power BI (for upcoming visual dashboards)

---

## 📂 Dataset
`financial_loan_data_excel.csv`  
Contains loan-level data:  
`id`, `issue_date`, `loan_amount`, `total_payment`, `int_rate`, `dti`, `loan_status`, `address_state`, `term`, `emp_length`, `purpose`, `home_ownership`

---

## 👨‍💻 Author
**Muhammad Umar Amin**  
🎓 Master’s Student, Computational & Quantitative Methods — Lamar University  
🔗 [LinkedIn](https://www.linkedin.com/in/mumaramin-0a6795257/) | [GitHub](https://github.com/Muhammadumaramin)
