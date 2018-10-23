#!/bin/bash


pause(){
    echo;
    read -n 1 -s -r -p "Press ENTER to continue..."
    echo;
}

clear
echo "Clone Project:"
echo
echo "COMMAND:"
echo "git clone git@github.com:Adapt-LT-academy/improved-octo-giggle.git botman.docker.localhost"
pause

clear
git clone https://github.com/Adapt-LT-academy/improved-octo-giggle.git botman.docker.localhost
pause

clear
echo "Project overview:"
echo
echo "COMMAND:"
echo "cd botman.docker.localhost"
echo "ls -agn"
pause

clear
cd botman.docker.localhost
ls -agn
pause

clear
echo "Contents of .env.docker4php :"
echo
echo "COMMAND:"
echo "cat .env.docker4php"
pause

clear
cat .env.docker4php
pause

clear
echo "Contents of docker-compose.yml :"
echo
echo "COMMAND:"
echo "cat docker-compose.yml"
pause

clear
cat docker-compose.yml
pause

clear
echo "Start Project:"
echo
pause

clear
echo "Append files contents to single .env file:"
echo
echo "COMMAND:"
echo "cat .env.docker4php >> .env && cat .env.dist >> .env"
pause

clear
cat .env.docker4php >> .env &&
cat .env.dist >> .env

clear
echo "Check contents of .env file:"
pause
clear
cat .env
pause

clear
echo "Start Docker magic:"
echo
echo "COMMAND:"
echo "make up install"
pause

clear
make up install
pause

clear
echo "Open project in browser:" &&
firefox --new-window http://botman.docker.localhost
pause

clear
echo "Overview additional commands:"
pause

clear
echo "Contents of docker.mk :"
pause
clear
cat docker.mk
pause

clear
echo "Stop project:"
echo
echo "COMMAND:"
echo "make stop"
pause
clear

make stop
