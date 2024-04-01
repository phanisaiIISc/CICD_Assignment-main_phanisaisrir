import pandas as pd
from sklearn.linear_model import LogisticRegression
import pickle
import numpy as np
from sklearn.ensemble import RandomForestClassifier
import os

df1 = pd.read_csv("data/train.csv")
df2 = pd.read_csv("data/test.csv")
df = pd.concat([df1,df2])
print(len(df))
#exit(0)
X = df.drop(columns=['Disease']).to_numpy()
y = df['Disease'].to_numpy()
labels = np.sort(np.unique(y))
y = np.array([np.where(labels == x) for x in y]).flatten()
rf_classifier = RandomForestClassifier()

model = rf_classifier.fit(X, y)

with open("model.pkl", 'wb') as f:
    pickle.dump(model, f)
exit(0)
