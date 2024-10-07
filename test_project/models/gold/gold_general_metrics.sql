SELECT 
    violation_county,
    COUNT(DISTINCT summons_number) as summons_count,
    SUM(fee_usd) total_fee_usd
FROM 
    {{ref('silver_full_data')}}
GROUP BY 
    violation_county
ORDER BY summons_count DESC