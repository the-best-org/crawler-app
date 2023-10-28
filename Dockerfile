FROM python:3.6-alpine

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

CMD python3 -u crawler/crawler.py $URL
