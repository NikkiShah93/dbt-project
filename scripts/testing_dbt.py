import pandas as pd
import duckdb

sql_query = """
SELECT * FROM
bronze_main_table
"""

with duckdb.connect('data/test_project.db') as conn:
    print(conn.sql(sql_query).df())