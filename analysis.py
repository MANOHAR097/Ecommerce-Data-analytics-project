import pandas as pd 
df = pd.read_csv('ecommerce_retail_transactions_raw.csv')
print(df.head())
# Get the summary of the dataframe
print(df.info())