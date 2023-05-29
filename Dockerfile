# Base Image to use
FROM python:3.10-slim-buster

# GCP App Engine listens on port 8080
EXPOSE 8080

# Copy Requirements.txt file into app directory
COPY requirements.txt app/requirements.txt

# Install requirements in requirements.txt
RUN pip install -r app/requirements.txt

# Copy all files in current directory into app directory
COPY . /app

# Change Working Directory to app directory
WORKDIR /app

# Run the application on port 8080
CMD streamlit run --server.port 8080 --server.enableCORS false app.py