FROM python:3.9
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY ./app /code/app
# CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
