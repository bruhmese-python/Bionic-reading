from flask import Flask, render_template, request
from metaphone import doublemetaphone
import pickle

app = Flask(__name__)

# Load the trained model and word abbreviation mappings
with open('model.pkl', 'rb') as f:
    model = pickle.load(f)
with open('abbreviations.pkl', 'rb') as f:
    abbreviations = pickle.load(f)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/abbreviate', methods=['POST'])
def abbreviate():
    # Get the input word from the form
    word = request.form['word']

    # Generate phonetic features using Double Metaphone
    feat = np.zeros((4,), dtype=np.int32)
    dmp1, dmp2 = doublemetaphone(word)
    for i, dmp in enumerate((dmp1, dmp2)):
        for j, c in enumerate(dmp):
            if c:
                feat[i * 2 + j] = ord(c[0]) - ord('A') + 1

    # Use the trained model to predict the abbreviation
    abbrev = model.predict([feat])[0]
    if abbrev in abbreviations:
        abbrev = abbreviations[abbrev]

    # Return the result to the user
    return render_template('result.html', word=word, abbrev=abbrev)

if __name__ == '__main__':
    app.run(debug=True)
