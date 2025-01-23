# use an official runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Install the cli
RUN apt-get install -y awscli

# copy the current directory contains into the container at /app
COPY . /app

# Install the needed packages in requirement.txt
RUN pip install --no-cache-dir -r requirement.txt

# Run the app.py when the container launches
CMD ["uvicorn", "./app.py", "--host", "0.0.0.0", "--port", "8085""]