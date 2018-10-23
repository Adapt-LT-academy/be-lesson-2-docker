

# We will use official Ubuntu image as base for our own image
FROM ubuntu:latest

# Identify the maintainer of an image
MAINTAINER irmantasp "irmantas@adaptagency.com"

# Here we can start write down commands that would be used to build our own image:

# Update the image to the latest packages
RUN apt-get update && apt-get upgrade -y

# Install Apache
RUN apt-get install apache2 -y

# Expose port 80 (default by any webserver)
EXPOSE 80

# Start Apache inside the container
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
