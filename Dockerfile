FROM python:3.6

COPY ./app /app
COPY Pipfile /app/Pipfile
COPY Pipfile.lock /app/Pipfile.lock

WORKDIR /app
RUN pip3 install pipenv
RUN pipenv --python 3.6
RUN pipenv install --system

EXPOSE 8080

CMD ["python", "main.py"]