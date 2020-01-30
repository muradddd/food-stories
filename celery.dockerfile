FROM python:3.6

RUN mkdir -p /code
WORKDIR /code
ADD . .

RUN pip install celery==4.3.0

CMD [ "celery", "-A", "todo_project", "worker", "--beat", "--scheduler", "django", "--loglevel=info" ]