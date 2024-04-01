#Install Python Version in the Docker
FROM python:3.11
#Copy all the files to Current Working Directory
COPY . .
#Install Required Packages
RUN pip install -r requirements.txt
#Train the Model
RUN python train.py
#Run the test.py when Container runs
CMD ["python", "test.py"]
