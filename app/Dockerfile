FROM python:alpine3.13 AS base
WORKDIR /app
COPY api.py /app
COPY requirements.txt /app

RUN pip install --no-cache-dir -r /app/requirements.txt
ENTRYPOINT ["gunicorn","-b","0.0.0.0:8000","--log-level","debug", "api:app"]

EXPOSE 8000