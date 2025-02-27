# -- Customers who never order
# -- https://leetcode.com/problems/customers-who-never-order/

# SQL SOLUION: SQL_solutions\leetcode\9. Costumers_who_never_order.sql

# Pandas Solution:

import pandas as pd

import pandas as pd

def find_customers(customers: pd.DataFrame, orders: pd.DataFrame) -> pd.DataFrame:
    merged = pd.merge(customers, orders, left_on='id', right_on='customerId', how = 'left')
    filtered = merged[merged['customerId'].isnull()]
    return filtered[['name']].rename(columns = {'name':'Customers'})
    