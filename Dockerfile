# use an official Python runtime as the base image
FROM python:3.9-alpine

# set the working directory to /app
WORKDIR /app

# copy the requirements.txt file to the container
COPY requirements.txt ./

# install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# copy the application code to the container
COPY . .

# set the environment variable for flask
ENV FLASK_APP=app.py

# set  the secret key as an environment variable
ENV SECRET_KEY=7ba01a9cfb31203f51524601e7cd57b7

# expose port 5000 for the flask application
EXPOSE 5000

# define the command to run the application
CMD ["flask", "run", "--host=0.0.0.0"]
