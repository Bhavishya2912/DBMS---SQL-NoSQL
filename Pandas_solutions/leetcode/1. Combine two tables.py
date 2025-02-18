# -- COMBINE TWO TABLES
# -- https://leetcode.com/problems/combine-two-tables/


# SQL SOLUTION: SQL_solutions\leetcode\1. Combine tables.sql

# PANDAS SOLUTION: 

import pandas as pd

def combinetables (person : pd.DataFrame, address : pd.DataFrame) -> pd.DataFrame:
    joined = pd.merge(person, address, left_on='PersonId', right_on='PersonId', how='left')
    return joined[['FirstName', 'LastName', 'City', 'State']]