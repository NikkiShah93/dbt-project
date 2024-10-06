import os
import duckdb
import pandas as pd

CWD = os.getcwd()
sql_query = """
SHOW TABLES;
"""

with duckdb.connect('data/test_db.db') as con:
    print(con.sql(sql_query).df())