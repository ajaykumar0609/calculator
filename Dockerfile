# Use the official Python base image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the calculator code into the container
COPY calculator.py /app/calculator.py

# Install the required dependencies
RUN pip install tkinter

# Set the command to run the calculator
CMD ["python", "/app/calculator.py"]
