"""We create a UI: https://eugeneyan.com/writing/how-to-set-up-html-app-with-fastapi-jinja-forms-templates/"""

from fastapi import FastAPI, Request, Form
from fastapi.templating import Jinja2Templates
from joblib import load

app = FastAPI()
templates = Jinja2Templates(directory="templates/")

clf = load('iris_clf.joblib')

@app.get('/')
def get_hello_world():
    return "Hello world"

@app.get('/predict')
def get_predict(req: Request):
    params = req.query_params
    sample = [
        float(params['sepallength']),
        float(params['sepalwidth']),
        float(params['petallength']),
        float(params['petalwidth']),
    ]
    pred = clf.predict([sample])
    return str(pred[0])


@app.get("/form")
def form_post(request: Request):
    result = "Type a number"
    return templates.TemplateResponse('iris.html', context={'request': request, 'result': result})


@app.post("/form")
def form_post(request: Request,
              num: float = Form(...),
              num2: float = Form(...),
              num3: float = Form(...),
              num4: float = Form(...),
              ):
    sample = [
        float(num),
        float(num2),
        float(num3),
        float(num4),
    ]
    pred = clf.predict([sample])
    result = str(pred[0])
    return templates.TemplateResponse('iris.html', context={'request': request, 'result': result})
