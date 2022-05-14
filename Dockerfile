#pull base image
FROM python:3.8.10

#set environment variable
ENV PYTHONDONTWRITEBYCODE 1
ENV PYTHONUNBUFFERED 1

#set work directory
WORKDIR /bookstore_dj_docker

#install dependencies
COPY Pipfile Pipfile.lock /bookstore_dj_docker/
RUN pip install pipenv && pipenv install --system

#copy project
COPY . /bookstore_dj_docker/

