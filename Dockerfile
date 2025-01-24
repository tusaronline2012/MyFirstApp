# use an official runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Install the cli
RUN apt-get update && apt-get install -y awscli

# copy the current directory contains into the container at /app
COPY . /app