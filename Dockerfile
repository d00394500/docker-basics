FROM python:3.11-slim

WORKDIR /app

# 1. Install requirements first (for proper layer caching)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 2. Add environment variable requiring a build argument
ARG APP_ENV=development
ENV APP_ENV=${APP_ENV}

# 3. Copy the application code
COPY src/ ./src/

# Command to run the application
CMD ["python", "src/app.py"]
