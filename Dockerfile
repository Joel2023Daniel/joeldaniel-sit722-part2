FROM python:3.12

WORKDIR /usr/src/app
COPY ./book_catalog/. ./
RUN pip install -r requirements.txt
CMD uvicorn main:app --host 0.0.0.0 --port $PORT