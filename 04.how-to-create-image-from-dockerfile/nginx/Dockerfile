
# We will use official Ubuntu image as base for our own image
FROM ubuntu:latest

# Add author information
MAINTAINER irmantasp "irmantas@adaptagency.com"

# Here we can start write down commands that would be used to build our own image:

# Update the image to the latest packages
RUN apt-get update && apt-get upgrade -y

# Install NGINX
RUN apt-get install nginx -y

# Expose port 80 (default by any webserver)
EXPOSE 80

# Start NGINX inside the container
CMD ["nginx", "-g", "daemon off;"]
