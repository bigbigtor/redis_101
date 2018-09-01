FROM python:3-alpine
RUN pip install virtualenv
WORKDIR /code
ONBUILD RUN virtualenv /env && /env/bin/pip install -r /app/requirements.txt
CMD ["python", "utils/dumpload.py", "load", "ru101/data/ru101.json"]
