from time import sleep
from fastapi import FastAPI, Request
from pydantic import BaseModel
from joblib import load

clf2 = load('iris.p')

# Define the FastAPI app
app = FastAPI()

class Prediction(BaseModel):
    data: int

class Item(BaseModel):
    data: list

# Define the main route
@app.get('/')
def root_route():
    return {'Hello': 'World!'}


def check_params(query_params):
    assert "sepallength" in query_params, query_params
    assert "sepalwidth" in query_params, query_params
    assert "petallength" in query_params, query_params
    assert "petalwidth" in query_params, query_params


# Define the /prediction route
@app.get('/predict/', response_model=Prediction)
async def predict_route(req: Request):
    query_params = dict(req.query_params)
    check_params(query_params)
    data = [
        query_params["sepallength"],
        query_params["sepalwidth"],
        query_params["petallength"],
        query_params["petalwidth"],
    ]
    clf2 = load('iris.p')
    for i in range(100_000):
        i / 433.9123
    sleep(0.1)
    pred = clf2.predict([data])
    return {"data": pred}


# Define the /prediction route
@app.post('/prediction/', response_model=Prediction)
async def prediction_route(item: Item):
    pred = clf2.predict([item.data])
    return {"data": pred}
