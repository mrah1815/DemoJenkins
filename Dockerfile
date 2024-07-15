FROM python

# Set the working directory in the container
WORKDIR /code

# Copy the requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project into the container
COPY . .

# Set the environment variable for production
ENV PYTHONUNBUFFERED 1

# Expose the port your Django app will run on
EXPOSE 8000

# Command to run your Django app
# ENTRYPOINT ["python", "manage.py"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]