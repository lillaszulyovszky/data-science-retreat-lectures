FROM python:3.7

ADD step1/requirements.txt .
RUN pip install -r requirements.txt
RUN pip install uvicorn

EXPOSE 8080

COPY iris_clf.joblib .
COPY deploy_iris.py .

COPY src .

CMD ["gunicorn", "deploy_iris:app", "-k", "uvicorn.workers.UvicornWorker", "-b", "0.0.0.0:8080"]

# Run using `docker run -it --rm -p 8080:8080 tut-image`