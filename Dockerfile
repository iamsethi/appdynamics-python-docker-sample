FROM python:3.4-slim-jessie
COPY . /app
WORKDIR /app
RUN ls -ltr
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["pyagent", "run", "-c appd.cfg", "--", "uwsgi", "--ini", "uwsgi.ini"]
