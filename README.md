# 💰 Credit Risk Analysis — SQL + Excel + Power BI Capstone  

This project analyzes borrower risk profiles and loan performance to identify key factors influencing defaults.  
It integrates **SQL** for data cleaning and business queries, **Excel** for validation, and **Power BI** for interactive dashboards and executive insights.

---

## 🖼️ Dashboard Previews  

### 📊 Credit Risk Executive Dashboard  
**Focus:** Portfolio overview, total loans, default rate %, average income, and interest trends.  
![Executive Dashboard](dashboard_main.png)


---

## 🎯 **Objective**  
To assess borrower creditworthiness and detect risk patterns in a consumer-loan portfolio.  
The goal is to help financial institutions reduce default rates and improve lending policies through data-driven decisions.

---

## 🧩 **Data Model Overview**  
The dataset contains 30 000 + loan records with borrower demographics and loan information.  
All transformations were performed in SQL before loading the clean dataset into Power BI.  

| Table | Description |
|--------|-------------|
| **credit_clean_text** | Final cleaned dataset (single table used in Power BI) |
| **10 Business Queries Outputs** | Aggregated CSVs exported from SQL for Excel validation |

---

## ⚙️ **Tools & Techniques**  
- **SQL (MySQL Workbench)** — Data extraction, staging → cleaning → 10 analysis queries  
- **Excel** — Validation pivots and static dashboard summary  
- **Power BI Desktop** — DAX measures, live dashboards, insights page  
- **Data Visualization** — KPI cards, column/line charts, slicers, and gauge visuals  

---

## 💡 **Key Business Questions**
1️⃣ What is the total number of loans and overall default rate %?  
2️⃣ Which loan grades show the highest default rates?  
3️⃣ How does home ownership affect default risk?  
4️⃣ Does employment length impact defaults?  
5️⃣ Which loan intent categories are riskiest?  
6️⃣ How does borrower income relate to default probability?  
7️⃣ Which ownership × grade segments are the most risky?  
8️⃣ How does average loan amount vary by grade?  
9️⃣ Does credit-history length influence default rate?  
🔟 What is the average interest rate by loan status?  

---

## 📈 **Key Insights**
- **Overall default rate ≈ 9 %**; Grades E & F exceed 15 %.  
- **Renters** and **low-income** borrowers show highest risk.  
- **Short employment** and **short credit histories** correlate with defaults.  
- **Personal and Medical** loan intents underperform.  
- **Higher interest rates** align with higher default probability.  

---

## 🧭 **Recommendations**
- Focus portfolio growth on **Grade A–C** loans for stable returns.  
- Tighten underwriting for **high-interest** and **short-tenure** applicants.  
- Offer **financial-literacy programs** to renters & low-income groups.  
- Add **credit-history length + employment stability** to scoring models.  
- Monitor portfolio mix monthly to keep defaults < 8 %.  

---

## 📂 **Repository Contents**
| File/Folder | Description |
|--------------|-------------|
| `sql/credit_clean_text.sql` | Data cleaning & transformation queries |
| `sql/Credit_Risk_Quesries.script.sql` | 10 business analysis queries |
| `data/credit_risk_raw.csv` | Raw dataset |
| `data/credit_clean_text.csv` | Cleaned dataset |
| `outputs/q01–q10_*.csv` | CSV results for each business question |
| `excel/Credit_Risk_Analysis.xlsx` | Validation pivots + Excel dashboard |
| `powerbi/Credit_Risk_Analysis.pbix` | Interactive Power BI dashboard (2 pages) |
| `docs/credit_risk_case.study.pdf` | One-page case study summary |
| `docs/dashboard_main.png` | Executive dashboard screenshot |
| `docs/dashboard_insights.png` | Insights & Recommendations screenshot |

---

## 🧮 **Core DAX Measures**
```DAX
Total Loans = COUNTROWS(credit_clean_text)
Total Defaults = CALCULATE(COUNTROWS(credit_clean_text), credit_clean_text[loan_status] = 1)
Default Rate % = DIVIDE([Total Defaults], [Total Loans], 0)
Avg Loan Amount = AVERAGE(credit_clean_text[loan_amnt])
Avg Interest Rate = AVERAGE(credit_clean_text[loan_int_rate])
Avg Income = AVERAGE(credit_clean_text[person_income])


---
## 🧾 **License**
This project is licensed under the [MIT License](LICENSE).  
You’re free to view and learn from it.

---

## 📬 **Contact**
👩‍💻 **Bhavana Venkatesha Murthy**  
📧 bhavana.1251@email.com  
🔗 GitHub: [https://github.com/bhavana1251-arch](https://github.com/bhavana1251-arch)
