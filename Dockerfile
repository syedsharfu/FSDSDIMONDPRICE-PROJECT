FROM python:3.8-slim-buster
WORKDIR /service
COPY requirements.txt .
COPY . ./
RUN PIP install -r requirements.txt
ENTRYPOINT [ "python3","app.py" ]