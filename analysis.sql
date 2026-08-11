-- Insurance Operations SQL Analysis
-- Dataset: synthetic portfolio data created for demonstration purposes.

-- 1. Portfolio summary by policy type
SELECT
    policy_type,
    COUNT(*) AS policies,
    ROUND(SUM(annual_premium), 2) AS total_annual_premium,
    ROUND(AVG(annual_premium), 2) AS avg_annual_premium
FROM insurance_operations
GROUP BY policy_type
ORDER BY total_annual_premium DESC;

-- 2. Identify accounts with elevated service activity
SELECT
    policy_id,
    policy_type,
    service_requests_90d,
    payment_status,
    claim_count_12m
FROM insurance_operations
WHERE service_requests_90d >= 5
ORDER BY service_requests_90d DESC, claim_count_12m DESC;

-- 3. Retention-risk summary
SELECT
    retention_risk,
    COUNT(*) AS accounts,
    ROUND(AVG(annual_premium), 2) AS avg_premium,
    ROUND(AVG(service_requests_90d), 2) AS avg_service_requests
FROM insurance_operations
GROUP BY retention_risk;

-- 4. Payment-status distribution
SELECT
    payment_status,
    COUNT(*) AS accounts,
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM insurance_operations), 2) AS pct_of_portfolio
FROM insurance_operations
GROUP BY payment_status
ORDER BY accounts DESC;

-- 5. Renewal rate by policy type
SELECT
    policy_type,
    COUNT(*) AS accounts,
    SUM(renewal_flag) AS renewed,
    ROUND(100.0 * AVG(renewal_flag), 2) AS renewal_rate_pct
FROM insurance_operations
GROUP BY policy_type
ORDER BY renewal_rate_pct DESC;

-- 6. Claims and service workload by state
SELECT
    state,
    COUNT(*) AS accounts,
    SUM(claim_count_12m) AS claims_12m,
    SUM(service_requests_90d) AS service_requests_90d,
    ROUND(AVG(service_requests_90d), 2) AS avg_requests_per_account
FROM insurance_operations
GROUP BY state
ORDER BY service_requests_90d DESC;

-- 7. Accounts needing follow-up
SELECT
    policy_id,
    policy_type,
    state,
    annual_premium,
    payment_status,
    claim_count_12m,
    service_requests_90d,
    renewal_flag,
    retention_risk
FROM insurance_operations
WHERE retention_risk = 'Higher Risk'
ORDER BY annual_premium DESC;
