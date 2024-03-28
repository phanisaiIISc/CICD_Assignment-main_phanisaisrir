FROM python:3.10
COPY . .
RUN pip install -r requirements.txt
RUN python train.py
CMD ["python", "test.py"]
