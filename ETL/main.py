import pandas as pd

from db_connection import engine


df = pd.read_csv('C:\.Fichiers\.Révision\.Junior\BI & DBM\BI project\Datasets\Cleaned\cleaned_Netflix_SubscriptionFees.csv')
df.to_sql('subscription_fees', con=engine, if_exists='replace', index=False)

df = pd.read_csv("C:\.Fichiers\.Révision\.Junior\BI & DBM\BI project\Datasets\Cleaned\cleaned_Reviewers_Data.csv")
df.to_sql('reviewers_data', con=engine, if_exists='replace', index=False)

df = pd.read_csv("C:/.Fichiers/.Révision/.Junior/BI & DBM/BI project/Datasets/Cleaned/cleaned_Netflix_App_Reviews.csv")
df.to_sql('app_reviews', con=engine, if_exists='replace', index=False)

df = pd.read_csv("C:/.Fichiers/.Révision/.Junior/BI & DBM/BI project/Datasets/Cleaned/Netflix_Userbase.csv")
df.to_sql('userbase', con=engine, if_exists='append', index=False)

df = pd.read_csv("C:\.Fichiers\.Révision\.Junior\BI & DBM\BI project\Datasets\Cleaned\cleaned_Shows_and_Ratings.csv")
df.to_sql('shows_and_ratings', con=engine, if_exists='replace', index=False)

df = pd.read_csv("C:\.Fichiers\.Révision\.Junior\BI & DBM\BI project\Datasets\Cleaned\Countries.csv")
df.to_sql('countries', con=engine, if_exists='replace', index=False)

df = pd.read_csv("C:\.Fichiers\.Révision\.Junior\BI & DBM\BI project\Datasets\Cleaned\Genres.csv")
df.to_sql('genres', con=engine, if_exists='replace', index=False)






