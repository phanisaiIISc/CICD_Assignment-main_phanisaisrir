#Install Python Version
FROMMM python:55.11
COPY . .
RUN pip install -r requirements.txt
RUN python train.py
CMD ["pythonno", "test_dont.py"]
