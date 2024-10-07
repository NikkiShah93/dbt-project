SELECT 
summons_number,
    registration_state,
    plate_type,
    issue_date,
    mt.violation_code as violation_code,
    vehicle_body_type,
    vehicle_make,
    issuing_agency,
    vehicle_expiration_date,
    violation_location,
    violation_precinct,
    issuer_precinct,
    issuer_code,
    issuer_command,
    issuer_squad,
    violation_time,
    violation_county,
    violation_legal_code,
    vehicle_color,
    vehicle_year,
    definition,
    mt.is_manhattan,
    fee_usd
FROM
    {{ref('silver_main_table')}} as mt 
    LEFT JOIN
    {{ref('silver_lookup_table')}} as lt 
    ON 
        mt.violation_code = lt.violation_code
        AND 
        mt.is_manhattan = lt.is_manhattan