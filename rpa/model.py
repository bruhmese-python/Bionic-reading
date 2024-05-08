import csv
import numpy as np
from metaphone import doublemetaphone
from sklearn.tree import DecisionTreeClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score

# Load training dataset
with open('abbreviations.csv', 'r') as f:
    reader = csv.reader(f)
    input_words, output_abbrevs = zip(*reader)

# Extract phonetic features using Double Metaphone
input_feats = []
for word in input_words:
    feat = np.zeros((4,), dtype=np.int32)
    dmp1, dmp2 = doublemetaphone(word)
    for i, dmp in enumerate((dmp1, dmp2)):
        for j, c in enumerate(dmp):
            if c:
                feat[i * 2 + j] = ord(c[0]) - ord('A') + 1
    input_feats.append(feat)

# Split dataset into training and validation sets
X_train, X_val, y_train, y_val = train_test_split(input_feats, output_abbrevs, test_size=0.2, random_state=42)

# Train decision tree classifier
clf = DecisionTreeClassifier(random_state=42)
clf.fit(X_train, y_train)

# Evaluate performance on validation set
y_pred = clf.predict(X_val)
acc = accuracy_score(y_val, y_pred)
print(f'Accuracy on validation set: {acc:.3f}')


with open('model.pkl', 'wb') as f:
    pickle.dump(clf, f)

# Save the word abbreviation mappings
with open('abbreviations.pkl', 'wb') as f:
    pickle.dump(abbreviations, f)