FROM python:3.4-slim-jessie
COPY . /app
WORKDIR /app
RUN ls -ltr
RUN pip install -r requirements.txt
EXPOSE 5000
uwsgi --ini uwsgi.ini
CMD ["pyagent", "run", "-c", "--", "uwsgi", "--ini", "uwsgi.ini"]
