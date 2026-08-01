import pandas as pd

df = pd.read_csv('rpp_data.csv', encoding='latin1')


df['SampleSize'] = pd.to_numeric(df['N (O)'], errors='coerce')
df['Replicate (R)'] = df['Replicate (R)'].str.strip().str.lower()
clean_df = df.loc[:, ['SampleSize', 'Replicate (R)']].dropna()


print(clean_df.shape)
print(clean_df['Replicate (R)'].value_counts())

clean_df.to_csv("cleaned_psych_data.csv", index=False)
