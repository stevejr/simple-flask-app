# this is an official Python runtime, used as the parent image
FROM python:3.6.5-slim

LABEL maintainer="steve richards"

# Build args for labels.
ARG BUILD_DATE
ARG VCS_REF
ARG BUILD_VERSION
ARG JAR_FILE

# Labels.
LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="stevejr/simple-flask-app" \
      org.label-schema.description="The repository contains a simple Flask application " \
      org.label-schema.vcs-url="https://github.com/stevejr/simple-flask-app" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.version=$BUILD_VERSION

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY ./app.py /app

CMD [ "python", "app.py" ]
