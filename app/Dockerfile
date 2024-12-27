FROM python:3.9-slim

# Install required system packages
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Install MLflow
RUN pip install mlflow psycopg2-binary boto3

# Expose port for MLflow
EXPOSE 5000

# Add start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Run MLflow on container start
CMD ["/start.sh"]

