FROM python:3

ADD httpServer.py /
ADD predict.py /
ADD graphql.py /

RUN pip install python-graphql-client
RUN pip install scipy

EXPOSE 5000

CMD [ "python", "./httpServer.py" ]
