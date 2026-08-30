# Use an official lightweight Python image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy our python files from our repository into the container's /app folder
COPY math_operations.py test_math_operations.py /app/

# The command that will run when the container starts
# We'll just run our test suite to prove the code works inside Docker!
CMD ["python", "-m", "unittest", "test_math_operations.py"]
