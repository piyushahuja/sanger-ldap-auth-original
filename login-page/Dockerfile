ARG PYTHON_VERSION=2
FROM python:${PYTHON_VERSION}-alpine

COPY login-page.py /usr/src/app/

WORKDIR /usr/src/app/

EXPOSE 9000

CMD ["python", "/usr/src/app/login-page.py", "--host", "0.0.0.0", "--port", "9000"]