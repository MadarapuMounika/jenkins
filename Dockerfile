FROM python:3.8-slim-buster
#creating a base machine defines what image we are taking from

WORKDIR /flask-demo
#this is going to be our working directory

ADD . /flask-demo/
#adding all files to the directory

RUN pip install -r requirements.txt
#installing requirements.txt file


CMD [ "python", "demo.py" , "--host=0.0.0.0" ]
#executing python command