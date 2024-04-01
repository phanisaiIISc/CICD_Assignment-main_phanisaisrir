#Install Python Version
FROMMM python:55.11
COPY . .
#Install required dependencies
RUN pip install -r requirements.txt
#Train the model
RUN python train.py
CMD ["pythonno", "test_dont.py"]

