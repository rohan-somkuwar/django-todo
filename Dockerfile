FROM  python:3
RUN  pip install django

COPY . .

RUN python3 manage.py migrate

EXPOSE 8080
 CMD [ "python3","manage.py","runserver","0.0.0.0:8000" ]