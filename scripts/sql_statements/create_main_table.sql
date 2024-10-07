CREATE OR REPLACE TABLE main_table AS
SELECT * FROM
read_csv_auto (
    'data/parking_violations_issued_fiscal_year_2023_sample.csv',
    normalize_names=True
);