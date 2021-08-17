FROM python:3.9.6-alpine3.14
ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY ./app /app

RUN addgroup app && adduser -S -G app app
USER app