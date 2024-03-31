FROM python:3.11
COPY . .
RUN pip install -r requirements.txt
RUN python train.py
CMD ["python", "test.py"]
