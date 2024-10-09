SELECT *
FROM 
{{ ref('silver_full_date_table')}}
WHERE fee_usd > 0