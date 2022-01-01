FROM alpine

# Show how step #2 is taken from the cache

COPY my_app.py /app/my_app.py

# COPY . /app

# Install python version 3
# RUN command runs only at BUILD TIME
RUN apk add --no-cache python3 py3-pip

WORKDIR /app

# helps others understand what port the application listens by just reading the Dockerfile without the need of going through your code
EXPOSE 8000

# There can only be one CMD instruction in a Dockerfile
CMD python3 /app/my_app.py
