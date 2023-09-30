FROM python:3.9

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade --default-timeout=1000 -r /code/requirements.txt


COPY ./app.py  /code/app.py

COPY ./cocoa_project /code/cocoa_project

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "80"]