# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Python script into the container
COPY calculator.py .

# Install the necessary dependencies
RUN apt-get update && apt-get install -y \
    tk

# Run the Python script when the container starts
CMD ["python", "calculator.py"]
