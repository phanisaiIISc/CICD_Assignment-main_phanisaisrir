#Install Python Version
FROM python:3.11
#Copy all the files to current working directory
COPY . .
#Install required dependencies
RUN pip install -r requirements.txt
#Train the model
RUN python train.py
#Execute Python Script on Container starting
CMD ["pythono", "testo.py"]

