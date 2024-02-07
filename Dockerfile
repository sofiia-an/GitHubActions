FROM python:latest

WORKDIR /app
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000
CMD ["python3", "db.py"]
CMD ["python3", "app.py", "--host", "192.168.1.104"]
