import pandas as pd

def duplicate_emails(person: pd.DataFrame) -> pd.DataFrame:
    count = person.groupby('email').count()
    # print(count['id'])  # for debugging purposes, print count of each email address
    duplicated = count[count['id'] > 1]
    res = duplicated.index.to_frame(index = False)
    return res



# call
data = [[1, 'a@b.com'], [2, 'c@d.com'], [3, 'a@b.com']]
person = pd.DataFrame(data, columns=['id', 'email']).astype({'id':'Int64', 'email':'object'})


result = duplicate_emails(person)
print(result)