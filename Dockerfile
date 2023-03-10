FROM python:3.11

WORKDIR /ap
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip setuptools
RUN pip install -r requirements.txt

COPY . .

CMD [ "uvicorn", "app:app" ]
