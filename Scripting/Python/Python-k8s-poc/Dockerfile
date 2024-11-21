# Use the official Python image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

RUN mkdir -p /app/data

# Copy the current directory contents into the container
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

RUN chmod -R 777 /app
RUN apt-get update && apt-get install -y sqlite3

# Expose the port the app runs on
EXPOSE 5000

# Run the application
CMD ["python3", "api_with_db.py"]
