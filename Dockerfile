# Use Python 3.11 as the base image
FROM python:3.11-slim


# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the application files
COPY . .

# Expose the port Flask runs on
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]

