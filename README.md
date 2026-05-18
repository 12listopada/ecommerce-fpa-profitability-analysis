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

![Actual vs Budget](docs/dashboard_budget.png)

**Page 2 – Revenue Variance Analysis**
Profit bridge decomposing revenue variance into volume, price, and residual components.

![Revenue Variance](docs/dashboard_variance.png)

**Page 3 – Margin Structure**
Profit bridge from revenue to contribution margin, gross vs contribution margin trend, shipping intensity over time.

![Margin Structure](docs/dashboard_margin.png)

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
