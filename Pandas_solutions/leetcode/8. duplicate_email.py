import pandas as pd

def duplicate_emails(person: pd.DataFrame) -> pd.DataFrame:
    return person[person.duplicated('email')][['email']].drop_duplicates()



# # APPROACH 2: using map and lambda function without uing duplicated()
# def duplicate_emails_map(person: pd.DataFrame) -> pd.DataFrame:
#     email_counts = person['email'].value_counts()
#     duplicates = person[person['email'].map(lambda x: email_counts[x] > 1)]
#     return pd.DataFrame({'Email': duplicates['email'].unique()})

