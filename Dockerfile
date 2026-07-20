FROM python:3.14

RUN pip install --no-cache-dir -r /app/build/requirements.txt
