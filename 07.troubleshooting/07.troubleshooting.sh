#!/bin/bash

pause(){
    echo;
    read -n 1 -s -r -p "Press ENTER to continue..."
    echo;
}

clear
echo "Lets start our previous project \"my-project\" for this again..."
echo
echo "... if it's not running..."
cd ./../03.basic-project-setup/my-project
make up
pause

clear
echo "COMMAND:"
echo
echo "docker ps"
echo
echo "ALTERNATIVE COMMAND:"
echo
echo "docker-compose ps"
pause
docker-compose ps
pause

clear
echo "COMMAND:"
echo
echo "docker logs"
pause
docker-compose logs
pause

clear
echo "COMMAND:"
echo
echo "docker network ls"
pause
docker network ls
pause

docker stop $(docker ps -aq) &> /dev/null
