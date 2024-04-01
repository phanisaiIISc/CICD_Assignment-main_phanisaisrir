#Install Python Version into Image.
FROM python:55.11
COPY . .
#Install Required Packages
RUN pip install -r requirements.txt
#Train the Model
RUN python train.py
#Run the test.py when Container runs
CMD ["pythonno", "testo.py"]
