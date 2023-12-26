FROM python:3.8-slim-buster

# Install build dependencies
RUN apt-get update \
    && apt-get install -y gcc python3-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . /app
RUN pip install --no-cache-dir -r requirements.txt

ENV PORT=8080

EXPOSE 8080

CMD ["python3", "app.py"]
