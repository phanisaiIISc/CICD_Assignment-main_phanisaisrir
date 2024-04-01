#Use Python Version 3.11 in the docker
FROM python:3.11
#Copy all the files to current Location
COPY . .
#Install dependencies
RUN pip install -r requirements.txt
#Train the model
RUN python train.py
# Execute test.py script once container starts
CMD ["python", "test.py"]


