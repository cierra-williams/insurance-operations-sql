# Insurance Operations SQL Analysis

## Project Overview

This project demonstrates how SQL can be used to analyze insurance operations data and turn routine policy records into useful business reporting.

The analysis focuses on portfolio performance, service activity, payment status, claims, renewal behavior, and accounts that may require additional follow-up.

## Business Problem

Insurance teams manage large amounts of information across policy servicing, billing, claims, customer activity, and renewals.

The goal of this project was to use SQL to answer common operational questions and identify patterns that could help support reporting, workload management, retention efforts, and account follow-up.

## Tools & Skills

- **SQL** – querying and analyzing operational data
- **Data Aggregation** – COUNT, SUM, and AVG calculations
- **GROUP BY** – comparison of business metrics across categories
- **Filtering** – identification of accounts meeting specific conditions
- **KPI Reporting** – premium volume, renewal rates, service activity, and payment status
- **Business Analysis** – translation of query results into operational insights

## Dataset

The project uses a **synthetic dataset containing 250 insurance policy records** created specifically for portfolio demonstration.

The dataset includes:

- Policy type
- State
- Annual premium
- Customer tenure
- Recent claim activity
- Service request volume
- Payment status
- Contact channel
- Renewal status
- Retention-risk classification

No real customer, employer, or confidential insurance data is included.

## Business Questions

The SQL analysis answers questions including:

1. Which policy types represent the largest premium volume?
2. Which accounts have unusually high service activity?
3. How many accounts show indicators of higher retention risk?
4. How are accounts distributed across payment-status categories?
5. How do renewal rates differ by policy type?
6. Which states generate the highest service workload?
7. Which accounts should be prioritized for follow-up?

## SQL Techniques Demonstrated

The analysis uses:

- `SELECT`
- `WHERE`
- `ORDER BY`
- `GROUP BY`
- `COUNT()`
- `SUM()`
- `AVG()`
- Percentage and rate calculations
- Conditional filtering
- Operational exception reporting

## Business Value

This project demonstrates how SQL can transform insurance operations data into actionable information.

The queries provide portfolio summaries, identify high-service accounts, evaluate renewal behavior, highlight payment issues, and generate prioritized follow-up lists that could support operational decision-making.

## Project Files

- `insurance_operations_sample.csv` – synthetic source dataset
- `analysis.sql` – SQL queries used for the analysis
- `sample_summary_output.csv` – example summary results

---

*Portfolio project created using synthetic insurance operations data. No real customer or employer data is included.*
