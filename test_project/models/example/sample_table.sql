SELECT 
    column1,
    column2,
    {{ date_logic(column3) }} AS system_type
FROM
    {{ ref('source_table') }}