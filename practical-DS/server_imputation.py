from flask import Flask, jsonify, request
import pandas as pd
import joblib
import os
from collections import deque

app = Flask(__name__)
classifier = joblib.load('../model/model.pkl')
imputer = joblib.load('../model/imputer.pkl')

totalAmountFailures = deque(maxlen=100)
zipCodeFailures = deque(maxlen=100)
basketFailures = deque(maxlen=100)

@app.route('/metrics', methods=['GET'])
def metrics():
    return jsonify({
        'totalAmountFailures' : sum(totalAmountFailures),
        'zipCodeFailures' : sum(zipCodeFailures),
        'basketFailures' : sum(basketFailures)
        }), 201

@app.route('/predict', methods=['POST'])
def predict():
    basket = request.json['basket']
    zipCode = request.json['zipCode']
    totalAmount = request.json['totalAmount']
    p = probability(basket, zipCode, totalAmount)

    return jsonify({'probability': p}), 201

def probability(basket, zipCode, totalAmount):
    print("Processing request: {},{},{}".format(basket, zipCode, totalAmount))

    # imputation
    if(totalAmount == None):
        totalAmount = imputer["totalAmount"]
        print("Imputed totalAmount to value {}".format(imputer["totalAmount"]))
        totalAmountFailures.append(1)
    else:
        totalAmountFailures.append(0)

    if(zipCode == None):
        zipCode = imputer["zipCode"]
        print("Imputed zipCode to value {}".format(imputer["zipCode"]))
        zipCodeFailures.append(1)
    else:
        zipCodeFailures.append(0)

    if(basket == None):
        basket = imputer["basket"]
        print("Imputed basket to value {}".format(imputer["basket"]))
        basketFailures.append(1)
    else:
        basketFailures.append(0)

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
    app.run(port=5001)
