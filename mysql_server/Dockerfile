# Use an appropriate base image for MySQL
FROM mysql:latest

# Set the environment variables\
ENV MYSQL_ROOT_PASSWORD=chan

COPY . /app

WORKDIR /app

RUN chmod +x import_db.sh
