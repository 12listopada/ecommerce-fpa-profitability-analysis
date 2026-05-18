# E-commerce Profitability & Revenue Variance Analysis (Olist Dataset)

**SQL • Power BI • DAX**

End-to-end financial and operational analysis of an e-commerce business using the public Olist dataset. The project focuses on moving beyond basic reporting and identifying structural drivers of revenue volatility and profitability constraints.

---

## Business Problem

Despite revenue tracking slightly above budget (+1.4%), the business shows significant structural volatility and margin constraints driven by logistics costs.

The goal of this analysis was to:
- decompose revenue variance into volume, price, and residual components
- assess revenue predictability and volatility patterns
- identify what is compressing contribution margin
- compare Actual vs Budget performance over time

---

## Key KPIs

- Revenue vs Budget Variance
- Revenue Variability Index (RVI)
- Gross Margin %
- Contribution Margin %
- Shipping Cost % of Revenue

---

## Key Findings

- Revenue slightly above budget (+1.4%), but structurally volatile (RVI = 2.09)
- Volatility is primarily **volume-driven**, not price-related
- Gross margin stable (~37.7%), but contribution margin constrained (~15.4%)
- Shipping intensity (~16–18% of revenue) is the primary margin drag
- Revenue growth alone does not improve operating leverage

---

## Dashboards (Power BI)

**Page 1 – Actual vs Budget Overview**
KPIs, revenue trend and variance vs budget over 2016–2018.

<img width="2051" height="1159" alt="Zrzut ekranu 2026-05-18 115516" src="https://github.com/user-attachments/assets/f2624e49-b8f0-4c7b-9df2-64a7d9651230" />

**Page 2 – Revenue Variance Analysis**
Profit bridge decomposing revenue variance into volume, price, and residual components.

<img width="2055" height="1155" alt="Zrzut ekranu 2026-05-18 115530" src="https://github.com/user-attachments/assets/04b26cd9-9c6f-405f-809f-08e9a1e87fe7" />


**Page 3 – Margin Structure**
Profit bridge from revenue to contribution margin, gross vs contribution margin trend, shipping intensity over time.

<img width="2062" height="1163" alt="Zrzut ekranu 2026-05-18 115538" src="https://github.com/user-attachments/assets/76815c30-ab52-4054-b31f-25c9a86dda1d" />

---

## Project Structure

├── sql/
├── powerbi/
├── docs/
└── README.md

---

## Dataset

- **Source:** [Brazilian E-Commerce (Olist) – Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)
- **Scale:** 100K+ orders
- **Period:** 2016–2018

---

## Tools & Technologies

- **SQL** – data modeling and aggregations
- **Power BI + DAX** – financial modeling, variance decomposition, dashboards
- **AI-assisted workflow** – analytical reasoning and insight validation

---

## Author

**Oliwia Tomiczek**
Data Analyst | SQL • Power BI • Business Analytics
