FROM python:alpine3.15

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app/python

COPY . /usr/src/app
EXPOSE 8080

RUN pip3 install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python3", "app.py"]
