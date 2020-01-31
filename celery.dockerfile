FROM python:3.6

RUN mkdir -p /code
WORKDIR /code
ADD . .

RUN pip install -r requirements.txt

CMD [ "celery", "-A", "food_stories", "worker", "--beat", "--scheduler", "django", "--loglevel=info" ]
