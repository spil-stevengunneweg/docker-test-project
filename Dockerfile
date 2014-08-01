############################################################
# Dockerfile to build Nginx Installed Containers
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER Maintaner Name

# Update the repository
RUN apt-get upgrade
RUN apt-get update
# Install necessary tools
RUN apt-get install -y nano wget dialog net-tools
# Download and install Nginx
RUN apt-get install -y nginx  

# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Replace index file
ADD index.html /usr/share/nginx/html/

# Expose port
EXPOSE 80

# Start nginx
CMD service nginx start

