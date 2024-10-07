SELECT 
    registration_state,
    violation_code,
    COUNT(DISTINCT summons_number) as total_count
FROM
    {{ref('silver_full_data')}}
WHERE 
    registration_state != 'NY'
GROUP BY 
    registration_state,
    violation_code
ORDER BY total_count DESC
