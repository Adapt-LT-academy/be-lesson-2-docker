#!/bin/bash

pause(){
    echo;
    read -n 1 -s -r -p "Press ENTER to continue..."
    echo;
}

clear
echo "Contents of our index files for our previously created containers:"
echo
cat ./apache/index.html
echo
echo
cat ./nginx/index.html
pause

clear
echo "Contents of basic Docker Compose configuration file:"
pause
clear
cat ./docker-compose.yml
pause

clear
echo "Start this configuration:"
echo
echo "COMMAND:"
echo
echo "docker-compose up -d"
pause
docker-compose up -d
pause

clear
echo "Lets add our index.html files for each container:"
pause
clear
cat ./docker-compose.secondary.yml
pause
firefox --new-window http://localhost:8001;
pause
firefox --new-window http://localhost:8002;
pause

clear
echo "Start this configuration:"
echo
echo "COMMAND:"
echo
echo "docker-compose  -f docker-compose.secondary.yml up -d"
pause
docker-compose -f docker-compose.secondary.yml up -d
pause
firefox --new-window http://localhost:8001;
pause
firefox --new-window http://localhost:8002;
pause

clear
echo "Lets add additional service which allows creation of local domains for containers:"
pause
clear
cat ./docker-compose.third.yml
pause

clear
echo "Start this configuration:"
echo
echo "COMMAND:"
echo
echo "docker-compose -f docker-compose.third.yml up -d"
pause
docker-compose -f docker-compose.third.yml up -d
pause
firefox --new-window http://apache.lesson.docker.localhost;
pause
firefox --new-window http://nginx.lesson.docker.localhost;
pause

docker stop $(docker ps -aq) &> /dev/null
