FROM jgeiger/rails
MAINTAINER jgeiger@gmail.com

USER devops
WORKDIR /app

# Copy the main application.
ADD . ./
