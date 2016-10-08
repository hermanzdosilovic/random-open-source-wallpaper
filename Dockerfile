FROM python:2.7.12

RUN pip install web.py requests

COPY app.py /usr/src/app/
WORKDIR /usr/src/app

EXPOSE 8080
CMD python app.py
