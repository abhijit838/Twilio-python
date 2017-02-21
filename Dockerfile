FROM ubuntu:latest
MAINTAINER [Abhijit Maity "abhijit.maity2010@gmail.com"]
RUN apt-get update -y &&
    apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]