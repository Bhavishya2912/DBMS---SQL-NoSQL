# # -- TOP TRAVELLERS
# # -- https://leetcode.com/problems/top-travellers

# # SQL SOLUTION: SQL_solutions\leetcode\12. top_travellers.sql

# # Pandas Solution:
import pandas as pd

def top_travellers(users: pd.DataFrame, rides: pd.DataFrame) -> pd.DataFrame:
    merged = users.merge(rides, left_on = 'id', right_on = 'user_id', how = 'left', suffixes=('_users', '_rides'))
    grouped = merged.groupby(['id_users', 'name'])['distance'].sum().reset_index()
    grouped['distance'] = grouped['distance'].fillna(0)
    sorted = grouped.sort_values(by=['distance', 'name'], ascending=[False, True])
    return sorted.rename(columns={'distance':'travelled_distance'})[['name', 'travelled_distance']]