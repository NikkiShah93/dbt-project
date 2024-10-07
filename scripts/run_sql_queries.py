import os
import duckdb
import pandas as pd

CWD = os.getcwd()

sql_query = """
SHOW TABLES;
"""
with open('scripts/sql_statements/create_lookup.sql') as s:
    q1 =''
    for line in s.readlines():
        q1+=line
with open('scripts/sql_statements/create_main_table.sql') as s:
    q2 =''
    for line in s.readlines():
        q2+=line

with duckdb.connect('data/test_project.db') as con:
    con.sql(q1)
    con.sql(q2)
    print(con.sql(sql_query).df())