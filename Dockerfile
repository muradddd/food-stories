FROM python:3.6
RUN mkdir -p /code/
WORKDIR /code/

ADD . .

RUN pip install -r requirements.txt

CMD [ "gunicorn", "--bind", "0.0.0.0", "-p", "8000",  "food_stories.wsgi" ]