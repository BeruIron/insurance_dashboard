SELECT 
    e.full_name,
    e.gender,
    e.date_of_birth,
    c.company_name,
    c.contact_email AS contact_email,
    c.phone_number AS phone_number,
    CASE 
        WHEN EXTRACT(YEAR FROM AGE(e.date_of_birth)) < 18 THEN 'Under Age'
        WHEN EXTRACT(YEAR FROM AGE(e.date_of_birth)) > 60 THEN 'Over Age'
        ELSE 'Adult'
    END AS age_group
FROM employee e
JOIN company c ON e.company_id = c.id;