
FROM python:3.7

RUN mkdir /app
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .
RUN export $(cat .env | xargs)

EXPOSE 8000

CMD ["python", "hello.py"]