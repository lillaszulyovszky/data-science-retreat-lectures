from flask import Flask, jsonify, request
import pandas as pd
import joblib
import os


app = Flask(__name__)
classifier = joblib.load('../model/model.pkl')

@app.route('/predict', methods=['POST'])
def predict():
    basket = request.json['basket']
    zipCode = request.json['zipCode']
    totalAmount = request.json['totalAmount']
    p = probability(basket, zipCode, totalAmount)

    return jsonify({'probability': p}), 201

def probability(basket, zipCode, totalAmount):
    print("Processing request: {},{},{}".format(basket, zipCode, totalAmount))

    df = pd.DataFrame(data={'basket': [basket], 'totalAmount': [totalAmount], 
                  'zipCode': [zipCode]})

    for i in range(0, 6):
        df[f"c_{i}"] = df["basket"].map(lambda x: x.count(i))

    df['zipCode'] = pd.Categorical(df['zipCode'], categories=list(range(100, 1000)))
    dummies = pd.get_dummies(df.zipCode)
    df2 = pd.concat([df, dummies], axis=1)
    df3 = df2.drop(["basket", "zipCode"], axis=1)
    
    return classifier.predict_proba(df3)[0][1]

if __name__ == "__main__":
    app.run()
