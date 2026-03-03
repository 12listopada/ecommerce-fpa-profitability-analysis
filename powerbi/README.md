# Power BI – FP&A Reporting Model (E-commerce Case Study)

## Overview

This Power BI report presents a management-level profitability and variance analysis built on a structured FP&A data model.

The objective was to move beyond transactional reporting and simulate a finance-grade monthly reporting layer with Budget vs Actual monitoring.

---

## Data Model Structure

The semantic model follows a star-schema approach designed for financial reporting.

Fact tables:
- f_pnl_monthly (monthly P&L structure)
- variance_monthly_scenario (Actual vs Budget comparisons)
- variance_decomposition (Volume / Price / Residual breakdown)
- cash_monthly_by_category (cash movement by cost type)

Dimensions:
- dim_date_month (monthly grain)
- dim_scenario (Actual / Budget)

All calculations are implemented using DAX measures to maintain flexibility and auditability.

---

## Financial Layers Implemented

### P&L Layer
- Revenue
- COGS
- Gross Margin
- Contribution Margin
- Logistics intensity (% of revenue)

### Variance Layer
- Revenue variance (Amount & %)
- Budget vs Actual comparison
- Revenue Variability Index
- Variance decomposition (Volume / Price / Residual)

### Cash Perspective
- Monthly cash movement by category
- Structural cost pressure analysis

---

## Key Analytical Focus

- Identifying structural constraints in contribution margin
- Diagnosing volume-driven revenue instability
- Assessing whether revenue growth improves operating leverage
- Linking logistics intensity to scalability limits

---

## Technical Stack

- SQL (data modeling & monthly aggregation)
- Power BI
- DAX (financial modeling & variance logic)
- Star schema design for FP&A reporting
