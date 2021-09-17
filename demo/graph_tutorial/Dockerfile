FROM python:3.8
ENV VARI='true'
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

# Update pip
RUN pip install -U pip

COPY requirements.txt ./
#RUN pip3 install -r requirements.txt
RUN set -ex; \
    pip install -r requirements.txt


ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

#RUN python manage.py migrate

EXPOSE 8000
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
CMD ["./startserver.sh"]
