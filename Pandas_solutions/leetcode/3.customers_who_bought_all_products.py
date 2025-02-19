# -- Customers who bought all products
# -- https://leetcode.com/problems/customers-who-bought-all-products/

# SQL SOLUTION: SQL_solutions\leetcode\3.customers_who_bought_all_products.sql

# PANDAS SOLUTION:

import pandas as pd

def find_customers(customer: pd.DataFrame, product: pd.DataFrame) -> pd.DataFrame:
    joined = pd.merge(customer, product, on='product_key', how='inner')
    grouped = joined.groupby('customer_id')['product_key'].nunique()
    result = grouped[grouped == len(product)].reset_index()
    return result[['customer_id']]

