# -- Customer Placing the Largest Number of Orders
# -- https://leetcode.com/problems/customer-placing-the-largest-number-of-orders


# SQL SOLUTION: SQL_solutions\leetcode\15. customer-placing-the-largest-number-of-orders.sql


# PANDAS SOLUTION:
import pandas as pd


def largest_orders(orders: pd.DataFrame) -> pd.DataFrame:
    if orders.empty:
        return pd.DataFrame(columns=['customer_number'])

    grouped = orders.groupby('customer_number')
    res = grouped.size().idxmax()
    return pd.DataFrame({'customer_number': [res]})
