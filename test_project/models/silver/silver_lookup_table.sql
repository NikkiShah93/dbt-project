SELECT 
    violation_code,
    definition,
    TRUE as is_manhattan,
    manhattan_96th_st_below as fee_usd
FROM {{ref('bronze_lookup_table')}}
UNION ALL 
SELECT 
    violation_code,
    definition,
    FALSE as is_manhattan,
    all_other_areas as fee_usd
FROM {{ref('bronze_lookup_table')}}
