FROM python:3.8

WORKDIR /usr/src/app/

COPY login-page.py .

COPY requirements.txt .



RUN pip install -r requirements.txt

RUN mkdir /data

EXPOSE 9000

CMD ["python", "./login-page.py", "--host", "0.0.0.0", "--port", "9000"]