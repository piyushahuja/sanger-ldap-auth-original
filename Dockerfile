FROM python:3.8.0

WORKDIR /usr/src/app/

COPY nginx-ldap-auth-daemon.py .

COPY requirements.txt .


# Install required software
RUN \
    apt-get update && apt-get -y install libldap2-dev python3-dev libsasl2-dev gcc && \
    pip install --upgrade pip setuptools wheel && \
    pip install python-ldap cryptography

RUN mkdir /data

EXPOSE 8888

CMD ["python", "./nginx-ldap-auth-daemon.py", "--host", "0.0.0.0", "--port", "8888"]
