# Start of the image
FROM ubuntu:latest
COPY ./requirements.txt /app/
COPY app.py /app/app.py
# Install Update
RUN apt update
# Install Python
RUN apt -y install python3 python3-pip
# Install Dependencies
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000/tcp
CMD flask run