CREATE OR REPLACE TABLE code_lookup AS
SELECT * FROM
read_csv_auto (
    'data/dof_parking_violation_codes.csv',
    normalize_names=True
);