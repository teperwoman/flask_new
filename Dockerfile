FROM python:3.7-alpine 
WORKDIR /app 
COPY app/requirements.txt /app
RUN pip3 install -r requirements.txt 
COPY app/ /app 
ENTRYPOINT ["python3"] 
CMD ["app.py"]
