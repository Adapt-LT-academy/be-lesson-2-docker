#!/bin/bash

pause(){
    echo;
    read -n 1 -s -r -p "Press ENTER to continue..."
    echo;
}

clear
echo "Check contents of Docker file for Apache webserver;"
pause

clear
cat ./apache/Dockerfile
pause

clear
echo "Build Docker image from Dockerfile for Apache webserver:"
echo
echo "COMMAND:"
echo
echo "docker build ./apache -t adapt-academy/apache:1.0"
pause

docker build ./apache -t adapt-academy/apache:1.0
pause

clear
echo "Check contents of Docker file for NGNIX webserver;"
pause

clear
cat ./nginx/Dockerfile
pause

clear
echo "Build Docker image from Dockerfile for NGINX webserver:"
echo
echo "COMMAND:"
echo
echo "docker build ./nginx -t adapt-academy/nginx:1.0"
pause

docker build ./nginx -t adapt-academy/nginx:1.0
pause

clear
echo "Try our Apache image as single container:"
echo
echo "COMMAND:"
echo
echo "docker run -p 8001:80 irmantasp/apache:1.0"
pause

docker run -p 8001:80 irmantasp/apache:1.0
pause
firefox --new-window http://localhost:8001;
pause

clear
echo "Try our NGINX image as single container:"
echo
echo "COMMAND:"
echo
echo "docker run -p 8002:80 irmantasp/nginx:1.0"
pause

docker run -p 8002:80 irmantasp/nginx:1.0
pause
firefox --new-window http://localhost:8002;
pause

docker stop $(docker ps -aq) > /dev/null
