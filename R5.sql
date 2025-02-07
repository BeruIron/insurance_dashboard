
-- sum proposed_premium to total proposed_premium
SELECT 
    SUM(proposed_premium) AS total_proposed_premium
FROM quotation;


-- Count total_policy 
SELECT 
    COUNT(*) AS total_policy
FROM insurance_policy;


-- count total insured coverage
SELECT 
    COUNT(*) AS total_insured
FROM insured_coverage;


-- total sum_insured when it no value so it's need to join to other table by id to get value to sum
SELECT 
    SUM(ip.coverage_amount) AS total_sum_insured
FROM insured_coverage ic
JOIN insurance_policy_benefit ip ON ic.insurance_policy_id = ip.id;


-- count employee by id and - insured_coverage to total_prospect
SELECT 
    COUNT(e.id) - COUNT(ic.id) AS total_prospect
FROM employee e
LEFT JOIN insured_coverage ic ON e.id = ic.employee_id;


-- count employee that's have no insurance and learn more from them
SELECT COUNT (id) AS prospect_company FROM quotation
WHERE quotation_status = 'Pending';


SELECT
COUNT(*) - COUNT(CASE WHEN is_partner_hf = TRUE THEN 1 END)AS total_hf_partners,
COUNT(*) - COUNT(CASE WHEN is_partner_hf = FALSE THEN 1 END) AS total_non_partner
FROM health_facility;