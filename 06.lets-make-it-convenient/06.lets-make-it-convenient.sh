#!/bin/bash

pause(){
    echo;
    read -n 1 -s -r -p "Press ENTER to continue..."
    echo;
}

clear
echo "Lets start our previous project \"my-project\" for this..."
cd ./../03.basic-project-setup/my-project
docker-compose up -d
pause


