FROM python:alpine3.13 AS base
LABEL MANTAINER="Rodrigo Turatti"
LABEL VERSION="1.0.1"
LABEL DESCRIPTION="Dockerfile for the API Desafio Globo"
WORKDIR /app
COPY requirements.txt /app
COPY api.py /app

RUN pip install --no-cache-dir -r /app/requirements.txt
ENTRYPOINT ["gunicorn","-b","0.0.0.0:8000","--log-level","debug", "api:app"]
EXPOSE 8000