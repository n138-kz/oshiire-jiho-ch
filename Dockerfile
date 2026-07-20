FROM python:3.14

RUN if [ -f requirements.txt ]; then pip install --no-cache-dir -r requirements.txt; fi
